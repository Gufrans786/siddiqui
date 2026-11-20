package im.zego.zim.internal.generated;

final class ZIMGenInnerUserInfo {
    long GroupMemberExpiredTime;
    String GroupMemberNickName;
    int GroupRole;
    String UserAvatar;
    String UserExtendedData;
    String UserID;
    String UserName;
    int UserType;

    public ZIMGenInnerUserInfo() {
    }

    public ZIMGenInnerUserInfo(int userType, String userID, String userName, String userAvatar, String userExtendedData, String groupMemberNickName, int groupRole, long groupMemberExpiredTime) {
        this.UserType = userType;
        this.UserID = userID;
        this.UserName = userName;
        this.UserAvatar = userAvatar;
        this.UserExtendedData = userExtendedData;
        this.GroupMemberNickName = groupMemberNickName;
        this.GroupRole = groupRole;
        this.GroupMemberExpiredTime = groupMemberExpiredTime;
    }

    public int getUserType() {
        return this.UserType;
    }

    public void setUserType(int userType) {
        this.UserType = userType;
    }

    public String getUserID() {
        return this.UserID;
    }

    public void setUserID(String userID) {
        this.UserID = userID;
    }

    public String getUserName() {
        return this.UserName;
    }

    public void setUserName(String userName) {
        this.UserName = userName;
    }

    public String getUserAvatar() {
        return this.UserAvatar;
    }

    public void setUserAvatar(String userAvatar) {
        this.UserAvatar = userAvatar;
    }

    public String getUserExtendedData() {
        return this.UserExtendedData;
    }

    public void setUserExtendedData(String userExtendedData) {
        this.UserExtendedData = userExtendedData;
    }

    public String getGroupMemberNickName() {
        return this.GroupMemberNickName;
    }

    public void setGroupMemberNickName(String groupMemberNickName) {
        this.GroupMemberNickName = groupMemberNickName;
    }

    public int getGroupRole() {
        return this.GroupRole;
    }

    public void setGroupRole(int groupRole) {
        this.GroupRole = groupRole;
    }

    public long getGroupMemberExpiredTime() {
        return this.GroupMemberExpiredTime;
    }

    public void setGroupMemberExpiredTime(long groupMemberExpiredTime) {
        this.GroupMemberExpiredTime = groupMemberExpiredTime;
    }

    public String toString() {
        return "ZIMGenInnerUserInfo{UserType=" + this.UserType + ",UserID=" + this.UserID + ",UserName=" + this.UserName + ",UserAvatar=" + this.UserAvatar + ",UserExtendedData=" + this.UserExtendedData + ",GroupMemberNickName=" + this.GroupMemberNickName + ",GroupRole=" + this.GroupRole + ",GroupMemberExpiredTime=" + this.GroupMemberExpiredTime + "}";
    }
}
