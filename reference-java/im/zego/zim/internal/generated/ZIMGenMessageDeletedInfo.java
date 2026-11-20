package im.zego.zim.internal.generated;

import java.util.ArrayList;

final class ZIMGenMessageDeletedInfo {
    String ConversationID;
    int ConversationType;
    boolean IsDeleteConversationAllMessage;
    boolean IsNullFromJava;
    int MessageDeleteType;
    ArrayList<ZIMGenMessage> MessageList;

    public ZIMGenMessageDeletedInfo() {
    }

    public ZIMGenMessageDeletedInfo(String conversationID, int conversationType, int messageDeleteType, boolean isDeleteConversationAllMessage, ArrayList<ZIMGenMessage> messageList, boolean isNullFromJava) {
        this.ConversationID = conversationID;
        this.ConversationType = conversationType;
        this.MessageDeleteType = messageDeleteType;
        this.IsDeleteConversationAllMessage = isDeleteConversationAllMessage;
        this.MessageList = messageList;
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

    public int getMessageDeleteType() {
        return this.MessageDeleteType;
    }

    public void setMessageDeleteType(int messageDeleteType) {
        this.MessageDeleteType = messageDeleteType;
    }

    public boolean getIsDeleteConversationAllMessage() {
        return this.IsDeleteConversationAllMessage;
    }

    public void setIsDeleteConversationAllMessage(boolean isDeleteConversationAllMessage) {
        this.IsDeleteConversationAllMessage = isDeleteConversationAllMessage;
    }

    public ArrayList<ZIMGenMessage> getMessageList() {
        return this.MessageList;
    }

    public void setMessageList(ArrayList<ZIMGenMessage> messageList) {
        this.MessageList = messageList;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenMessageDeletedInfo{ConversationID=" + this.ConversationID + ",ConversationType=" + this.ConversationType + ",MessageDeleteType=" + this.MessageDeleteType + ",IsDeleteConversationAllMessage=" + this.IsDeleteConversationAllMessage + ",MessageList=" + this.MessageList + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
