package im.zego.zim.internal.generated;

public final class ZIMGenGroupInviteApplicationSendConfig {
    boolean EnableOfflinePush;
    boolean IsNullFromJava;
    ZIMGenPushConfig PushConfig;
    String Wording;

    public ZIMGenGroupInviteApplicationSendConfig() {
    }

    public ZIMGenGroupInviteApplicationSendConfig(ZIMGenPushConfig pushConfig, String wording, boolean enableOfflinePush, boolean isNullFromJava) {
        this.PushConfig = pushConfig;
        this.Wording = wording;
        this.EnableOfflinePush = enableOfflinePush;
        this.IsNullFromJava = isNullFromJava;
    }

    public ZIMGenPushConfig getPushConfig() {
        return this.PushConfig;
    }

    public void setPushConfig(ZIMGenPushConfig pushConfig) {
        this.PushConfig = pushConfig;
    }

    public String getWording() {
        return this.Wording;
    }

    public void setWording(String wording) {
        this.Wording = wording;
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
        return "ZIMGenGroupInviteApplicationSendConfig{PushConfig=" + this.PushConfig + ",Wording=" + this.Wording + ",EnableOfflinePush=" + this.EnableOfflinePush + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
