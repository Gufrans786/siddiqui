package im.zego.zim.internal.generated;

final class ZIMGenGroup {
    ZIMGenGroupInfo BaseInfo;
    String GroupAlias;
    boolean IsNullFromJava;
    int NotificationStatus;

    public ZIMGenGroup() {
    }

    public ZIMGenGroup(ZIMGenGroupInfo baseInfo, String groupAlias, int notificationStatus, boolean isNullFromJava) {
        this.BaseInfo = baseInfo;
        this.GroupAlias = groupAlias;
        this.NotificationStatus = notificationStatus;
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

    public int getNotificationStatus() {
        return this.NotificationStatus;
    }

    public void setNotificationStatus(int notificationStatus) {
        this.NotificationStatus = notificationStatus;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenGroup{BaseInfo=" + this.BaseInfo + ",GroupAlias=" + this.GroupAlias + ",NotificationStatus=" + this.NotificationStatus + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
