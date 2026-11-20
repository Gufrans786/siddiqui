package im.zego.zim.internal.generated;

public final class ZIMGenGroupInviteApplicationAcceptConfig {
    boolean EnableOfflinePush;
    boolean IsNullFromJava;
    ZIMGenPushConfig PushConfig;

    public ZIMGenGroupInviteApplicationAcceptConfig() {
    }

    public ZIMGenGroupInviteApplicationAcceptConfig(ZIMGenPushConfig pushConfig, boolean enableOfflinePush, boolean isNullFromJava) {
        this.PushConfig = pushConfig;
        this.EnableOfflinePush = enableOfflinePush;
        this.IsNullFromJava = isNullFromJava;
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
        return "ZIMGenGroupInviteApplicationAcceptConfig{PushConfig=" + this.PushConfig + ",EnableOfflinePush=" + this.EnableOfflinePush + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
