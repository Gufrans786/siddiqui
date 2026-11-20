package im.zego.zim.entity;

import java.util.HashMap;

public class ZIMFriendApplicationSendConfig {
    public ZIMPushConfig pushConfig;
    public String wording = "";
    public String friendAlias = "";
    public HashMap<String, String> friendAttributes = new HashMap<>();

    public String toString() {
        return "ZIMFriendApplicationSendConfig{wording='" + this.wording + "', alias='" + this.friendAlias + '}';
    }
}
