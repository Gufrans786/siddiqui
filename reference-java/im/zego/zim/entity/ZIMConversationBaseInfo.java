package im.zego.zim.entity;

import im.zego.zim.enums.ZIMConversationType;

public class ZIMConversationBaseInfo {
    public String conversationID;
    public ZIMConversationType conversationType;

    public String toString() {
        return "ZIMConversationBaseInfo {conversationID = '" + this.conversationID + "', conversationType= " + this.conversationType + '}';
    }
}
