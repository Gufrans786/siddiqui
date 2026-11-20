package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;

public interface ZIMGroupMemberRoleUpdatedCallback {
    void onGroupMemberRoleUpdated(String groupID, String forUserID, int role, ZIMError errorInfo);
}
