import com.google.gson.Gson;
import dbEntities.Round;
import org.joda.time.DateTime;
import org.joda.time.Duration;


import static spark.Spark.*;

/**
 * Created by Test on 2015-05-21.
 */
public class Server {
    final DateTime start = new DateTime(2016, 1, 2, 00, 00);
    DBconnector db;
    Gson gson = new Gson();

    public Server(String dbURL, String dbUserName, String dbPassword) {
        db = new DBconnector(dbURL, dbUserName, dbPassword);

        get("/hello", (request, response) -> "Hello world");
        get("/allRounds", (request, response) -> {
            response.header("Access-Control-Allow-Origin", "*");
            return gson.toJson(db.getPersonalBest());
        });
        /*
        get("/allRounds/*", (request, response) -> {
            System.out.println(request.splat()[0]);
            int week = Integer.parseInt(request.splat()[0]);
            start.plus(Duration.standardDays(7));

            return gson.toJson(db.getPersonalBest(start.plus(Duration.standardDays((week - 1) * 7)), start.plus(Duration.standardDays((week) * 7))));
        });*/

        get("/thisWeek", (request, response) -> {
            int thisWeek = thisWeek();
            response.header("Access-Control-Allow-Origin", "*");
            return gson.toJson(db.getPersonalBest(start.plus(Duration.standardDays((thisWeek - 1) * 7)), start.plus(Duration.standardDays((thisWeek) * 7))));
        });

        get("/lastWeek", (request, response) -> {
            int lastWeek = thisWeek() - 1;
            response.header("Access-Control-Allow-Origin", "*");
            return gson.toJson(db.getPersonalBest(start.plus(Duration.standardDays((lastWeek - 1) * 7)), start.plus(Duration.standardDays((lastWeek) * 7))));
        });

        get("/rounds", (request, response) -> {
            int lastWeek = thisWeek() - 1;
            response.header("Access-Control-Allow-Origin", "*");
            return gson.toJson(db.getRoundsPlayed(start, DateTime.now()));
        });

        post("/addRound", (request, response) -> {
            System.out.println(request.body());
            Round round = gson.fromJson(request.body(), Round.class);
            response.status(db.createNewRound(round));
            response.header("Access-Control-Allow-Origin", "*");
            return response;
        });


    }

    private int thisWeek() {
        DateTime today = DateTime.now();

        Duration span = new Duration(start, today);

        return (int) span.getStandardDays() / 7 + 1;
    }

    public static void main(String[] db) {
        new Server(db[0], db[1], db[2]);


    }
}
