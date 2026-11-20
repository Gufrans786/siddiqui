package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;

public interface ZIMConversationMessagesAllDeletedCallback {
    void onConversationMessagesAllDeleted(ZIMError errorInfo);
}
