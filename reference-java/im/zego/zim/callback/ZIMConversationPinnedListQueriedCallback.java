package im.zego.zim.callback;

import im.zego.zim.entity.ZIMConversation;
import im.zego.zim.entity.ZIMError;
import java.util.ArrayList;

public interface ZIMConversationPinnedListQueriedCallback {
    void onConversationPinnedListQueried(ArrayList<ZIMConversation> conversationList, ZIMError errorInfo);
}
