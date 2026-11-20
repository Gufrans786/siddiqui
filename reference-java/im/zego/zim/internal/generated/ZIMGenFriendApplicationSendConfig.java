package im.zego.zim.internal.generated;

import java.util.HashMap;

public final class ZIMGenFriendApplicationSendConfig {
    String Alias;
    HashMap<String, String> Attributes;
    boolean EnableOfflinePush;
    boolean IsNullFromJava;
    ZIMGenPushConfig PushConfig;
    String Wording;

    public ZIMGenFriendApplicationSendConfig() {
    }

    public ZIMGenFriendApplicationSendConfig(String wording, String alias, HashMap<String, String> attributes, ZIMGenPushConfig pushConfig, boolean enableOfflinePush, boolean isNullFromJava) {
        this.Wording = wording;
        this.Alias = alias;
        this.Attributes = attributes;
        this.PushConfig = pushConfig;
        this.EnableOfflinePush = enableOfflinePush;
        this.IsNullFromJava = isNullFromJava;
    }

    public String getWording() {
        return this.Wording;
    }

    public void setWording(String wording) {
        this.Wording = wording;
    }

    public String getAlias() {
        return this.Alias;
    }

    public void setAlias(String alias) {
        this.Alias = alias;
    }

    public HashMap<String, String> getAttributes() {
        return this.Attributes;
    }

    public void setAttributes(HashMap<String, String> attributes) {
        this.Attributes = attributes;
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
        return "ZIMGenFriendApplicationSendConfig{Wording=" + this.Wording + ",Alias=" + this.Alias + ",Attributes=" + this.Attributes + ",PushConfig=" + this.PushConfig + ",EnableOfflinePush=" + this.EnableOfflinePush + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
