package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMGroupFullInfo;

public interface ZIMGroupInviteApplicationAcceptedCallback {
    void onGroupInviteApplicationAccepted(ZIMGroupFullInfo groupInfo, String inviterUserID, ZIMError errorInfo);
}
