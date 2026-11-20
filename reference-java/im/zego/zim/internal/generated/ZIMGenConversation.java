package im.zego.zim.internal.generated;

import java.util.ArrayList;

final class ZIMGenConversation {
    String ConversationAlias;
    String ConversationAvatarUrl;
    String ConversationID;
    String ConversationName;
    String Draft;
    boolean GroupIsDisabled;
    long GroupMutedExpiredTime;
    boolean IsNullFromJava;
    boolean IsPinned;
    ZIMGenMessage LastMessage;
    ArrayList<Integer> Marks;
    ArrayList<ZIMGenMessageMentionedInfo> MentionedInfoList;
    int NotificationStatus;
    long OrderKey;
    long PinnedTime;
    int Type;
    int UnreadMessageCount;

    public ZIMGenConversation() {
    }

    public ZIMGenConversation(String conversationID, String conversationName, String conversationAvatarUrl, String conversationAlias, long groupMutedExpiredTime, boolean groupIsDisabled, int type, int unreadMessageCount, ZIMGenMessage lastMessage, long orderKey, int notificationStatus, boolean isPinned, long pinnedTime, ArrayList<ZIMGenMessageMentionedInfo> mentionedInfoList, String draft, ArrayList<Integer> marks, boolean isNullFromJava) {
        this.ConversationID = conversationID;
        this.ConversationName = conversationName;
        this.ConversationAvatarUrl = conversationAvatarUrl;
        this.ConversationAlias = conversationAlias;
        this.GroupMutedExpiredTime = groupMutedExpiredTime;
        this.GroupIsDisabled = groupIsDisabled;
        this.Type = type;
        this.UnreadMessageCount = unreadMessageCount;
        this.LastMessage = lastMessage;
        this.OrderKey = orderKey;
        this.NotificationStatus = notificationStatus;
        this.IsPinned = isPinned;
        this.PinnedTime = pinnedTime;
        this.MentionedInfoList = mentionedInfoList;
        this.Draft = draft;
        this.Marks = marks;
        this.IsNullFromJava = isNullFromJava;
    }

    public String getConversationID() {
        return this.ConversationID;
    }

    public void setConversationID(String conversationID) {
        this.ConversationID = conversationID;
    }

    public String getConversationName() {
        return this.ConversationName;
    }

    public void setConversationName(String conversationName) {
        this.ConversationName = conversationName;
    }

    public String getConversationAvatarUrl() {
        return this.ConversationAvatarUrl;
    }

    public void setConversationAvatarUrl(String conversationAvatarUrl) {
        this.ConversationAvatarUrl = conversationAvatarUrl;
    }

    public String getConversationAlias() {
        return this.ConversationAlias;
    }

    public void setConversationAlias(String conversationAlias) {
        this.ConversationAlias = conversationAlias;
    }

    public long getGroupMutedExpiredTime() {
        return this.GroupMutedExpiredTime;
    }

    public void setGroupMutedExpiredTime(long groupMutedExpiredTime) {
        this.GroupMutedExpiredTime = groupMutedExpiredTime;
    }

    public boolean getGroupIsDisabled() {
        return this.GroupIsDisabled;
    }

    public void setGroupIsDisabled(boolean groupIsDisabled) {
        this.GroupIsDisabled = groupIsDisabled;
    }

    public int getType() {
        return this.Type;
    }

    public void setType(int type) {
        this.Type = type;
    }

    public int getUnreadMessageCount() {
        return this.UnreadMessageCount;
    }

    public void setUnreadMessageCount(int unreadMessageCount) {
        this.UnreadMessageCount = unreadMessageCount;
    }

    public ZIMGenMessage getLastMessage() {
        return this.LastMessage;
    }

    public void setLastMessage(ZIMGenMessage lastMessage) {
        this.LastMessage = lastMessage;
    }

    public long getOrderKey() {
        return this.OrderKey;
    }

    public void setOrderKey(long orderKey) {
        this.OrderKey = orderKey;
    }

    public int getNotificationStatus() {
        return this.NotificationStatus;
    }

    public void setNotificationStatus(int notificationStatus) {
        this.NotificationStatus = notificationStatus;
    }

    public boolean getIsPinned() {
        return this.IsPinned;
    }

    public void setIsPinned(boolean isPinned) {
        this.IsPinned = isPinned;
    }

    public long getPinnedTime() {
        return this.PinnedTime;
    }

    public void setPinnedTime(long pinnedTime) {
        this.PinnedTime = pinnedTime;
    }

    public ArrayList<ZIMGenMessageMentionedInfo> getMentionedInfoList() {
        return this.MentionedInfoList;
    }

    public void setMentionedInfoList(ArrayList<ZIMGenMessageMentionedInfo> mentionedInfoList) {
        this.MentionedInfoList = mentionedInfoList;
    }

    public String getDraft() {
        return this.Draft;
    }

    public void setDraft(String draft) {
        this.Draft = draft;
    }

    public ArrayList<Integer> getMarks() {
        return this.Marks;
    }

    public void setMarks(ArrayList<Integer> marks) {
        this.Marks = marks;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenConversation{ConversationID=" + this.ConversationID + ",ConversationName=" + this.ConversationName + ",ConversationAvatarUrl=" + this.ConversationAvatarUrl + ",ConversationAlias=" + this.ConversationAlias + ",GroupMutedExpiredTime=" + this.GroupMutedExpiredTime + ",GroupIsDisabled=" + this.GroupIsDisabled + ",Type=" + this.Type + ",UnreadMessageCount=" + this.UnreadMessageCount + ",LastMessage=" + this.LastMessage + ",OrderKey=" + this.OrderKey + ",NotificationStatus=" + this.NotificationStatus + ",IsPinned=" + this.IsPinned + ",PinnedTime=" + this.PinnedTime + ",MentionedInfoList=" + this.MentionedInfoList + ",Draft=" + this.Draft + ",Marks=" + this.Marks + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
