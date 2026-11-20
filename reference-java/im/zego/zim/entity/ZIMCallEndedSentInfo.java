package im.zego.zim.entity;

public class ZIMCallEndedSentInfo {
    public long acceptTime;
    public long createTime;
    public long endTime;

    public String toString() {
        return "ZIMCallEndSentInfo{create_time=" + this.createTime + ", endTime=" + this.endTime + ", acceptTime=" + this.acceptTime + '}';
    }
}
