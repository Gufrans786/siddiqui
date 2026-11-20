package im.zego.zim.entity;

import java.util.ArrayList;

public class ZIMCallJoinSentInfo {
    public ArrayList<ZIMCallUserInfo> callUserList;
    public long createTime;
    public String extendedData;
    public long joinTime;

    public String toString() {
        return "ZIMCallJoinSentInfo{createTime=" + this.createTime + ", joinTime=" + this.joinTime + ", extendedData=" + this.extendedData + ", callUserList=" + this.callUserList + '}';
    }
}
