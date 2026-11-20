package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;

public interface ZIMConversationsAllDeletedCallback {
    void onConversationsAllDeleted(ZIMError errorInfo);
}
