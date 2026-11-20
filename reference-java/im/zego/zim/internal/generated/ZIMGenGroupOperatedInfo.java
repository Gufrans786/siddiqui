package im.zego.zim.internal.generated;

final class ZIMGenGroupOperatedInfo {
    String MemberNickName;
    int MemberRole;
    ZIMGenGroupMemberInfo OperatedUserInfo;
    String UserId;
    String UserName;

    public ZIMGenGroupOperatedInfo() {
    }

    public ZIMGenGroupOperatedInfo(ZIMGenGroupMemberInfo operatedUserInfo, String userId, String userName, String memberNickName, int memberRole) {
        this.OperatedUserInfo = operatedUserInfo;
        this.UserId = userId;
        this.UserName = userName;
        this.MemberNickName = memberNickName;
        this.MemberRole = memberRole;
    }

    public ZIMGenGroupMemberInfo getOperatedUserInfo() {
        return this.OperatedUserInfo;
    }

    public void setOperatedUserInfo(ZIMGenGroupMemberInfo operatedUserInfo) {
        this.OperatedUserInfo = operatedUserInfo;
    }

    public String getUserId() {
        return this.UserId;
    }

    public void setUserId(String userId) {
        this.UserId = userId;
    }

    public String getUserName() {
        return this.UserName;
    }

    public void setUserName(String userName) {
        this.UserName = userName;
    }

    public String getMemberNickName() {
        return this.MemberNickName;
    }

    public void setMemberNickName(String memberNickName) {
        this.MemberNickName = memberNickName;
    }

    public int getMemberRole() {
        return this.MemberRole;
    }

    public void setMemberRole(int memberRole) {
        this.MemberRole = memberRole;
    }

    public String toString() {
        return "ZIMGenGroupOperatedInfo{OperatedUserInfo=" + this.OperatedUserInfo + ",UserId=" + this.UserId + ",UserName=" + this.UserName + ",MemberNickName=" + this.MemberNickName + ",MemberRole=" + this.MemberRole + "}";
    }
}
