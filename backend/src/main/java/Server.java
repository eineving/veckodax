import static spark.Spark.*;

/**
 * Created by Test on 2015-05-21.
 */
public class Server {
    public static void main(String[] args){
        get("/hello", (request, response) -> "Hello world");
    }

}
