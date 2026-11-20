package im.zego.zim.entity;

import im.zego.zim.enums.ZIMGroupApplicationState;
import im.zego.zim.enums.ZIMGroupApplicationType;

public class ZIMGroupApplicationInfo {
    public ZIMUserInfo applyUser;
    public long createTime;
    public ZIMGroupInfo groupInfo;
    public ZIMGroupMemberSimpleInfo operatedUser;
    public ZIMGroupApplicationState state;
    public ZIMGroupApplicationType type;
    public long updateTime;
    public String wording;
}
