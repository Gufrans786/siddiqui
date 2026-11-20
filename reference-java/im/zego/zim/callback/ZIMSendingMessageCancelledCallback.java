package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;

public interface ZIMSendingMessageCancelledCallback {
    void onSendingMessageCancelled(ZIMError errorInfo);
}
