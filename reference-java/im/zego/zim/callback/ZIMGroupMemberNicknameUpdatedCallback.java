package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;

public interface ZIMGroupMemberNicknameUpdatedCallback {
    void onGroupMemberNicknameUpdated(String groupID, String forUserID, String nickname, ZIMError errorInfo);
}
