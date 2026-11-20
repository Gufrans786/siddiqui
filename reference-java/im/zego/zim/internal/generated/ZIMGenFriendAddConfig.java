package im.zego.zim.internal.generated;

import java.util.HashMap;

public final class ZIMGenFriendAddConfig {
    String Alias;
    HashMap<String, String> Attributes;
    boolean IsNullFromJava;
    String Wording;

    public ZIMGenFriendAddConfig() {
    }

    public ZIMGenFriendAddConfig(String wording, String alias, HashMap<String, String> attributes, boolean isNullFromJava) {
        this.Wording = wording;
        this.Alias = alias;
        this.Attributes = attributes;
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

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenFriendAddConfig{Wording=" + this.Wording + ",Alias=" + this.Alias + ",Attributes=" + this.Attributes + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
