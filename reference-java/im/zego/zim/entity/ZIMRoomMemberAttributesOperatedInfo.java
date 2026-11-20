package im.zego.zim.entity;

import java.util.ArrayList;

public class ZIMRoomMemberAttributesOperatedInfo {
    public ZIMRoomMemberAttributesInfo attributesInfo;
    public ArrayList<String> errorKeys;

    public String toString() {
        return "ZIMRoomMemberAttributesOperatedInfo{attributesInfo=" + this.attributesInfo + ", errorKeys=" + this.errorKeys + '}';
    }
}
