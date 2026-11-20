package im.zego.zim.internal.generated;

final class ZIMGenFullUserInfo {
    ZIMGenUserInfo BaseInfo;
    String ExtendedData;
    boolean IsNullFromJava;
    String UserAvatarUrl;

    public ZIMGenFullUserInfo() {
    }

    public ZIMGenFullUserInfo(ZIMGenUserInfo baseInfo, String userAvatarUrl, String extendedData, boolean isNullFromJava) {
        this.BaseInfo = baseInfo;
        this.UserAvatarUrl = userAvatarUrl;
        this.ExtendedData = extendedData;
        this.IsNullFromJava = isNullFromJava;
    }

    public ZIMGenUserInfo getBaseInfo() {
        return this.BaseInfo;
    }

    public void setBaseInfo(ZIMGenUserInfo baseInfo) {
        this.BaseInfo = baseInfo;
    }

    public String getUserAvatarUrl() {
        return this.UserAvatarUrl;
    }

    public void setUserAvatarUrl(String userAvatarUrl) {
        this.UserAvatarUrl = userAvatarUrl;
    }

    public String getExtendedData() {
        return this.ExtendedData;
    }

    public void setExtendedData(String extendedData) {
        this.ExtendedData = extendedData;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenFullUserInfo{BaseInfo=" + this.BaseInfo + ",UserAvatarUrl=" + this.UserAvatarUrl + ",ExtendedData=" + this.ExtendedData + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
