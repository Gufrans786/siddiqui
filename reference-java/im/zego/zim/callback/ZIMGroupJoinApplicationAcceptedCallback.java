package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;

public interface ZIMGroupJoinApplicationAcceptedCallback {
    void onGroupJoinApplicationAccepted(String groupID, String userID, ZIMError errorInfo);
}
