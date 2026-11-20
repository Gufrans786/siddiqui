package im.zego.zim.internal.generated;

import java.util.ArrayList;

final class ZIMGenCallUserStateChangeInfo {
    String CallId;
    ArrayList<ZIMGenCallUserInfo> CallUserList;

    public ZIMGenCallUserStateChangeInfo() {
    }

    public ZIMGenCallUserStateChangeInfo(String callId, ArrayList<ZIMGenCallUserInfo> callUserList) {
        this.CallId = callId;
        this.CallUserList = callUserList;
    }

    public String getCallId() {
        return this.CallId;
    }

    public void setCallId(String callId) {
        this.CallId = callId;
    }

    public ArrayList<ZIMGenCallUserInfo> getCallUserList() {
        return this.CallUserList;
    }

    public void setCallUserList(ArrayList<ZIMGenCallUserInfo> callUserList) {
        this.CallUserList = callUserList;
    }

    public String toString() {
        return "ZIMGenCallUserStateChangeInfo{CallId=" + this.CallId + ",CallUserList=" + this.CallUserList + "}";
    }
}
