package im.zego.zim.internal.generated;

import java.util.ArrayList;

final class ZIMGenConversationSearchInfo {
    ZIMGenConversation Conversation;
    String ConversationID;
    int ConversationType;
    boolean IsNullFromJava;
    ArrayList<ZIMGenMessage> Message;
    int TotalMessageCount;

    public ZIMGenConversationSearchInfo() {
    }

    public ZIMGenConversationSearchInfo(String conversationID, int conversationType, ZIMGenConversation conversation, int totalMessageCount, ArrayList<ZIMGenMessage> message, boolean isNullFromJava) {
        this.ConversationID = conversationID;
        this.ConversationType = conversationType;
        this.Conversation = conversation;
        this.TotalMessageCount = totalMessageCount;
        this.Message = message;
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

    public ZIMGenConversation getConversation() {
        return this.Conversation;
    }

    public void setConversation(ZIMGenConversation conversation) {
        this.Conversation = conversation;
    }

    public int getTotalMessageCount() {
        return this.TotalMessageCount;
    }

    public void setTotalMessageCount(int totalMessageCount) {
        this.TotalMessageCount = totalMessageCount;
    }

    public ArrayList<ZIMGenMessage> getMessage() {
        return this.Message;
    }

    public void setMessage(ArrayList<ZIMGenMessage> message) {
        this.Message = message;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenConversationSearchInfo{ConversationID=" + this.ConversationID + ",ConversationType=" + this.ConversationType + ",Conversation=" + this.Conversation + ",TotalMessageCount=" + this.TotalMessageCount + ",Message=" + this.Message + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
