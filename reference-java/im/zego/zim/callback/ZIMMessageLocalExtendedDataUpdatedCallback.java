package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMMessage;

public interface ZIMMessageLocalExtendedDataUpdatedCallback {
    void onMessageExtendedDataUpdated(ZIMMessage message, ZIMError errorInfo);
}
