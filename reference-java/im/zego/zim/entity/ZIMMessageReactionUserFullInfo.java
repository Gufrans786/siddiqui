package im.zego.zim.entity;

import java.util.ArrayList;

public class ZIMMessageReactionUserFullInfo {
    private String userID = "";
    private ArrayList<ZIMMessageReactionSimpleInfo> reactions = new ArrayList<>();

    public String getUserID() {
        return this.userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public ArrayList<ZIMMessageReactionSimpleInfo> getReactions() {
        return this.reactions;
    }

    public void setReactions(ArrayList<ZIMMessageReactionSimpleInfo> reactions) {
        this.reactions = reactions;
    }
}
