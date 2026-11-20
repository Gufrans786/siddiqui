package im.zego.zim.entity;

import im.zego.zim.enums.ZIMGroupBeInviteMode;
import im.zego.zim.enums.ZIMGroupInviteMode;
import im.zego.zim.enums.ZIMGroupJoinMode;
import java.util.HashMap;

public class ZIMGroupAdvancedConfig {
    public String groupNotice = "";
    public HashMap<String, String> groupAttributes = null;
    public ZIMGroupJoinMode joinMode = ZIMGroupJoinMode.ANY;
    public ZIMGroupInviteMode inviteMode = ZIMGroupInviteMode.ANY;
    public ZIMGroupBeInviteMode beInviteMode = ZIMGroupBeInviteMode.NONE;
    public int maxMemberCount = 0;
}
