package im.zego.zim.entity;

import im.zego.zim.enums.ZIMGroupMessageNotificationStatus;
import java.util.HashMap;

public class ZIMGroupFullInfo {
    public ZIMGroupInfo baseInfo;
    public long createTime;
    public String groupAlias;
    public HashMap<String, String> groupAttributes;
    public String groupNotice;
    public int maxMemberCount;
    public ZIMGroupMuteInfo mutedInfo;
    public ZIMGroupMessageNotificationStatus notificationStatus;
    public ZIMGroupVerifyInfo verifyInfo;

    public String toString() {
        return "ZIMGroupFullInfo{baseInfo=" + this.baseInfo + "groupAlias='" + this.groupAlias + "', groupNotice='" + this.groupNotice + "', groupAttributes=" + this.groupAttributes + ", notificationStatus=" + this.notificationStatus + ", mutedInfo=" + this.mutedInfo + '}';
    }
}
