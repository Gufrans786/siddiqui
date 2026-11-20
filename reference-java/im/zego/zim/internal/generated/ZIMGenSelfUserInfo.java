package im.zego.zim.internal.generated;

final class ZIMGenSelfUserInfo {
    boolean IsNullFromJava;
    ZIMGenFullUserInfo UserFullInfo;
    ZIMGenUserRule UserRule;
    ZIMGenUserStatus UserStatus;

    public ZIMGenSelfUserInfo() {
    }

    public ZIMGenSelfUserInfo(ZIMGenUserRule userRule, ZIMGenFullUserInfo userFullInfo, ZIMGenUserStatus userStatus, boolean isNullFromJava) {
        this.UserRule = userRule;
        this.UserFullInfo = userFullInfo;
        this.UserStatus = userStatus;
        this.IsNullFromJava = isNullFromJava;
    }

    public ZIMGenUserRule getUserRule() {
        return this.UserRule;
    }

    public void setUserRule(ZIMGenUserRule userRule) {
        this.UserRule = userRule;
    }

    public ZIMGenFullUserInfo getUserFullInfo() {
        return this.UserFullInfo;
    }

    public void setUserFullInfo(ZIMGenFullUserInfo userFullInfo) {
        this.UserFullInfo = userFullInfo;
    }

    public ZIMGenUserStatus getUserStatus() {
        return this.UserStatus;
    }

    public void setUserStatus(ZIMGenUserStatus userStatus) {
        this.UserStatus = userStatus;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenSelfUserInfo{UserRule=" + this.UserRule + ",UserFullInfo=" + this.UserFullInfo + ",UserStatus=" + this.UserStatus + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
