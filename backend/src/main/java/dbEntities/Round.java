package dbEntities;

public class Round {

    String golfID, markerID;
    String date, time;
    String teeName;
    int clubID, courseID;
    double hcp;
    int[] scores;

    public int[] getScores() {
        return scores;
    }

    public String getGolfID() {

        return golfIDparser(golfID);
    }

    public String getMarkerID() {
        return golfIDparser(markerID);
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
        if(id.charAt(6) == '-'){
            return id.substring(0,6)+id.substring(7,10);
        }
        return id;
    }
}
