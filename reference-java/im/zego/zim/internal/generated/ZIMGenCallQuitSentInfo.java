package im.zego.zim.internal.generated;

final class ZIMGenCallQuitSentInfo {
    long AcceptTime;
    long CreateTime;
    long QuitTime;

    public ZIMGenCallQuitSentInfo() {
    }

    public ZIMGenCallQuitSentInfo(long createTime, long quitTime, long acceptTime) {
        this.CreateTime = createTime;
        this.QuitTime = quitTime;
        this.AcceptTime = acceptTime;
    }

    public long getCreateTime() {
        return this.CreateTime;
    }

    public void setCreateTime(long createTime) {
        this.CreateTime = createTime;
    }

    public long getQuitTime() {
        return this.QuitTime;
    }

    public void setQuitTime(long quitTime) {
        this.QuitTime = quitTime;
    }

    public long getAcceptTime() {
        return this.AcceptTime;
    }

    public void setAcceptTime(long acceptTime) {
        this.AcceptTime = acceptTime;
    }

    public String toString() {
        return "ZIMGenCallQuitSentInfo{CreateTime=" + this.CreateTime + ",QuitTime=" + this.QuitTime + ",AcceptTime=" + this.AcceptTime + "}";
    }
}
