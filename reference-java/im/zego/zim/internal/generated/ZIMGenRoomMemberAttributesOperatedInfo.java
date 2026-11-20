package im.zego.zim.internal.generated;

import java.util.ArrayList;

final class ZIMGenRoomMemberAttributesOperatedInfo {
    ZIMGenRoomMemberAttributesInfo AttributesInfo;
    ArrayList<String> ErrorKeys;

    public ZIMGenRoomMemberAttributesOperatedInfo() {
    }

    public ZIMGenRoomMemberAttributesOperatedInfo(ZIMGenRoomMemberAttributesInfo attributesInfo, ArrayList<String> errorKeys) {
        this.AttributesInfo = attributesInfo;
        this.ErrorKeys = errorKeys;
    }

    public ZIMGenRoomMemberAttributesInfo getAttributesInfo() {
        return this.AttributesInfo;
    }

    public void setAttributesInfo(ZIMGenRoomMemberAttributesInfo attributesInfo) {
        this.AttributesInfo = attributesInfo;
    }

    public ArrayList<String> getErrorKeys() {
        return this.ErrorKeys;
    }

    public void setErrorKeys(ArrayList<String> errorKeys) {
        this.ErrorKeys = errorKeys;
    }

    public String toString() {
        return "ZIMGenRoomMemberAttributesOperatedInfo{AttributesInfo=" + this.AttributesInfo + ",ErrorKeys=" + this.ErrorKeys + "}";
    }
}
