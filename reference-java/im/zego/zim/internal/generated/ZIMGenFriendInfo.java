package im.zego.zim.internal.generated;

import java.util.HashMap;

final class ZIMGenFriendInfo {
    HashMap<String, String> Attributes;
    long CreateTime;
    String FriendAlias;
    boolean IsNullFromJava;
    ZIMGenUserInfo UserInfo;
    String Wording;

    public ZIMGenFriendInfo() {
    }

    public ZIMGenFriendInfo(String friendAlias, long createTime, String wording, HashMap<String, String> attributes, ZIMGenUserInfo userInfo, boolean isNullFromJava) {
        this.FriendAlias = friendAlias;
        this.CreateTime = createTime;
        this.Wording = wording;
        this.Attributes = attributes;
        this.UserInfo = userInfo;
        this.IsNullFromJava = isNullFromJava;
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

    public String getWording() {
        return this.Wording;
    }

    public void setWording(String wording) {
        this.Wording = wording;
    }

    public HashMap<String, String> getAttributes() {
        return this.Attributes;
    }

    public void setAttributes(HashMap<String, String> attributes) {
        this.Attributes = attributes;
    }

    public ZIMGenUserInfo getUserInfo() {
        return this.UserInfo;
    }

    public void setUserInfo(ZIMGenUserInfo userInfo) {
        this.UserInfo = userInfo;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenFriendInfo{FriendAlias=" + this.FriendAlias + ",CreateTime=" + this.CreateTime + ",Wording=" + this.Wording + ",Attributes=" + this.Attributes + ",UserInfo=" + this.UserInfo + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
