package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;

public interface ZIMMessagePinnedCallback {
    void onMessagePinned(ZIMError errorInfo);
}
