package im.zego.zim.internal.generated;

import java.util.ArrayList;

final class ZIMGenMessageReaction {
    String ConversationID;
    int ConversationType;
    boolean IsNullFromJava;
    long MessageID;
    int ReactionSumCount;
    String ReactionType;
    boolean SelfIncluded;
    int TotalCount;
    ArrayList<ZIMGenMessageReactionUserInfo> UserInfos;

    public ZIMGenMessageReaction() {
    }

    public ZIMGenMessageReaction(String conversationID, int conversationType, long messageID, int totalCount, String reactionType, boolean selfIncluded, ArrayList<ZIMGenMessageReactionUserInfo> userInfos, int reactionSumCount, boolean isNullFromJava) {
        this.ConversationID = conversationID;
        this.ConversationType = conversationType;
        this.MessageID = messageID;
        this.TotalCount = totalCount;
        this.ReactionType = reactionType;
        this.SelfIncluded = selfIncluded;
        this.UserInfos = userInfos;
        this.ReactionSumCount = reactionSumCount;
        this.IsNullFromJava = isNullFromJava;
    }

    public String getConversationID() {
        return this.ConversationID;
    }

    public void setConversationID(String conversationID) {
        this.ConversationID = conversationID;
    }

    public int getConversationType() {
        return this.ConversationType;
    }

    public void setConversationType(int conversationType) {
        this.ConversationType = conversationType;
    }

    public long getMessageID() {
        return this.MessageID;
    }

    public void setMessageID(long messageID) {
        this.MessageID = messageID;
    }

    public int getTotalCount() {
        return this.TotalCount;
    }

    public void setTotalCount(int totalCount) {
        this.TotalCount = totalCount;
    }

    public String getReactionType() {
        return this.ReactionType;
    }

    public void setReactionType(String reactionType) {
        this.ReactionType = reactionType;
    }

    public boolean getSelfIncluded() {
        return this.SelfIncluded;
    }

    public void setSelfIncluded(boolean selfIncluded) {
        this.SelfIncluded = selfIncluded;
    }

    public ArrayList<ZIMGenMessageReactionUserInfo> getUserInfos() {
        return this.UserInfos;
    }

    public void setUserInfos(ArrayList<ZIMGenMessageReactionUserInfo> userInfos) {
        this.UserInfos = userInfos;
    }

    public int getReactionSumCount() {
        return this.ReactionSumCount;
    }

    public void setReactionSumCount(int reactionSumCount) {
        this.ReactionSumCount = reactionSumCount;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenMessageReaction{ConversationID=" + this.ConversationID + ",ConversationType=" + this.ConversationType + ",MessageID=" + this.MessageID + ",TotalCount=" + this.TotalCount + ",ReactionType=" + this.ReactionType + ",SelfIncluded=" + this.SelfIncluded + ",UserInfos=" + this.UserInfos + ",ReactionSumCount=" + this.ReactionSumCount + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
