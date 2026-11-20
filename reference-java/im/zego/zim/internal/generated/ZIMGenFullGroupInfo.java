package im.zego.zim.internal.generated;

import java.util.HashMap;

final class ZIMGenFullGroupInfo {
    ZIMGenGroupInfo BaseInfo;
    long CreateTime;
    String GroupAlias;
    HashMap<String, String> GroupAttributes;
    String GroupNotice;
    boolean IsNullFromJava;
    int MaxMemberCount;
    ZIMGenGroupMuteInfo MuteInfo;
    int NotificationStatus;
    ZIMGenGroupVerifyInfo VerifyInfo;

    public ZIMGenFullGroupInfo() {
    }

    public ZIMGenFullGroupInfo(ZIMGenGroupInfo baseInfo, String groupAlias, String groupNotice, HashMap<String, String> groupAttributes, int notificationStatus, ZIMGenGroupMuteInfo muteInfo, long createTime, int maxMemberCount, ZIMGenGroupVerifyInfo verifyInfo, boolean isNullFromJava) {
        this.BaseInfo = baseInfo;
        this.GroupAlias = groupAlias;
        this.GroupNotice = groupNotice;
        this.GroupAttributes = groupAttributes;
        this.NotificationStatus = notificationStatus;
        this.MuteInfo = muteInfo;
        this.CreateTime = createTime;
        this.MaxMemberCount = maxMemberCount;
        this.VerifyInfo = verifyInfo;
        this.IsNullFromJava = isNullFromJava;
    }

    public ZIMGenGroupInfo getBaseInfo() {
        return this.BaseInfo;
    }

    public void setBaseInfo(ZIMGenGroupInfo baseInfo) {
        this.BaseInfo = baseInfo;
    }

    public String getGroupAlias() {
        return this.GroupAlias;
    }

    public void setGroupAlias(String groupAlias) {
        this.GroupAlias = groupAlias;
    }

    public String getGroupNotice() {
        return this.GroupNotice;
    }

    public void setGroupNotice(String groupNotice) {
        this.GroupNotice = groupNotice;
    }

    public HashMap<String, String> getGroupAttributes() {
        return this.GroupAttributes;
    }

    public void setGroupAttributes(HashMap<String, String> groupAttributes) {
        this.GroupAttributes = groupAttributes;
    }

    public int getNotificationStatus() {
        return this.NotificationStatus;
    }

    public void setNotificationStatus(int notificationStatus) {
        this.NotificationStatus = notificationStatus;
    }

    public ZIMGenGroupMuteInfo getMuteInfo() {
        return this.MuteInfo;
    }

    public void setMuteInfo(ZIMGenGroupMuteInfo muteInfo) {
        this.MuteInfo = muteInfo;
    }

    public long getCreateTime() {
        return this.CreateTime;
    }

    public void setCreateTime(long createTime) {
        this.CreateTime = createTime;
    }

    public int getMaxMemberCount() {
        return this.MaxMemberCount;
    }

    public void setMaxMemberCount(int maxMemberCount) {
        this.MaxMemberCount = maxMemberCount;
    }

    public ZIMGenGroupVerifyInfo getVerifyInfo() {
        return this.VerifyInfo;
    }

    public void setVerifyInfo(ZIMGenGroupVerifyInfo verifyInfo) {
        this.VerifyInfo = verifyInfo;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenFullGroupInfo{BaseInfo=" + this.BaseInfo + ",GroupAlias=" + this.GroupAlias + ",GroupNotice=" + this.GroupNotice + ",GroupAttributes=" + this.GroupAttributes + ",NotificationStatus=" + this.NotificationStatus + ",MuteInfo=" + this.MuteInfo + ",CreateTime=" + this.CreateTime + ",MaxMemberCount=" + this.MaxMemberCount + ",VerifyInfo=" + this.VerifyInfo + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
