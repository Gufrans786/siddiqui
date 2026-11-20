package im.zego.zim.entity;

import im.zego.zim.enums.ZIMCallInvitationMode;

public class ZIMCallInvitationCancelledInfo {
    public String extendedData;
    public String inviter;
    public ZIMCallInvitationMode mode;

    public String toString() {
        return "ZIMCallInvitationCancelledInfo{inviter='" + this.inviter + "', extendedData='" + this.extendedData + "', mode=" + this.mode + '}';
    }
}
