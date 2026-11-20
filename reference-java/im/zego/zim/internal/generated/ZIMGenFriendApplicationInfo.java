package im.zego.zim.internal.generated;

import java.util.HashMap;

final class ZIMGenFriendApplicationInfo {
    ZIMGenUserInfo ApplyUser;
    HashMap<String, String> Attributes;
    long CreateTime;
    String FriendAlias;
    int State;
    int Type;
    long UpdateTime;
    String Wording;

    public ZIMGenFriendApplicationInfo() {
    }

    public ZIMGenFriendApplicationInfo(ZIMGenUserInfo applyUser, String wording, String friendAlias, long createTime, long updateTime, int type, int state, HashMap<String, String> attributes) {
        this.ApplyUser = applyUser;
        this.Wording = wording;
        this.FriendAlias = friendAlias;
        this.CreateTime = createTime;
        this.UpdateTime = updateTime;
        this.Type = type;
        this.State = state;
        this.Attributes = attributes;
    }

    public ZIMGenUserInfo getApplyUser() {
        return this.ApplyUser;
    }

    public void setApplyUser(ZIMGenUserInfo applyUser) {
        this.ApplyUser = applyUser;
    }

    public String getWording() {
        return this.Wording;
    }

    public void setWording(String wording) {
        this.Wording = wording;
    }

    public String getFriendAlias() {
        return this.FriendAlias;
    }

    public void setFriendAlias(String friendAlias) {
        this.FriendAlias = friendAlias;
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

    public HashMap<String, String> getAttributes() {
        return this.Attributes;
    }

    public void setAttributes(HashMap<String, String> attributes) {
        this.Attributes = attributes;
    }

    public String toString() {
        return "ZIMGenFriendApplicationInfo{ApplyUser=" + this.ApplyUser + ",Wording=" + this.Wording + ",FriendAlias=" + this.FriendAlias + ",CreateTime=" + this.CreateTime + ",UpdateTime=" + this.UpdateTime + ",Type=" + this.Type + ",State=" + this.State + ",Attributes=" + this.Attributes + "}";
    }
}
