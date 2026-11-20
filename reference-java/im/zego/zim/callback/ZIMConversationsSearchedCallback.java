package im.zego.zim.callback;

import im.zego.zim.entity.ZIMConversationSearchInfo;
import im.zego.zim.entity.ZIMError;
import java.util.ArrayList;

public interface ZIMConversationsSearchedCallback {
    void onConversationsSearched(ArrayList<ZIMConversationSearchInfo> conversationSearchInfoList, int nextFlag, ZIMError errorInfo);
}
