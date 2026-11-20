package im.zego.zim.entity;

import im.zego.zim.enums.ZIMCallInvitationMode;
import im.zego.zim.enums.ZIMCallState;
import java.util.ArrayList;

public class ZIMCallInfo {
    public String callID;
    public ArrayList<ZIMCallUserInfo> callUserList;
    public String caller;
    public long createTime;
    public long endTime;
    public String extendedData;
    public String inviter;
    public ZIMCallInvitationMode mode;
    public ZIMCallState state;

    public String toString() {
        return "ZIMCallInfo{callID='" + this.callID + "', caller='" + this.caller + "', create_time=" + this.createTime + ", endTime=" + this.endTime + ", state=" + this.state + ", mode=" + this.mode + ", extendedData='" + this.extendedData + "', callUserList=" + this.callUserList + '}';
    }
}
