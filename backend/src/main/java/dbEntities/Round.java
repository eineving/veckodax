package dbEntities;

public class Round {
    int[] scores;
    String golfID, marquereGolfID;
    String date, time;
    String teeName;
    int clubID, courseID;
    double hcp;

    public int[] getScores() {
        return scores;
    }

    public String getGolfID() {

        return golfIDparser(golfID);
    }

    public String getMarquereGolfID() {
        return golfIDparser(marquereGolfID);
    }

    public String getDate() {
        return date;
    }

    public String getTime() {
        return time;
    }

    public int getClubID() {
        return clubID;
    }

    public int getCourseID() {
        return courseID;
    }

    public double getHcp(){ return hcp; }

    public String getTeeName() {
        return teeName;
    }

    /**
     * Returns the golfID without '-' if there is one
     * @param id golfID
     * @return golfID without '-'
     */
    private String golfIDparser(String id){
        if(golfID.charAt(6) == '='){
            return golfID.substring(0,5)+golfID.substring(7,9);
        }
        return id;
    }
}
