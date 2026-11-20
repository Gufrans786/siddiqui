package im.zego.zim.entity;

import im.zego.zim.enums.ZIMGroupMessageNotificationStatus;

public class ZIMGroup {
    public String groupAlias;
    public ZIMGroupInfo baseInfo = new ZIMGroupInfo();
    public ZIMGroupMessageNotificationStatus notificationStatus = ZIMGroupMessageNotificationStatus.NOTIFY;

    public String toString() {
        return "ZIMGroup{baseInfo=" + this.baseInfo + "groupAlias = '" + this.groupAlias + "', notificationStatus=" + this.notificationStatus + '}';
    }
}
