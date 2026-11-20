package im.zego.zim.entity;

import im.zego.zim.enums.ZIMRoomAttributesUpdateAction;
import java.util.HashMap;

public class ZIMRoomAttributesUpdateInfo {
    public ZIMRoomAttributesUpdateAction action;
    public HashMap<String, String> roomAttributes;

    public String toString() {
        return "ZIMRoomAttributesUpdateInfo{action=" + this.action + ", roomAttributes=" + this.roomAttributes + '}';
    }
}
