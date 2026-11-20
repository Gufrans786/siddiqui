package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;

public interface ZIMUserCustomStatusUpdatedCallback {
    void onUserCustomStatusUpdated(String customStatus, ZIMError errorInfo);
}
