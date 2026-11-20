package im.zego.zim.internal.generated;

import java.util.HashMap;

final class ZIMGenRoomAttributesUpdateInfo {
    int Action;
    HashMap<String, String> RoomAttributes;

    public ZIMGenRoomAttributesUpdateInfo() {
    }

    public ZIMGenRoomAttributesUpdateInfo(int action, HashMap<String, String> roomAttributes) {
        this.Action = action;
        this.RoomAttributes = roomAttributes;
    }

    public int getAction() {
        return this.Action;
    }

    public void setAction(int action) {
        this.Action = action;
    }

    public HashMap<String, String> getRoomAttributes() {
        return this.RoomAttributes;
    }

    public void setRoomAttributes(HashMap<String, String> roomAttributes) {
        this.RoomAttributes = roomAttributes;
    }

    public String toString() {
        return "ZIMGenRoomAttributesUpdateInfo{Action=" + this.Action + ",RoomAttributes=" + this.RoomAttributes + "}";
    }
}
