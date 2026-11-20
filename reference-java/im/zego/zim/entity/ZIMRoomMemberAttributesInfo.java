package im.zego.zim.entity;

import java.util.HashMap;

public class ZIMRoomMemberAttributesInfo {
    public HashMap<String, String> attributes;
    public String userID;

    public String toString() {
        return "ZIMRoomMemberAttributesInfo{userID='" + this.userID + "', attributes=" + this.attributes + '}';
    }
}
