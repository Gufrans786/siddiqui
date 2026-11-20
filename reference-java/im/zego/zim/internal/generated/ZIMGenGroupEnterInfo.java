package im.zego.zim.internal.generated;

final class ZIMGenGroupEnterInfo {
    long EnterTime;
    int EnterType;
    ZIMGenGroupMemberSimpleInfo OperatedUser;

    public ZIMGenGroupEnterInfo() {
    }

    public ZIMGenGroupEnterInfo(long enterTime, int enterType, ZIMGenGroupMemberSimpleInfo operatedUser) {
        this.EnterTime = enterTime;
        this.EnterType = enterType;
        this.OperatedUser = operatedUser;
    }

    public long getEnterTime() {
        return this.EnterTime;
    }

    public void setEnterTime(long enterTime) {
        this.EnterTime = enterTime;
    }

    public int getEnterType() {
        return this.EnterType;
    }

    public void setEnterType(int enterType) {
        this.EnterType = enterType;
    }

    public ZIMGenGroupMemberSimpleInfo getOperatedUser() {
        return this.OperatedUser;
    }

    public void setOperatedUser(ZIMGenGroupMemberSimpleInfo operatedUser) {
        this.OperatedUser = operatedUser;
    }

    public String toString() {
        return "ZIMGenGroupEnterInfo{EnterTime=" + this.EnterTime + ",EnterType=" + this.EnterType + ",OperatedUser=" + this.OperatedUser + "}";
    }
}
