package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;

public interface ZIMGroupJoinApplicationRejectedCallback {
    void onGroupJoinApplicationRejected(String groupID, String userID, ZIMError errorInfo);
}
