package im.zego.zim.internal.generated;

final class ZIMGenTipsMessageChangeInfo {
    String GroupAvatarUrl;
    int GroupDataFlag;
    ZIMGenGroupMuteInfo GroupMuteInfo;
    String GroupName;
    ZIMGenInnerUserInfo GroupNewOwner;
    String GroupNotice;
    boolean IsNullFromJava;
    boolean IsPinned;
    boolean IsUpdateOwner;
    long MuteExpiredTime;
    int Role;
    int Type;

    public ZIMGenTipsMessageChangeInfo() {
    }

    public ZIMGenTipsMessageChangeInfo(int type, int groupDataFlag, String groupName, String groupNotice, String groupAvatarUrl, ZIMGenGroupMuteInfo groupMuteInfo, ZIMGenInnerUserInfo groupNewOwner, boolean isUpdateOwner, int role, long muteExpiredTime, boolean isPinned, boolean isNullFromJava) {
        this.Type = type;
        this.GroupDataFlag = groupDataFlag;
        this.GroupName = groupName;
        this.GroupNotice = groupNotice;
        this.GroupAvatarUrl = groupAvatarUrl;
        this.GroupMuteInfo = groupMuteInfo;
        this.GroupNewOwner = groupNewOwner;
        this.IsUpdateOwner = isUpdateOwner;
        this.Role = role;
        this.MuteExpiredTime = muteExpiredTime;
        this.IsPinned = isPinned;
        this.IsNullFromJava = isNullFromJava;
    }

    public int getType() {
        return this.Type;
    }

    public void setType(int type) {
        this.Type = type;
    }

    public int getGroupDataFlag() {
        return this.GroupDataFlag;
    }

    public void setGroupDataFlag(int groupDataFlag) {
        this.GroupDataFlag = groupDataFlag;
    }

    public String getGroupName() {
        return this.GroupName;
    }

    public void setGroupName(String groupName) {
        this.GroupName = groupName;
    }

    public String getGroupNotice() {
        return this.GroupNotice;
    }

    public void setGroupNotice(String groupNotice) {
        this.GroupNotice = groupNotice;
    }

    public String getGroupAvatarUrl() {
        return this.GroupAvatarUrl;
    }

    public void setGroupAvatarUrl(String groupAvatarUrl) {
        this.GroupAvatarUrl = groupAvatarUrl;
    }

    public ZIMGenGroupMuteInfo getGroupMuteInfo() {
        return this.GroupMuteInfo;
    }

    public void setGroupMuteInfo(ZIMGenGroupMuteInfo groupMuteInfo) {
        this.GroupMuteInfo = groupMuteInfo;
    }

    public ZIMGenInnerUserInfo getGroupNewOwner() {
        return this.GroupNewOwner;
    }

    public void setGroupNewOwner(ZIMGenInnerUserInfo groupNewOwner) {
        this.GroupNewOwner = groupNewOwner;
    }

    public boolean getIsUpdateOwner() {
        return this.IsUpdateOwner;
    }

    public void setIsUpdateOwner(boolean isUpdateOwner) {
        this.IsUpdateOwner = isUpdateOwner;
    }

    public int getRole() {
        return this.Role;
    }

    public void setRole(int role) {
        this.Role = role;
    }

    public long getMuteExpiredTime() {
        return this.MuteExpiredTime;
    }

    public void setMuteExpiredTime(long muteExpiredTime) {
        this.MuteExpiredTime = muteExpiredTime;
    }

    public boolean getIsPinned() {
        return this.IsPinned;
    }

    public void setIsPinned(boolean isPinned) {
        this.IsPinned = isPinned;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenTipsMessageChangeInfo{Type=" + this.Type + ",GroupDataFlag=" + this.GroupDataFlag + ",GroupName=" + this.GroupName + ",GroupNotice=" + this.GroupNotice + ",GroupAvatarUrl=" + this.GroupAvatarUrl + ",GroupMuteInfo=" + this.GroupMuteInfo + ",GroupNewOwner=" + this.GroupNewOwner + ",IsUpdateOwner=" + this.IsUpdateOwner + ",Role=" + this.Role + ",MuteExpiredTime=" + this.MuteExpiredTime + ",IsPinned=" + this.IsPinned + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
