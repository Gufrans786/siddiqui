package im.zego.zim.internal.generated;

public final class ZIMGenCallInviteConfig {
    boolean EnableNotReceivedCheck;
    boolean EnableOfflinePush;
    String ExtendedData;
    boolean IsNullFromJava;
    int Mode;
    ZIMGenPushConfig PushConfig;
    int Timeout;

    public ZIMGenCallInviteConfig() {
    }

    public ZIMGenCallInviteConfig(int timeout, String extendedData, int mode, ZIMGenPushConfig pushConfig, boolean enableOfflinePush, boolean isNullFromJava, boolean enableNotReceivedCheck) {
        this.Timeout = timeout;
        this.ExtendedData = extendedData;
        this.Mode = mode;
        this.PushConfig = pushConfig;
        this.EnableOfflinePush = enableOfflinePush;
        this.IsNullFromJava = isNullFromJava;
        this.EnableNotReceivedCheck = enableNotReceivedCheck;
    }

    public int getTimeout() {
        return this.Timeout;
    }

    public void setTimeout(int timeout) {
        this.Timeout = timeout;
    }

    public String getExtendedData() {
        return this.ExtendedData;
    }

    public void setExtendedData(String extendedData) {
        this.ExtendedData = extendedData;
    }

    public int getMode() {
        return this.Mode;
    }

    public void setMode(int mode) {
        this.Mode = mode;
    }

    public ZIMGenPushConfig getPushConfig() {
        return this.PushConfig;
    }

    public void setPushConfig(ZIMGenPushConfig pushConfig) {
        this.PushConfig = pushConfig;
    }

    public boolean getEnableOfflinePush() {
        return this.EnableOfflinePush;
    }

    public void setEnableOfflinePush(boolean enableOfflinePush) {
        this.EnableOfflinePush = enableOfflinePush;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public boolean getEnableNotReceivedCheck() {
        return this.EnableNotReceivedCheck;
    }

    public void setEnableNotReceivedCheck(boolean enableNotReceivedCheck) {
        this.EnableNotReceivedCheck = enableNotReceivedCheck;
    }

    public String toString() {
        return "ZIMGenCallInviteConfig{Timeout=" + this.Timeout + ",ExtendedData=" + this.ExtendedData + ",Mode=" + this.Mode + ",PushConfig=" + this.PushConfig + ",EnableOfflinePush=" + this.EnableOfflinePush + ",IsNullFromJava=" + this.IsNullFromJava + ",EnableNotReceivedCheck=" + this.EnableNotReceivedCheck + "}";
    }
}
