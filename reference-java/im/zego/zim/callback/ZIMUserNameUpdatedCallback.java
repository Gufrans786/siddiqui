package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;

public interface ZIMUserNameUpdatedCallback {
    void onUserNameUpdated(String userName, ZIMError errorInfo);
}
