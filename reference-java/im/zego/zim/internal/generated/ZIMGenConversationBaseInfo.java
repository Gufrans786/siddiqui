package im.zego.zim.internal.generated;

public final class ZIMGenConversationBaseInfo {
    String ConversationID;
    int ConversationType;
    boolean IsNullFromJava;

    public ZIMGenConversationBaseInfo() {
    }

    public ZIMGenConversationBaseInfo(String conversationID, int conversationType, boolean isNullFromJava) {
        this.ConversationID = conversationID;
        this.ConversationType = conversationType;
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

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenConversationBaseInfo{ConversationID=" + this.ConversationID + ",ConversationType=" + this.ConversationType + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
