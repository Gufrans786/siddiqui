package im.zego.zim.entity;

import im.zego.zim.enums.ZIMMessageReactionUserChangeAction;

public class ZIMMessageReactionUserChangeInfo {
    private String userID = "";
    private String reactionType = "";
    private ZIMMessageReactionUserChangeAction action = ZIMMessageReactionUserChangeAction.ADDED;
    private int sumCount = 0;

    public String getUserID() {
        return this.userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getReactionType() {
        return this.reactionType;
    }

    public void setReactionType(String reactionType) {
        this.reactionType = reactionType;
    }

    public ZIMMessageReactionUserChangeAction getAction() {
        return this.action;
    }

    public void setAction(ZIMMessageReactionUserChangeAction action) {
        this.action = action;
    }

    public int getSumCount() {
        return this.sumCount;
    }

    public void setSumCount(int sumCount) {
        this.sumCount = sumCount;
    }
}
