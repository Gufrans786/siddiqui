package im.zego.zim.entity;

import im.zego.zim.enums.ZIMGroupBeInviteMode;
import im.zego.zim.enums.ZIMGroupInviteMode;
import im.zego.zim.enums.ZIMGroupJoinMode;

public class ZIMGroupVerifyInfo {
    public ZIMGroupJoinMode joinMode = ZIMGroupJoinMode.ANY;
    public ZIMGroupInviteMode inviteMode = ZIMGroupInviteMode.ANY;
    public ZIMGroupBeInviteMode beInviteMode = ZIMGroupBeInviteMode.NONE;
}
