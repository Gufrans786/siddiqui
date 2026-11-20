package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMMessage;

public interface ZIMMessageInsertedCallback {
    void onMessageInserted(ZIMMessage message, ZIMError errorInfo);
}
