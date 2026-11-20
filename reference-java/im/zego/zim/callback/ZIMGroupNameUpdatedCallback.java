package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;

public interface ZIMGroupNameUpdatedCallback {
    void onGroupNameUpdated(String groupID, String groupName, ZIMError errorInfo);
}
