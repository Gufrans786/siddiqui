package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;

public interface ZIMGroupAvatarUrlUpdatedCallback {
    void onGroupAvatarUrlUpdated(String groupID, String groupAvatarUrl, ZIMError errorInfo);
}
