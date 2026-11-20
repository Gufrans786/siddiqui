package im.zego.zim.entity;

import java.util.HashMap;

public class ZIMFriendInfo extends ZIMUserInfo {
    public long createTime;
    public String friendAlias;
    public HashMap<String, String> friendAttributes = new HashMap<>();
    public String wording;
}
