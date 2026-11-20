package im.zego.zim.entity;

import im.zego.zim.enums.ZIMConversationType;

public class ZIMMessageRootRepliedCountInfo {
    public String conversationID;
    public ZIMConversationType conversationType;
    public int count;
    public long messageID;

    public String toString() {
        return "ZIMMessageRootRepliedCountInfo{conversationID=" + this.conversationID + "conversationType=" + this.conversationType + "messageID=" + this.messageID + "count=" + this.count + '}';
    }
}
