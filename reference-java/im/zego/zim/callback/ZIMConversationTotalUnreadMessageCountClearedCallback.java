package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;

public interface ZIMConversationTotalUnreadMessageCountClearedCallback {
    void onConversationTotalUnreadMessageCountCleared(ZIMError errorInfo);
}
