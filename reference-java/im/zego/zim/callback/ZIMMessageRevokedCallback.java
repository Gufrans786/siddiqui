package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMMessage;

public interface ZIMMessageRevokedCallback {
    void onMessageRevoked(ZIMMessage message, ZIMError errorInfo);
}
