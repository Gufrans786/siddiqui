package im.zego.zim.internal.generated;

import java.util.ArrayList;

final class ZIMGenMessageReactionUserFullInfo {
    ArrayList<ZIMGenMessageReactionSimpleInfo> Reactions;
    String UserID;

    public ZIMGenMessageReactionUserFullInfo() {
    }

    public ZIMGenMessageReactionUserFullInfo(String userID, ArrayList<ZIMGenMessageReactionSimpleInfo> reactions) {
        this.UserID = userID;
        this.Reactions = reactions;
    }

    public String getUserID() {
        return this.UserID;
    }

    public void setUserID(String userID) {
        this.UserID = userID;
    }

    public ArrayList<ZIMGenMessageReactionSimpleInfo> getReactions() {
        return this.Reactions;
    }

    public void setReactions(ArrayList<ZIMGenMessageReactionSimpleInfo> reactions) {
        this.Reactions = reactions;
    }

    public String toString() {
        return "ZIMGenMessageReactionUserFullInfo{UserID=" + this.UserID + ",Reactions=" + this.Reactions + "}";
    }
}
