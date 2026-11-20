package im.zego.zim.internal.generated;

final class ZIMGenCallEndedSentInfo {
    long AcceptTime;
    long CreateTime;
    long EndTime;

    public ZIMGenCallEndedSentInfo() {
    }

    public ZIMGenCallEndedSentInfo(long createTime, long endTime, long acceptTime) {
        this.CreateTime = createTime;
        this.EndTime = endTime;
        this.AcceptTime = acceptTime;
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

    public long getAcceptTime() {
        return this.AcceptTime;
    }

    public void setAcceptTime(long acceptTime) {
        this.AcceptTime = acceptTime;
    }

    public String toString() {
        return "ZIMGenCallEndedSentInfo{CreateTime=" + this.CreateTime + ",EndTime=" + this.EndTime + ",AcceptTime=" + this.AcceptTime + "}";
    }
}
