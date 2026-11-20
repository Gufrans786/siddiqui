package im.zego.zim.internal.generated;

final class ZIMGenMessageRootRepliedCountInfo {
    String ConversationID;
    int ConversationType;
    int Count;
    long MessageID;

    public ZIMGenMessageRootRepliedCountInfo() {
    }

    public ZIMGenMessageRootRepliedCountInfo(long messageID, int count, String conversationID, int conversationType) {
        this.MessageID = messageID;
        this.Count = count;
        this.ConversationID = conversationID;
        this.ConversationType = conversationType;
    }

    public long getMessageID() {
        return this.MessageID;
    }

    public void setMessageID(long messageID) {
        this.MessageID = messageID;
    }

    public int getCount() {
        return this.Count;
    }

    public void setCount(int count) {
        this.Count = count;
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

    public String toString() {
        return "ZIMGenMessageRootRepliedCountInfo{MessageID=" + this.MessageID + ",Count=" + this.Count + ",ConversationID=" + this.ConversationID + ",ConversationType=" + this.ConversationType + "}";
    }
}
