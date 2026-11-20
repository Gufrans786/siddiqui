package im.zego.zim.internal.generated;

public final class ZIMGenGroupJoinApplicationSendConfig {
    boolean EnableOfflinePush;
    boolean IsNullFromJava;
    ZIMGenPushConfig PushConfig;
    String Wording;

    public ZIMGenGroupJoinApplicationSendConfig() {
    }

    public ZIMGenGroupJoinApplicationSendConfig(ZIMGenPushConfig pushConfig, boolean enableOfflinePush, String wording, boolean isNullFromJava) {
        this.PushConfig = pushConfig;
        this.EnableOfflinePush = enableOfflinePush;
        this.Wording = wording;
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

    public String getWording() {
        return this.Wording;
    }

    public void setWording(String wording) {
        this.Wording = wording;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenGroupJoinApplicationSendConfig{PushConfig=" + this.PushConfig + ",EnableOfflinePush=" + this.EnableOfflinePush + ",Wording=" + this.Wording + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
