

import static spark.Spark.*;

/**
 * Created by Test on 2015-05-21.
 */
public class Server {
    DBconnector db;
    public Server(String dbURL, String dbUserName, String dbPassword){
        get("/hello", (request, response) -> "Hello world");

        db= new DBconnector(dbURL, dbUserName, dbPassword);

        post("/newClub/*", (request, response) -> {
            String clubName = request.splat()[0];
            db.createClub(clubName);
            return db.getClubID(clubName);
        });

    }

    public static void main(String[] db){
        new Server(db[0], db[1], db[2]);


    }

    private static void createClub(String name) {

    }

}
