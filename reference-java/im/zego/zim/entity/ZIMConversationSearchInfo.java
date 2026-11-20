package im.zego.zim.entity;

import im.zego.zim.enums.ZIMConversationType;
import java.util.ArrayList;

public class ZIMConversationSearchInfo {
    public ZIMConversation conversation;
    public String conversationID;
    public ZIMConversationType conversationType;
    public ArrayList<ZIMMessage> messageList;
    public int totalMessageCount;

    public String getConversationID() {
        return this.conversationID;
    }

    public void setConversationID(String conversationID) {
        this.conversationID = conversationID;
    }

    public ZIMConversationType getConversationType() {
        return this.conversationType;
    }

    public void setConversationType(ZIMConversationType conversationType) {
        this.conversationType = conversationType;
    }

    public ZIMConversation getConversation() {
        return this.conversation;
    }

    public void setConversation(ZIMConversation conversation) {
        this.conversation = conversation;
    }

    public int getTotalMessageCount() {
        return this.totalMessageCount;
    }

    public void setTotalMessageCount(int totalMessageCount) {
        this.totalMessageCount = totalMessageCount;
    }

    public ArrayList<ZIMMessage> getMessageList() {
        return this.messageList;
    }

    public void setMessageList(ArrayList<ZIMMessage> messageList) {
        this.messageList = messageList;
    }

    public String toString() {
        return "ZIMConversationSearchInfo{conversationID='" + this.conversationID + "', conversationType=" + this.conversationType + ", totalMessageCount=" + this.totalMessageCount + ", messageList=" + this.messageList + '}';
    }
}
