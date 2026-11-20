package im.zego.zim.internal.generated;

public final class ZIMGenLoginConfig {
    String CustomStatus;
    boolean IsNullFromJava;
    boolean IsOfflineLogin;
    String Token;
    String UserName;

    public ZIMGenLoginConfig() {
    }

    public ZIMGenLoginConfig(String userName, String token, boolean isOfflineLogin, String customStatus, boolean isNullFromJava) {
        this.UserName = userName;
        this.Token = token;
        this.IsOfflineLogin = isOfflineLogin;
        this.CustomStatus = customStatus;
        this.IsNullFromJava = isNullFromJava;
    }

    public String getUserName() {
        return this.UserName;
    }

    public void setUserName(String userName) {
        this.UserName = userName;
    }

    public String getToken() {
        return this.Token;
    }

    public void setToken(String token) {
        this.Token = token;
    }

    public boolean getIsOfflineLogin() {
        return this.IsOfflineLogin;
    }

    public void setIsOfflineLogin(boolean isOfflineLogin) {
        this.IsOfflineLogin = isOfflineLogin;
    }

    public String getCustomStatus() {
        return this.CustomStatus;
    }

    public void setCustomStatus(String customStatus) {
        this.CustomStatus = customStatus;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenLoginConfig{UserName=" + this.UserName + ",Token=" + this.Token + ",IsOfflineLogin=" + this.IsOfflineLogin + ",CustomStatus=" + this.CustomStatus + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
