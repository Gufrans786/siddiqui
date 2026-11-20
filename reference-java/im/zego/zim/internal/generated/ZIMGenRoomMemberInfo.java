package im.zego.zim.internal.generated;

final class ZIMGenRoomMemberInfo {
    boolean IsNullFromJava;
    ZIMGenUserInfo UserInfo;

    public ZIMGenRoomMemberInfo() {
    }

    public ZIMGenRoomMemberInfo(ZIMGenUserInfo userInfo, boolean isNullFromJava) {
        this.UserInfo = userInfo;
        this.IsNullFromJava = isNullFromJava;
    }

    public ZIMGenUserInfo getUserInfo() {
        return this.UserInfo;
    }

    public void setUserInfo(ZIMGenUserInfo userInfo) {
        this.UserInfo = userInfo;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenRoomMemberInfo{UserInfo=" + this.UserInfo + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
