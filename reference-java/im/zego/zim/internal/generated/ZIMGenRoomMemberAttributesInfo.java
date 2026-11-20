package im.zego.zim.internal.generated;

import java.util.HashMap;

final class ZIMGenRoomMemberAttributesInfo {
    HashMap<String, String> Attributes;
    boolean IsNullFromJava;
    String UserId;

    public ZIMGenRoomMemberAttributesInfo() {
    }

    public ZIMGenRoomMemberAttributesInfo(String userId, HashMap<String, String> attributes, boolean isNullFromJava) {
        this.UserId = userId;
        this.Attributes = attributes;
        this.IsNullFromJava = isNullFromJava;
    }

    public String getUserId() {
        return this.UserId;
    }

    public void setUserId(String userId) {
        this.UserId = userId;
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
        return "ZIMGenRoomMemberAttributesInfo{UserId=" + this.UserId + ",Attributes=" + this.Attributes + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
