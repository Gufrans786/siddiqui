package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;

public interface ZIMGroupJoinApplicationSentCallback {
    void onGroupJoinApplicationSent(String groupID, ZIMError errorInfo);
}
