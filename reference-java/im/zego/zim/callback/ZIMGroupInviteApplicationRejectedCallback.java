package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;

public interface ZIMGroupInviteApplicationRejectedCallback {
    void onGroupInviteApplicationRejected(String groupID, String inviterUserID, ZIMError errorInfo);
}
