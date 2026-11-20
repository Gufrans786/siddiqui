package im.zego.zim.entity;

import im.zego.zim.enums.ZIMFriendApplicationState;
import im.zego.zim.enums.ZIMFriendApplicationType;

public class ZIMFriendApplicationInfo {
    public long createTime;
    public long updateTime;
    public String wording = "";
    public ZIMFriendApplicationType type = ZIMFriendApplicationType.UNKNOWN;
    public ZIMFriendApplicationState state = ZIMFriendApplicationState.UNKNOWN;
    public ZIMUserInfo applyUser = new ZIMUserInfo();
}
