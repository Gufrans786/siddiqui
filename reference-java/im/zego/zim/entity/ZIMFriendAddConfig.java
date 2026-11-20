package im.zego.zim.entity;

import java.util.HashMap;

public class ZIMFriendAddConfig {
    public String wording = "";
    public String friendAlias = "";
    public HashMap<String, String> friendAttributes = new HashMap<>();

    public String toString() {
        return "ZIMFriendAddConfig{wording='" + this.wording + "', alias='" + this.friendAlias + '}';
    }
}
