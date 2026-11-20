package im.zego.zim.entity;

import im.zego.zim.enums.ZIMConversationNotificationStatus;
import im.zego.zim.enums.ZIMConversationType;
import java.io.Serializable;
import java.util.ArrayList;

public class ZIMConversation implements Serializable {
    public String conversationAlias;
    public String conversationAvatarUrl;
    public String conversationID;
    public String conversationName;
    public String draft;
    public boolean isPinned;
    public ZIMMessage lastMessage;
    public ZIMConversationNotificationStatus notificationStatus;
    public long orderKey;
    public long pinnedTime;
    public ZIMConversationType type;
    public int unreadMessageCount;
    public ArrayList<ZIMMessageMentionedInfo> mentionedInfoList = new ArrayList<>();
    public ArrayList<Integer> marks = new ArrayList<>();

    public String toString() {
        return "ZIMConversation{conversationID='" + this.conversationID + "', conversationName='" + this.conversationName + "', conversationAvatarUrl='" + this.conversationAvatarUrl + "', type=" + this.type + ", unreadMessageCount=" + this.unreadMessageCount + ", lastMessage=" + this.lastMessage + ", orderKey=" + this.orderKey + ", notificationStatus=" + this.notificationStatus + ", isPinned=" + this.isPinned + ", mentionedInfoList=" + this.mentionedInfoList + ", draft='" + this.draft + ", marks = " + this.marks + '}';
    }
}
