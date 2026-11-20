package im.zego.zim.entity;

import im.zego.zim.enums.ZIMMessageRepliedInfoState;

public class ZIMMessageRootRepliedInfo {
    public ZIMMessage message;
    public int repliedCount;
    public String senderUserID;
    public long sentTime;
    public ZIMMessageRepliedInfoState state;

    public String toString() {
        return "ZIMMessageRootRepliedInfo{state=" + this.state + "message=" + this.message + "senderUserID=" + this.senderUserID + "sentTime=" + this.sentTime + "repliedCount=" + this.repliedCount + '}';
    }
}
