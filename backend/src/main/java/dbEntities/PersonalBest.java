package dbEntities;

/**
 * Created by Test on 2015-05-26.
 */
public class PersonalBest {
    String firstName, lastName, golfID;
    int playedRounds, bestNetto;

    public PersonalBest(String firstName, String lastName, String golfID, int playedRounds, int bestNetto) {
        this.firstName = firstName;
        this.lastName = lastName;

        this.playedRounds = playedRounds;
        this.bestNetto = bestNetto;


        /*Formatting golfID*/
        StringBuilder temp = new StringBuilder();
        for(int i = 0;i<6; i++){
            temp.append(golfID.charAt(i));
        }
        temp.append('-');
        for(int i = 6;i<9; i++){
            temp.append(golfID.charAt(i));
        }
        this.golfID = temp.toString();
    }
}
