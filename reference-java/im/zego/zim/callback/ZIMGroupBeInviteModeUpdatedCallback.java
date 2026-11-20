package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.enums.ZIMGroupBeInviteMode;

public interface ZIMGroupBeInviteModeUpdatedCallback {
    void onGroupBeInviteModeUpdated(String groupID, ZIMGroupBeInviteMode mode, ZIMError errorInfo);
}
