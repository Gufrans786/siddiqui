package im.zego.zim.entity;

import im.zego.zim.enums.ZIMConversationType;
import im.zego.zim.enums.ZIMMessageDeleteType;
import java.util.ArrayList;

public class ZIMMessageDeletedInfo {
    public String conversationID;
    public ZIMConversationType conversationType;
    public boolean isDeleteConversationAllMessage;
    public ZIMMessageDeleteType messageDeleteType;
    public ArrayList<ZIMMessage> messageList;

    public boolean getIsDeleteConversationAllMessage() {
        return this.isDeleteConversationAllMessage;
    }

    public void setIsDeleteConversationAllMessage(boolean isDeleted) {
        this.isDeleteConversationAllMessage = isDeleted;
    }

    public ArrayList<ZIMMessage> getMessageList() {
        return this.messageList;
    }

    public void setMessageList(ArrayList<ZIMMessage> messageList) {
        this.messageList = messageList;
    }

    public String toString() {
        return "ZIMMessageDeletedInfo{conversationID='" + this.conversationID + "', conversationType=" + this.conversationType + ", messageDeleteType=" + this.messageDeleteType + ", isDeleteConversationAllMessage=" + this.isDeleteConversationAllMessage + ", messageList=" + this.messageList + '}';
    }
}
