package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.enums.ZIMConversationType;

public interface ZIMConversationUnreadMessageCountClearedCallback {
    void onConversationUnreadMessageCountCleared(String conversationID, ZIMConversationType conversationType, ZIMError errorInfo);
}
