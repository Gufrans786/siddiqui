package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.enums.ZIMGroupInviteMode;

public interface ZIMGroupInviteModeUpdatedCallback {
    void onGroupInviteModeUpdated(String groupID, ZIMGroupInviteMode mode, ZIMError errorInfo);
}
