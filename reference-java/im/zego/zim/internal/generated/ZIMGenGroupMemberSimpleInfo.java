package im.zego.zim.internal.generated;

final class ZIMGenGroupMemberSimpleInfo {
    ZIMGenUserInfo BaseInfo;
    boolean IsNullFromJava;
    String MemberNickname;
    int MemberRole;

    public ZIMGenGroupMemberSimpleInfo() {
    }

    public ZIMGenGroupMemberSimpleInfo(ZIMGenUserInfo baseInfo, String memberNickname, int memberRole, boolean isNullFromJava) {
        this.BaseInfo = baseInfo;
        this.MemberNickname = memberNickname;
        this.MemberRole = memberRole;
        this.IsNullFromJava = isNullFromJava;
    }

    public ZIMGenUserInfo getBaseInfo() {
        return this.BaseInfo;
    }

    public void setBaseInfo(ZIMGenUserInfo baseInfo) {
        this.BaseInfo = baseInfo;
    }

    public String getMemberNickname() {
        return this.MemberNickname;
    }

    public void setMemberNickname(String memberNickname) {
        this.MemberNickname = memberNickname;
    }

    public int getMemberRole() {
        return this.MemberRole;
    }

    public void setMemberRole(int memberRole) {
        this.MemberRole = memberRole;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenGroupMemberSimpleInfo{BaseInfo=" + this.BaseInfo + ",MemberNickname=" + this.MemberNickname + ",MemberRole=" + this.MemberRole + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
