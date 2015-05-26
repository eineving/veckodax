

import static spark.Spark.*;

/**
 * Created by Test on 2015-05-21.
 */
public class Server {
    DBconnector db;
    public Server(String dbURL, String dbUserName, String dbPassword){
        db= new DBconnector(dbURL, dbUserName, dbPassword);

        get("/hello", (request, response) -> "Hello world");
        get("/allRounds", (request, response)-> db.getClubID("Chalmers GK"));



    }

    public static void main(String[] db){
        new Server(db[0], db[1], db[2]);


    }
}
