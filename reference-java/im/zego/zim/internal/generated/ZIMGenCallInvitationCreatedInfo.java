package im.zego.zim.internal.generated;

import java.util.ArrayList;

final class ZIMGenCallInvitationCreatedInfo {
    ArrayList<ZIMGenCallUserInfo> CallUserList;
    String Caller;
    long CreateTime;
    String ExtendedData;
    int Mode;
    int Timeout;

    public ZIMGenCallInvitationCreatedInfo() {
    }

    public ZIMGenCallInvitationCreatedInfo(int mode, String caller, String extendedData, int timeout, long createTime, ArrayList<ZIMGenCallUserInfo> callUserList) {
        this.Mode = mode;
        this.Caller = caller;
        this.ExtendedData = extendedData;
        this.Timeout = timeout;
        this.CreateTime = createTime;
        this.CallUserList = callUserList;
    }

    public int getMode() {
        return this.Mode;
    }

    public void setMode(int mode) {
        this.Mode = mode;
    }

    public String getCaller() {
        return this.Caller;
    }

    public void setCaller(String caller) {
        this.Caller = caller;
    }

    public String getExtendedData() {
        return this.ExtendedData;
    }

    public void setExtendedData(String extendedData) {
        this.ExtendedData = extendedData;
    }

    public int getTimeout() {
        return this.Timeout;
    }

    public void setTimeout(int timeout) {
        this.Timeout = timeout;
    }

    public long getCreateTime() {
        return this.CreateTime;
    }

    public void setCreateTime(long createTime) {
        this.CreateTime = createTime;
    }

    public ArrayList<ZIMGenCallUserInfo> getCallUserList() {
        return this.CallUserList;
    }

    public void setCallUserList(ArrayList<ZIMGenCallUserInfo> callUserList) {
        this.CallUserList = callUserList;
    }

    public String toString() {
        return "ZIMGenCallInvitationCreatedInfo{Mode=" + this.Mode + ",Caller=" + this.Caller + ",ExtendedData=" + this.ExtendedData + ",Timeout=" + this.Timeout + ",CreateTime=" + this.CreateTime + ",CallUserList=" + this.CallUserList + "}";
    }
}
