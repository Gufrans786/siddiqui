package im.zego.zim.internal.generated;

final class ZIMGenGroupApplicationInfo {
    ZIMGenUserInfo ApplyUser;
    long CreateTime;
    ZIMGenGroupInfo GroupInfo;
    ZIMGenGroupMemberSimpleInfo OperatedUser;
    int State;
    int Type;
    long UpdateTime;
    String Wording;

    public ZIMGenGroupApplicationInfo() {
    }

    public ZIMGenGroupApplicationInfo(ZIMGenGroupInfo groupInfo, ZIMGenUserInfo applyUser, ZIMGenGroupMemberSimpleInfo operatedUser, String wording, long createTime, long updateTime, int type, int state) {
        this.GroupInfo = groupInfo;
        this.ApplyUser = applyUser;
        this.OperatedUser = operatedUser;
        this.Wording = wording;
        this.CreateTime = createTime;
        this.UpdateTime = updateTime;
        this.Type = type;
        this.State = state;
    }

    public ZIMGenGroupInfo getGroupInfo() {
        return this.GroupInfo;
    }

    public void setGroupInfo(ZIMGenGroupInfo groupInfo) {
        this.GroupInfo = groupInfo;
    }

    public ZIMGenUserInfo getApplyUser() {
        return this.ApplyUser;
    }

    public void setApplyUser(ZIMGenUserInfo applyUser) {
        this.ApplyUser = applyUser;
    }

    public ZIMGenGroupMemberSimpleInfo getOperatedUser() {
        return this.OperatedUser;
    }

    public void setOperatedUser(ZIMGenGroupMemberSimpleInfo operatedUser) {
        this.OperatedUser = operatedUser;
    }

    public String getWording() {
        return this.Wording;
    }

    public void setWording(String wording) {
        this.Wording = wording;
    }

    public long getCreateTime() {
        return this.CreateTime;
    }

    public void setCreateTime(long createTime) {
        this.CreateTime = createTime;
    }

    public long getUpdateTime() {
        return this.UpdateTime;
    }

    public void setUpdateTime(long updateTime) {
        this.UpdateTime = updateTime;
    }

    public int getType() {
        return this.Type;
    }

    public void setType(int type) {
        this.Type = type;
    }

    public int getState() {
        return this.State;
    }

    public void setState(int state) {
        this.State = state;
    }

    public String toString() {
        return "ZIMGenGroupApplicationInfo{GroupInfo=" + this.GroupInfo + ",ApplyUser=" + this.ApplyUser + ",OperatedUser=" + this.OperatedUser + ",Wording=" + this.Wording + ",CreateTime=" + this.CreateTime + ",UpdateTime=" + this.UpdateTime + ",Type=" + this.Type + ",State=" + this.State + "}";
    }
}
