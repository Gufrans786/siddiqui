package im.zego.zim.entity;

import im.zego.zim.enums.ZIMConversationPinnedFilter;
import im.zego.zim.enums.ZIMConversationType;
import java.util.ArrayList;

public class ZIMConversationFilterOption {
    public ArrayList<Integer> marks = new ArrayList<>();
    public ArrayList<ZIMConversationType> conversationTypes = new ArrayList<>();
    public boolean isOnlyUnreadConversation = false;
    public ZIMConversationPinnedFilter pinnedFilter = ZIMConversationPinnedFilter.ALL;

    public String toString() {
        return "ZIMConversationFilterOption {marks = " + this.marks + ", conversationTypes = " + this.conversationTypes + "isOnlyUnreadConversation = " + this.isOnlyUnreadConversation + '}';
    }
}
