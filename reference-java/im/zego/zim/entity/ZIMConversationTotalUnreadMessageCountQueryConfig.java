package im.zego.zim.entity;

import im.zego.zim.enums.ZIMConversationType;
import java.util.ArrayList;

public class ZIMConversationTotalUnreadMessageCountQueryConfig {
    public ArrayList<Integer> marks = new ArrayList<>();
    public ArrayList<ZIMConversationType> conversationTypes = new ArrayList<>();

    public String toString() {
        return "ZIMConversationTotalUnreadMessageCountQueryConfig{marks = " + this.marks + ", conversationTypes = " + this.conversationTypes + '}';
    }
}
