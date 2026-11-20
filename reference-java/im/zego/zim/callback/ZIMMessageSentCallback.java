package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMMessage;

public interface ZIMMessageSentCallback {
    void onMessageAttached(ZIMMessage message);

    void onMessageSent(ZIMMessage message, ZIMError errorInfo);
}
