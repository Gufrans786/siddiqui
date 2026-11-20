package im.zego.zim.entity;

import java.util.ArrayList;

public class ZIMCallInvitationSentInfo {
    public ArrayList<ZIMCallUserInfo> errorInvitees;
    public ArrayList<ZIMErrorUserInfo> errorUserList;
    public int timeout;

    public String toString() {
        return "ZIMCallInvitationSentInfo{timeout=" + this.timeout + ", errorInvitees=" + this.errorInvitees + ", errorList=" + this.errorUserList + '}';
    }
}
