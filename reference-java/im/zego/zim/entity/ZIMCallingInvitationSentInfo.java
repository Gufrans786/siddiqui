package im.zego.zim.entity;

import java.util.ArrayList;

public class ZIMCallingInvitationSentInfo {
    public ArrayList<ZIMErrorUserInfo> errorUserList;

    public String toString() {
        return "ZIMCallingInvitationSentInfo{errorInvitees=" + this.errorUserList + '}';
    }
}
