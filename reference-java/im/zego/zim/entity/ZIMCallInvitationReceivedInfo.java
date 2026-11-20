package im.zego.zim.entity;

import im.zego.zim.enums.ZIMCallInvitationMode;
import java.util.ArrayList;

public class ZIMCallInvitationReceivedInfo {
    public ArrayList<ZIMCallUserInfo> callUserList;
    public String caller;
    public long createTime;
    public String extendedData;
    public String inviter;
    public ZIMCallInvitationMode mode;
    public int timeout;

    public String toString() {
        return "ZIMCallInvitationReceivedInfo{timeout=" + this.timeout + ", inviter='" + this.inviter + "', extendedData='" + this.extendedData + "', mode=" + this.mode + ", create_time=" + this.createTime + ", callUserList=" + this.callUserList + '}';
    }
}
