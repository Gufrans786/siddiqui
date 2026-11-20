package im.zego.zim.internal.generated;

import java.util.ArrayList;

final class ZIMGenCallJoinSentInfo {
    ArrayList<ZIMGenCallUserInfo> CallUserList;
    long CreateTime;
    String ExtendedData;
    long JoinTime;

    public ZIMGenCallJoinSentInfo() {
    }

    public ZIMGenCallJoinSentInfo(long createTime, long joinTime, ArrayList<ZIMGenCallUserInfo> callUserList, String extendedData) {
        this.CreateTime = createTime;
        this.JoinTime = joinTime;
        this.CallUserList = callUserList;
        this.ExtendedData = extendedData;
    }

    public long getCreateTime() {
        return this.CreateTime;
    }

    public void setCreateTime(long createTime) {
        this.CreateTime = createTime;
    }

    public long getJoinTime() {
        return this.JoinTime;
    }

    public void setJoinTime(long joinTime) {
        this.JoinTime = joinTime;
    }

    public ArrayList<ZIMGenCallUserInfo> getCallUserList() {
        return this.CallUserList;
    }

    public void setCallUserList(ArrayList<ZIMGenCallUserInfo> callUserList) {
        this.CallUserList = callUserList;
    }

    public String getExtendedData() {
        return this.ExtendedData;
    }

    public void setExtendedData(String extendedData) {
        this.ExtendedData = extendedData;
    }

    public String toString() {
        return "ZIMGenCallJoinSentInfo{CreateTime=" + this.CreateTime + ",JoinTime=" + this.JoinTime + ",CallUserList=" + this.CallUserList + ",ExtendedData=" + this.ExtendedData + "}";
    }
}
