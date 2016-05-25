import dbEntities.PersonalBest;
import dbEntities.Round;
import org.joda.time.DateTime;

import java.sql.*;
import java.util.*;
import java.util.Date;

/**
 * Created by Daniel on 2015-05-21.
 */
public class DBconnector {
    Connection connection;
    String url, username, password;

    public DBconnector(String url, String username, String password) {
        this.url = url;
        this.username = username;
        this.password = password;
        
        initateServerConnection();
    }

    public void initateServerConnection(){
        try {
            System.out.println("Loading driver...");
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver loaded!");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("Cannot find the driver in the classpath!", e);
        }

        try {
            System.out.println("Connecting database...");
            connection = DriverManager.getConnection("jdbc:mysql://"+url+"/", username, password);
            System.out.println("Database connected!");
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("Cannot connect the database!", e);
        }
    }

    public int getClubID(String clubName) {
        try {
            ResultSet temp = connection.createStatement().executeQuery("SELECT id FROM veckodax.Club WHERE name = '" + clubName + "';");

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
                "FROM veckodax.AllRounds\n" +
                "WHERE roundStart >= '" + start.toString().substring(0, 10) + "' AND\n" +
                "    roundStart < '"+end.toString().substring(0,10) +"' " +
                "GROUP BY golfID\n" +
                "ORDER BY Netto;";
        try {
            ResultSet response = sendQuerry(query);
            while(response.next()){
                results.add(new PersonalBest(response.getString("firstname"), response.getString("lastname"), response.getString("golfID"),
                        response.getInt("PlayedRounds"), response.getInt("Netto")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return results;
    }

    public boolean createNewRound(Round round) {
        int courseID = round.getCourseID();
        int clubID = round.getClubID();

        StringBuilder queryBuilder = new StringBuilder();
        queryBuilder.append("INSERT INTO veckodax.Round VALUES('" +  round.getDate()+ " " + round.getTime() +  "', " + round.getHcp()+
                ", '"+ round.getGolfID() + "', '" + round.getMarkerGolfID() +"', "+ courseID + ", "+ clubID + ", '"+ round.getTeeName() + "');\n");
        queryBuilder.append( "INSERT INTO veckodax.Score VALUES");

        for(int i = 1; i < 19; i++){
            queryBuilder.append("("+i+", "+ courseID + ", " +clubID + ", '" +  round.getDate()+ " " + round.getTime() +  "', '" +
                    round.getGolfID() + "', "+ round.getScores()[i-1]+ ")");

            if(i==18){
                queryBuilder.append(";\n");
            } else {
                queryBuilder.append(", ");
            }
        }

        System.out.println(queryBuilder.toString());

        try {
            ResultSet response = sendQuerry(queryBuilder.toString());
            System.out.print(response);
            return response.wasNull();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    /**
     * Send query and tries to reestablish connection if lost
     */
    public ResultSet sendQuerry(String query) throws SQLException {
        try{
            return connection.createStatement().executeQuery(query);
        } catch (SQLException e) {
            e.printStackTrace();

            //Restart connection and try again
            initateServerConnection();
            return connection.createStatement().executeQuery(query);
        }

    }
}
