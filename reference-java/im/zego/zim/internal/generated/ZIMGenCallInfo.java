package im.zego.zim.internal.generated;

import java.util.ArrayList;

final class ZIMGenCallInfo {
    String CallId;
    ArrayList<ZIMGenCallUserInfo> CallUserInfos;
    String Caller;
    long CreateTime;
    long EndTime;
    String ExtendedData;
    String Inviter;
    int Mode;
    int State;

    public ZIMGenCallInfo() {
    }

    public ZIMGenCallInfo(String callId, String caller, long createTime, long endTime, int state, int mode, String extendedData, ArrayList<ZIMGenCallUserInfo> callUserInfos, String inviter) {
        this.CallId = callId;
        this.Caller = caller;
        this.CreateTime = createTime;
        this.EndTime = endTime;
        this.State = state;
        this.Mode = mode;
        this.ExtendedData = extendedData;
        this.CallUserInfos = callUserInfos;
        this.Inviter = inviter;
    }

    public String getCallId() {
        return this.CallId;
    }

    public void setCallId(String callId) {
        this.CallId = callId;
    }

    public String getCaller() {
        return this.Caller;
    }

    public void setCaller(String caller) {
        this.Caller = caller;
    }

    public long getCreateTime() {
        return this.CreateTime;
    }

    public void setCreateTime(long createTime) {
        this.CreateTime = createTime;
    }

    public long getEndTime() {
        return this.EndTime;
    }

    public void setEndTime(long endTime) {
        this.EndTime = endTime;
    }

    public int getState() {
        return this.State;
    }

    public void setState(int state) {
        this.State = state;
    }

    public int getMode() {
        return this.Mode;
    }

    public void setMode(int mode) {
        this.Mode = mode;
    }

    public String getExtendedData() {
        return this.ExtendedData;
    }

    public void setExtendedData(String extendedData) {
        this.ExtendedData = extendedData;
    }

    public ArrayList<ZIMGenCallUserInfo> getCallUserInfos() {
        return this.CallUserInfos;
    }

    public void setCallUserInfos(ArrayList<ZIMGenCallUserInfo> callUserInfos) {
        this.CallUserInfos = callUserInfos;
    }

    public String getInviter() {
        return this.Inviter;
    }

    public void setInviter(String inviter) {
        this.Inviter = inviter;
    }

    public String toString() {
        return "ZIMGenCallInfo{CallId=" + this.CallId + ",Caller=" + this.Caller + ",CreateTime=" + this.CreateTime + ",EndTime=" + this.EndTime + ",State=" + this.State + ",Mode=" + this.Mode + ",ExtendedData=" + this.ExtendedData + ",CallUserInfos=" + this.CallUserInfos + ",Inviter=" + this.Inviter + "}";
    }
}
