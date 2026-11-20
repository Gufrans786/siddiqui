package im.zego.zim.internal.generated;

final class ZIMGenMessageRepliedInfo {
    boolean IsNullFromJava;
    long MessageID;
    ZIMGenMessageLiteInfo MessageInfo;
    long MessageSeq;
    String SenderUserID;
    long SentTime;
    int State;

    public ZIMGenMessageRepliedInfo() {
    }

    public ZIMGenMessageRepliedInfo(int state, ZIMGenMessageLiteInfo messageInfo, String senderUserID, long sentTime, long messageID, long messageSeq, boolean isNullFromJava) {
        this.State = state;
        this.MessageInfo = messageInfo;
        this.SenderUserID = senderUserID;
        this.SentTime = sentTime;
        this.MessageID = messageID;
        this.MessageSeq = messageSeq;
        this.IsNullFromJava = isNullFromJava;
    }

    public int getState() {
        return this.State;
    }

    public void setState(int state) {
        this.State = state;
    }

    public ZIMGenMessageLiteInfo getMessageInfo() {
        return this.MessageInfo;
    }

    public void setMessageInfo(ZIMGenMessageLiteInfo messageInfo) {
        this.MessageInfo = messageInfo;
    }

    public String getSenderUserID() {
        return this.SenderUserID;
    }

    public void setSenderUserID(String senderUserID) {
        this.SenderUserID = senderUserID;
    }

    public long getSentTime() {
        return this.SentTime;
    }

    public void setSentTime(long sentTime) {
        this.SentTime = sentTime;
    }

    public long getMessageID() {
        return this.MessageID;
    }

    public void setMessageID(long messageID) {
        this.MessageID = messageID;
    }

    public long getMessageSeq() {
        return this.MessageSeq;
    }

    public void setMessageSeq(long messageSeq) {
        this.MessageSeq = messageSeq;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenMessageRepliedInfo{State=" + this.State + ",MessageInfo=" + this.MessageInfo + ",SenderUserID=" + this.SenderUserID + ",SentTime=" + this.SentTime + ",MessageID=" + this.MessageID + ",MessageSeq=" + this.MessageSeq + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
