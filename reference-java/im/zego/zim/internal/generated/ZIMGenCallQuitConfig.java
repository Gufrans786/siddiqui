package im.zego.zim.internal.generated;

public final class ZIMGenCallQuitConfig {
    boolean EnableOfflinePush;
    String ExtendedData;
    boolean IsNullFromJava;
    ZIMGenPushConfig PushConfig;

    public ZIMGenCallQuitConfig() {
    }

    public ZIMGenCallQuitConfig(String extendedData, ZIMGenPushConfig pushConfig, boolean enableOfflinePush, boolean isNullFromJava) {
        this.ExtendedData = extendedData;
        this.PushConfig = pushConfig;
        this.EnableOfflinePush = enableOfflinePush;
        this.IsNullFromJava = isNullFromJava;
    }

    public String getExtendedData() {
        return this.ExtendedData;
    }

    public void setExtendedData(String extendedData) {
        this.ExtendedData = extendedData;
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

    public String toString() {
        return "ZIMGenCallQuitConfig{ExtendedData=" + this.ExtendedData + ",PushConfig=" + this.PushConfig + ",EnableOfflinePush=" + this.EnableOfflinePush + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
