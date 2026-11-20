package im.zego.zim.internal.generated;

import java.util.ArrayList;

final class ZIMGenCallInvitationReceivedInfo {
    ArrayList<ZIMGenCallUserInfo> CallUserList;
    String Caller;
    long CreateTime;
    String ExtendedData;
    String Inviter;
    boolean IsNullFromJava;
    int Mode;
    int Timeout;

    public ZIMGenCallInvitationReceivedInfo() {
    }

    public ZIMGenCallInvitationReceivedInfo(int timeout, String inviter, String extendedData, int mode, long createTime, ArrayList<ZIMGenCallUserInfo> callUserList, String caller, boolean isNullFromJava) {
        this.Timeout = timeout;
        this.Inviter = inviter;
        this.ExtendedData = extendedData;
        this.Mode = mode;
        this.CreateTime = createTime;
        this.CallUserList = callUserList;
        this.Caller = caller;
        this.IsNullFromJava = isNullFromJava;
    }

    public int getTimeout() {
        return this.Timeout;
    }

    public void setTimeout(int timeout) {
        this.Timeout = timeout;
    }

    public String getInviter() {
        return this.Inviter;
    }

    public void setInviter(String inviter) {
        this.Inviter = inviter;
    }

    public String getExtendedData() {
        return this.ExtendedData;
    }

    public void setExtendedData(String extendedData) {
        this.ExtendedData = extendedData;
    }

    public int getMode() {
        return this.Mode;
    }

    public void setMode(int mode) {
        this.Mode = mode;
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

    public String getCaller() {
        return this.Caller;
    }

    public void setCaller(String caller) {
        this.Caller = caller;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenCallInvitationReceivedInfo{Timeout=" + this.Timeout + ",Inviter=" + this.Inviter + ",ExtendedData=" + this.ExtendedData + ",Mode=" + this.Mode + ",CreateTime=" + this.CreateTime + ",CallUserList=" + this.CallUserList + ",Caller=" + this.Caller + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
