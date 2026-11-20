package im.zego.zim.entity;

import im.zego.zim.enums.ZIMMessageSentStatus;

public class ZIMMessageSentStatusChangeInfo {
    public ZIMMessage message;
    public String reason;
    public ZIMMessageSentStatus status;

    public String toString() {
        return "ZIMMessageSentStatusChangeInfo{message=" + this.message + ", status=" + this.status + ", reason='" + this.reason + "'}";
    }
}
