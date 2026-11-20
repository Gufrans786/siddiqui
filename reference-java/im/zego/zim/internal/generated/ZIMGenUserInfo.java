package im.zego.zim.internal.generated;

final class ZIMGenUserInfo {
    boolean IsNullFromJava;
    String UserAvatarUrl;
    String UserExtendedData;
    String UserID;
    String UserName;

    public ZIMGenUserInfo() {
    }

    public ZIMGenUserInfo(String userID, String userName, String userAvatarUrl, String userExtendedData, boolean isNullFromJava) {
        this.UserID = userID;
        this.UserName = userName;
        this.UserAvatarUrl = userAvatarUrl;
        this.UserExtendedData = userExtendedData;
        this.IsNullFromJava = isNullFromJava;
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

    public String getUserAvatarUrl() {
        return this.UserAvatarUrl;
    }

    public void setUserAvatarUrl(String userAvatarUrl) {
        this.UserAvatarUrl = userAvatarUrl;
    }

    public String getUserExtendedData() {
        return this.UserExtendedData;
    }

    public void setUserExtendedData(String userExtendedData) {
        this.UserExtendedData = userExtendedData;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenUserInfo{UserID=" + this.UserID + ",UserName=" + this.UserName + ",UserAvatarUrl=" + this.UserAvatarUrl + ",UserExtendedData=" + this.UserExtendedData + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
