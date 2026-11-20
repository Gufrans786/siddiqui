package im.zego.zim.entity;

import im.zego.zim.enums.ZIMPlatformType;
import im.zego.zim.enums.ZIMUserOnlineStatus;
import java.util.ArrayList;

public class ZIMUserStatus {
    public String userID = "";
    public ZIMUserOnlineStatus onlineStatus = ZIMUserOnlineStatus.UNKNOWN;
    public ArrayList<ZIMPlatformType> onlinePlatforms = new ArrayList<>();
    public String customStatus = "";
    public long lastUpdateTime = 0;
    public long lastOnlineStatusUpdateTime = 0;
    public long lastCustomStatusUpdateTime = 0;

    public String toString() {
        return "ZIMUserStatus{userID=" + this.userID + ", onlineStatus=" + this.onlineStatus + ", onlinePlatforms=" + this.onlinePlatforms + ", customStatus=" + this.customStatus + ", lastUpdateTime=" + this.lastUpdateTime + ", lastOnlineStatusUpdateTime=" + this.lastOnlineStatusUpdateTime + ", lastCustomStatusUpdateTime=" + this.lastCustomStatusUpdateTime + "}";
    }
}
