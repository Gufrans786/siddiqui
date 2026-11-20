package im.zego.zim.entity;

import im.zego.zim.enums.ZIMConversationType;
import im.zego.zim.enums.ZIMMessageReceiptStatus;

public class ZIMMessageReceiptInfo {
    public String conversationID;
    public ZIMConversationType conversationType;
    public boolean isSelfOperated;
    public long messageID;
    public int readMemberCount;
    public long readTime;
    public ZIMMessageReceiptStatus status;
    public int unreadMemberCount;

    public String toString() {
        return "ZIMMessageReceiptInfo{status=" + this.status + ", messageID=" + this.messageID + ", conversationID='" + this.conversationID + "', conversationType=" + this.conversationType + ", readMemberCount=" + this.readMemberCount + ", unreadMemberCount=" + this.unreadMemberCount + ", is self=" + this.isSelfOperated + '}';
    }
}
