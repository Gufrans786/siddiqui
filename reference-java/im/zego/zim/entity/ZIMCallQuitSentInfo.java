package im.zego.zim.entity;

public class ZIMCallQuitSentInfo {
    public long acceptTime;
    public long createTime;
    public long quitTime;

    public String toString() {
        return "ZIMCallQuitSentInfo{create_time=" + this.createTime + ", acceptTime=" + this.acceptTime + ", quitTime=" + this.quitTime + '}';
    }
}
