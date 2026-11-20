package im.zego.zim.internal.generated;

final class ZIMGenMessageMentionedInfo {
    String FromUserID;
    long MessageID;
    long MessageSeq;
    int Type;

    public ZIMGenMessageMentionedInfo() {
    }

    public ZIMGenMessageMentionedInfo(long messageID, long messageSeq, String fromUserID, int type) {
        this.MessageID = messageID;
        this.MessageSeq = messageSeq;
        this.FromUserID = fromUserID;
        this.Type = type;
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

    public String getFromUserID() {
        return this.FromUserID;
    }

    public void setFromUserID(String fromUserID) {
        this.FromUserID = fromUserID;
    }

    public int getType() {
        return this.Type;
    }

    public void setType(int type) {
        this.Type = type;
    }

    public String toString() {
        return "ZIMGenMessageMentionedInfo{MessageID=" + this.MessageID + ",MessageSeq=" + this.MessageSeq + ",FromUserID=" + this.FromUserID + ",Type=" + this.Type + "}";
    }
}
