package im.zego.zim.internal.generated;

import java.util.HashMap;

final class ZIMGenGroupAttributesUpdateInfo {
    int Action;
    HashMap<String, String> GroupAttributes;
    boolean IsNullFromJava;

    public ZIMGenGroupAttributesUpdateInfo() {
    }

    public ZIMGenGroupAttributesUpdateInfo(int action, HashMap<String, String> groupAttributes, boolean isNullFromJava) {
        this.Action = action;
        this.GroupAttributes = groupAttributes;
        this.IsNullFromJava = isNullFromJava;
    }

    public int getAction() {
        return this.Action;
    }

    public void setAction(int action) {
        this.Action = action;
    }

    public HashMap<String, String> getGroupAttributes() {
        return this.GroupAttributes;
    }

    public void setGroupAttributes(HashMap<String, String> groupAttributes) {
        this.GroupAttributes = groupAttributes;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenGroupAttributesUpdateInfo{Action=" + this.Action + ",GroupAttributes=" + this.GroupAttributes + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
