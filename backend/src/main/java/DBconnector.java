import dbEntities.PersonalBest;
import org.joda.time.DateTime;

import java.sql.*;
import java.util.*;
import java.util.Date;

/**
 * Created by Daniel on 2015-05-21.
 */
public class DBconnector {
    Connection connection;

    public DBconnector(String url, String username, String password) {

        try {
            System.out.println("Loading driver...");
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver loaded!");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("Cannot find the driver in the classpath!", e);
        }

        try {
            System.out.println("Connecting database...");
            connection = DriverManager.getConnection(url, username, password);
            System.out.println("Database connected!");
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("Cannot connect the database!", e);
        }
    }

    public int getClubID(String clubName) {
        try {
            ResultSet temp = connection.createStatement().executeQuery("SELECT id FROM Veckodax.Club WHERE name = '" + clubName + "';");

            if (temp.next()) {
                System.out.println(temp.toString());
                System.out.println(temp.getInt("id"));
                return temp.getInt("id");

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return -1;
    }

    public List<PersonalBest> getPersonalBest() {
        return getPersonalBest(new DateTime(0), new DateTime());
    }

    public List<PersonalBest> getPersonalBest(DateTime start, DateTime end) {
        List<PersonalBest> results = new LinkedList<>();
        String query = "SELECT golfID, firstname, lastname ,count(golfID) AS PlayedRounds, MIN(netto) AS Netto\n" +
                "FROM Veckodax.allrounds\n" +
                "WHERE roundStart >= '" + start.toString().substring(0, 10) + "' AND\n" +
                "    roundStart < '"+end.toString().substring(0,10) +"' " +
                "GROUP BY golfID\n" +
                "ORDER BY Netto;";
        try {
            ResultSet response = connection.createStatement().executeQuery(query);
            while(response.next()){
                results.add(new PersonalBest(response.getString("firstname"), response.getString("lastname"), response.getString("golfID"),
                        response.getInt("PlayedRounds"), response.getInt("Netto")));
                System.out.println("Added stuff!");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return results;
    }

    /**
     * Generate the string that should be in the WHERE state in a SQL query to check if row is in the specified intervall
     * @param start beginning of interval
     * @param end end if interval
     * @return
     */
    private String generateSQLTimeCondition(DateTime start, DateTime end){
        return "rundStart >= '" + start.year() +"-";
    }
}
