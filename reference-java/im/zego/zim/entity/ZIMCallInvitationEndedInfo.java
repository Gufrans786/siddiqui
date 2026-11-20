package im.zego.zim.entity;

import im.zego.zim.enums.ZIMCallInvitationMode;

public class ZIMCallInvitationEndedInfo {
    public String caller;
    public long endTime;
    public String extendedData;
    public ZIMCallInvitationMode mode;
    public String operatedUserID;

    public String toString() {
        return "ZIMCallInvitationEndedInfo{mode=" + this.mode + ", caller='" + this.caller + "', operatedUserId='" + this.operatedUserID + "', endTime=" + this.endTime + ", extendedData='" + this.extendedData + "'}";
    }
}
