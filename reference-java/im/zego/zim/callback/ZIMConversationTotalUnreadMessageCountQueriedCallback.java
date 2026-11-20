package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;

public interface ZIMConversationTotalUnreadMessageCountQueriedCallback {
    void onConversationTotalUnreadMessageCountQueried(int unreadMessageCount, ZIMError errorInfo);
}
