package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;

public interface ZIMUserAvatarUrlUpdatedCallback {
    void onUserAvatarUrlUpdated(String userAvatarUrl, ZIMError errorInfo);
}
