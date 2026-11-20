package im.zego.zim.entity;

import im.zego.zim.enums.ZIMCallInvitationMode;
import java.util.ArrayList;

public class ZIMCallInvitationCreatedInfo {
    public ArrayList<ZIMCallUserInfo> callUserList;
    public String caller;
    public long createTime;
    public String extendedData;
    public ZIMCallInvitationMode mode;
    public int timeout;

    public String toString() {
        return "ZIMCallInvitationCreatedInfo{mode=" + this.mode + ", caller='" + this.caller + "', extendedData='" + this.extendedData + "', timeout=" + this.timeout + ", createTime=" + this.createTime + ", callUserList=" + this.callUserList + '}';
    }
}
