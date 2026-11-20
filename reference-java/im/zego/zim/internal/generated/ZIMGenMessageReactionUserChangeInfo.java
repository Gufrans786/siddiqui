package im.zego.zim.internal.generated;

final class ZIMGenMessageReactionUserChangeInfo {
    int Action;
    int ReactionSumCount;
    String ReactionType;
    String UserID;

    public ZIMGenMessageReactionUserChangeInfo() {
    }

    public ZIMGenMessageReactionUserChangeInfo(String userID, String reactionType, int action, int reactionSumCount) {
        this.UserID = userID;
        this.ReactionType = reactionType;
        this.Action = action;
        this.ReactionSumCount = reactionSumCount;
    }

    public String getUserID() {
        return this.UserID;
    }

    public void setUserID(String userID) {
        this.UserID = userID;
    }

    public String getReactionType() {
        return this.ReactionType;
    }

    public void setReactionType(String reactionType) {
        this.ReactionType = reactionType;
    }

    public int getAction() {
        return this.Action;
    }

    public void setAction(int action) {
        this.Action = action;
    }

    public int getReactionSumCount() {
        return this.ReactionSumCount;
    }

    public void setReactionSumCount(int reactionSumCount) {
        this.ReactionSumCount = reactionSumCount;
    }

    public String toString() {
        return "ZIMGenMessageReactionUserChangeInfo{UserID=" + this.UserID + ",ReactionType=" + this.ReactionType + ",Action=" + this.Action + ",ReactionSumCount=" + this.ReactionSumCount + "}";
    }
}
