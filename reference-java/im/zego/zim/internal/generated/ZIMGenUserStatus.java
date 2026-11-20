package im.zego.zim.internal.generated;

import java.util.ArrayList;

final class ZIMGenUserStatus {
    String CustomStatus;
    long LastCustomStatusUpdateTime;
    long LastOnlineStatusUpdateTime;
    long LastUpdateTime;
    ArrayList<Integer> OnlinePlatforms;
    int OnlineStatus;
    String UserID;

    public ZIMGenUserStatus() {
    }

    public ZIMGenUserStatus(String userID, int onlineStatus, ArrayList<Integer> onlinePlatforms, String customStatus, long lastUpdateTime, long lastOnlineStatusUpdateTime, long lastCustomStatusUpdateTime) {
        this.UserID = userID;
        this.OnlineStatus = onlineStatus;
        this.OnlinePlatforms = onlinePlatforms;
        this.CustomStatus = customStatus;
        this.LastUpdateTime = lastUpdateTime;
        this.LastOnlineStatusUpdateTime = lastOnlineStatusUpdateTime;
        this.LastCustomStatusUpdateTime = lastCustomStatusUpdateTime;
    }

    public String getUserID() {
        return this.UserID;
    }

    public void setUserID(String userID) {
        this.UserID = userID;
    }

    public int getOnlineStatus() {
        return this.OnlineStatus;
    }

    public void setOnlineStatus(int onlineStatus) {
        this.OnlineStatus = onlineStatus;
    }

    public ArrayList<Integer> getOnlinePlatforms() {
        return this.OnlinePlatforms;
    }

    public void setOnlinePlatforms(ArrayList<Integer> onlinePlatforms) {
        this.OnlinePlatforms = onlinePlatforms;
    }

    public String getCustomStatus() {
        return this.CustomStatus;
    }

    public void setCustomStatus(String customStatus) {
        this.CustomStatus = customStatus;
    }

    public long getLastUpdateTime() {
        return this.LastUpdateTime;
    }

    public void setLastUpdateTime(long lastUpdateTime) {
        this.LastUpdateTime = lastUpdateTime;
    }

    public long getLastOnlineStatusUpdateTime() {
        return this.LastOnlineStatusUpdateTime;
    }

    public void setLastOnlineStatusUpdateTime(long lastOnlineStatusUpdateTime) {
        this.LastOnlineStatusUpdateTime = lastOnlineStatusUpdateTime;
    }

    public long getLastCustomStatusUpdateTime() {
        return this.LastCustomStatusUpdateTime;
    }

    public void setLastCustomStatusUpdateTime(long lastCustomStatusUpdateTime) {
        this.LastCustomStatusUpdateTime = lastCustomStatusUpdateTime;
    }

    public String toString() {
        return "ZIMGenUserStatus{UserID=" + this.UserID + ",OnlineStatus=" + this.OnlineStatus + ",OnlinePlatforms=" + this.OnlinePlatforms + ",CustomStatus=" + this.CustomStatus + ",LastUpdateTime=" + this.LastUpdateTime + ",LastOnlineStatusUpdateTime=" + this.LastOnlineStatusUpdateTime + ",LastCustomStatusUpdateTime=" + this.LastCustomStatusUpdateTime + "}";
    }
}
