package dbEntities;

/**
 * Created by Daniel on 27-May-16.
 */
public class RoundsPlayed {
    String firstName, lastName, golfID;
    int playedRounds;

    public RoundsPlayed(String firstName, String lastName, String golfID, int playedRounds) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.golfID = golfID;
        this.playedRounds = playedRounds;
    }
}
