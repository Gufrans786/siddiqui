package im.zego.zim.internal.generated;

public final class ZIMGenMessageRevokeConfig {
    boolean EnableOfflinePush;
    boolean IsNullFromJava;
    ZIMGenPushConfig PushConfig;
    String RevokeExtendedData;

    public ZIMGenMessageRevokeConfig() {
    }

    public ZIMGenMessageRevokeConfig(ZIMGenPushConfig pushConfig, String revokeExtendedData, boolean enableOfflinePush, boolean isNullFromJava) {
        this.PushConfig = pushConfig;
        this.RevokeExtendedData = revokeExtendedData;
        this.EnableOfflinePush = enableOfflinePush;
        this.IsNullFromJava = isNullFromJava;
    }

    public ZIMGenPushConfig getPushConfig() {
        return this.PushConfig;
    }

    public void setPushConfig(ZIMGenPushConfig pushConfig) {
        this.PushConfig = pushConfig;
    }

    public String getRevokeExtendedData() {
        return this.RevokeExtendedData;
    }

    public void setRevokeExtendedData(String revokeExtendedData) {
        this.RevokeExtendedData = revokeExtendedData;
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
        return "ZIMGenMessageRevokeConfig{PushConfig=" + this.PushConfig + ",RevokeExtendedData=" + this.RevokeExtendedData + ",EnableOfflinePush=" + this.EnableOfflinePush + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
