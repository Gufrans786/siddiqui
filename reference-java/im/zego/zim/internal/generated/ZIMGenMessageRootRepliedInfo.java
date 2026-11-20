package im.zego.zim.internal.generated;

final class ZIMGenMessageRootRepliedInfo {
    ZIMGenMessage Message;
    int RepliedCount;
    String SenderUserID;
    long SentTime;
    int State;

    public ZIMGenMessageRootRepliedInfo() {
    }

    public ZIMGenMessageRootRepliedInfo(int state, ZIMGenMessage message, String senderUserID, long sentTime, int repliedCount) {
        this.State = state;
        this.Message = message;
        this.SenderUserID = senderUserID;
        this.SentTime = sentTime;
        this.RepliedCount = repliedCount;
    }

    public int getState() {
        return this.State;
    }

    public void setState(int state) {
        this.State = state;
    }

    public ZIMGenMessage getMessage() {
        return this.Message;
    }

    public void setMessage(ZIMGenMessage message) {
        this.Message = message;
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

    public int getRepliedCount() {
        return this.RepliedCount;
    }

    public void setRepliedCount(int repliedCount) {
        this.RepliedCount = repliedCount;
    }

    public String toString() {
        return "ZIMGenMessageRootRepliedInfo{State=" + this.State + ",Message=" + this.Message + ",SenderUserID=" + this.SenderUserID + ",SentTime=" + this.SentTime + ",RepliedCount=" + this.RepliedCount + "}";
    }
}
