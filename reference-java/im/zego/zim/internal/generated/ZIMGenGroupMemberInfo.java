package im.zego.zim.internal.generated;

final class ZIMGenGroupMemberInfo {
    ZIMGenGroupEnterInfo GroupEnterInfo;
    boolean IsNullFromJava;
    String MemberAvatarUrl;
    String MemberNickName;
    int MemberRole;
    long MuteExpiredTimestamp;
    ZIMGenUserInfo UserInfo;

    public ZIMGenGroupMemberInfo() {
    }

    public ZIMGenGroupMemberInfo(String memberNickName, int memberRole, String memberAvatarUrl, long muteExpiredTimestamp, ZIMGenUserInfo userInfo, ZIMGenGroupEnterInfo groupEnterInfo, boolean isNullFromJava) {
        this.MemberNickName = memberNickName;
        this.MemberRole = memberRole;
        this.MemberAvatarUrl = memberAvatarUrl;
        this.MuteExpiredTimestamp = muteExpiredTimestamp;
        this.UserInfo = userInfo;
        this.GroupEnterInfo = groupEnterInfo;
        this.IsNullFromJava = isNullFromJava;
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

    public String getMemberAvatarUrl() {
        return this.MemberAvatarUrl;
    }

    public void setMemberAvatarUrl(String memberAvatarUrl) {
        this.MemberAvatarUrl = memberAvatarUrl;
    }

    public long getMuteExpiredTimestamp() {
        return this.MuteExpiredTimestamp;
    }

    public void setMuteExpiredTimestamp(long muteExpiredTimestamp) {
        this.MuteExpiredTimestamp = muteExpiredTimestamp;
    }

    public ZIMGenUserInfo getUserInfo() {
        return this.UserInfo;
    }

    public void setUserInfo(ZIMGenUserInfo userInfo) {
        this.UserInfo = userInfo;
    }

    public ZIMGenGroupEnterInfo getGroupEnterInfo() {
        return this.GroupEnterInfo;
    }

    public void setGroupEnterInfo(ZIMGenGroupEnterInfo groupEnterInfo) {
        this.GroupEnterInfo = groupEnterInfo;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenGroupMemberInfo{MemberNickName=" + this.MemberNickName + ",MemberRole=" + this.MemberRole + ",MemberAvatarUrl=" + this.MemberAvatarUrl + ",MuteExpiredTimestamp=" + this.MuteExpiredTimestamp + ",UserInfo=" + this.UserInfo + ",GroupEnterInfo=" + this.GroupEnterInfo + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
