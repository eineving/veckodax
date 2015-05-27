

import com.google.gson.Gson;
import org.joda.time.DateTime;
import org.joda.time.Duration;


import static spark.Spark.*;

/**
 * Created by Test on 2015-05-21.
 */
public class Server {
    final DateTime start = new DateTime(2015,05,18,00,00);
    DBconnector db;
    Gson gson = new Gson();
    public Server(String dbURL, String dbUserName, String dbPassword){
        db= new DBconnector(dbURL, dbUserName, dbPassword);

        get("/hello", (request, response) -> "Hello world");
        get("/allRounds", (request, response)-> gson.toJson(db.getPersonalBest()));

        get("/allRounds/*", (request, response) ->{
            System.out.println(request.splat()[0]);
            int week = Integer.parseInt(request.splat()[0]);
            start.plus(Duration.standardDays(7));

            return gson.toJson(db.getPersonalBest(start.plus(Duration.standardDays((week - 1) * 7)),start.plus(Duration.standardDays((week)*7))));
        });





    }

    public static void main(String[] db){
        new Server(db[0], db[1], db[2]);


    }
}
