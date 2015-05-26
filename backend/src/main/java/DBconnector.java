import java.sql.*;

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

    public int getClubID(String clubName) throws SQLException {
        ResultSet temp = connection.createStatement().executeQuery("SELECT id FROM Veckodax.Club WHERE name = '" + clubName + "';");
        if(temp.next()){
            System.out.println(temp.toString());
            System.out.println(temp.getInt("id"));
            return temp.getInt("id");

        }
        return 0;
    }


}
