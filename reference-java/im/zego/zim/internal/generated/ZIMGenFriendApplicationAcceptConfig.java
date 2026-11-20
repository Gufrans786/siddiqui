package im.zego.zim.internal.generated;

import java.util.HashMap;

public final class ZIMGenFriendApplicationAcceptConfig {
    boolean EnableOfflinePush;
    String FriendAlias;
    HashMap<String, String> FriendAttributes;
    boolean IsNullFromJava;
    ZIMGenPushConfig PushConfig;

    public ZIMGenFriendApplicationAcceptConfig() {
    }

    public ZIMGenFriendApplicationAcceptConfig(String friendAlias, HashMap<String, String> friendAttributes, ZIMGenPushConfig pushConfig, boolean enableOfflinePush, boolean isNullFromJava) {
        this.FriendAlias = friendAlias;
        this.FriendAttributes = friendAttributes;
        this.PushConfig = pushConfig;
        this.EnableOfflinePush = enableOfflinePush;
        this.IsNullFromJava = isNullFromJava;
    }

    public String getFriendAlias() {
        return this.FriendAlias;
    }

    public void setFriendAlias(String friendAlias) {
        this.FriendAlias = friendAlias;
    }

    public HashMap<String, String> getFriendAttributes() {
        return this.FriendAttributes;
    }

    public void setFriendAttributes(HashMap<String, String> friendAttributes) {
        this.FriendAttributes = friendAttributes;
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
        return "ZIMGenFriendApplicationAcceptConfig{FriendAlias=" + this.FriendAlias + ",FriendAttributes=" + this.FriendAttributes + ",PushConfig=" + this.PushConfig + ",EnableOfflinePush=" + this.EnableOfflinePush + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
