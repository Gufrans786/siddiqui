package im.zego.zim.callback;

import im.zego.zim.entity.ZIMConversation;
import im.zego.zim.entity.ZIMError;

public interface ZIMConversationQueriedCallback {
    void onConversationQueried(ZIMConversation conversation, ZIMError errorInfo);
}
