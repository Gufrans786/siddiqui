package im.zego.zim.internal.generated;

final class ZIMGenMessageReceiptInfo {
    String ConversationID;
    int ConversationType;
    boolean IsSelfOperated;
    long MessageId;
    int ReadMemberCount;
    long ReadTime;
    int Status;
    int UnreadMemberCount;

    public ZIMGenMessageReceiptInfo() {
    }

    public ZIMGenMessageReceiptInfo(int status, long messageId, String conversationID, int conversationType, int readMemberCount, int unreadMemberCount, boolean isSelfOperated, long readTime) {
        this.Status = status;
        this.MessageId = messageId;
        this.ConversationID = conversationID;
        this.ConversationType = conversationType;
        this.ReadMemberCount = readMemberCount;
        this.UnreadMemberCount = unreadMemberCount;
        this.IsSelfOperated = isSelfOperated;
        this.ReadTime = readTime;
    }

    public int getStatus() {
        return this.Status;
    }

    public void setStatus(int status) {
        this.Status = status;
    }

    public long getMessageId() {
        return this.MessageId;
    }

    public void setMessageId(long messageId) {
        this.MessageId = messageId;
    }

    public String getConversationID() {
        return this.ConversationID;
    }

    public void setConversationID(String conversationID) {
        this.ConversationID = conversationID;
    }

    public int getConversationType() {
        return this.ConversationType;
    }

    public void setConversationType(int conversationType) {
        this.ConversationType = conversationType;
    }

    public int getReadMemberCount() {
        return this.ReadMemberCount;
    }

    public void setReadMemberCount(int readMemberCount) {
        this.ReadMemberCount = readMemberCount;
    }

    public int getUnreadMemberCount() {
        return this.UnreadMemberCount;
    }

    public void setUnreadMemberCount(int unreadMemberCount) {
        this.UnreadMemberCount = unreadMemberCount;
    }

    public boolean getIsSelfOperated() {
        return this.IsSelfOperated;
    }

    public void setIsSelfOperated(boolean isSelfOperated) {
        this.IsSelfOperated = isSelfOperated;
    }

    public long getReadTime() {
        return this.ReadTime;
    }

    public void setReadTime(long readTime) {
        this.ReadTime = readTime;
    }

    public String toString() {
        return "ZIMGenMessageReceiptInfo{Status=" + this.Status + ",MessageId=" + this.MessageId + ",ConversationID=" + this.ConversationID + ",ConversationType=" + this.ConversationType + ",ReadMemberCount=" + this.ReadMemberCount + ",UnreadMemberCount=" + this.UnreadMemberCount + ",IsSelfOperated=" + this.IsSelfOperated + ",ReadTime=" + this.ReadTime + "}";
    }
}
