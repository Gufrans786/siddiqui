package im.zego.zim.entity;

import im.zego.zim.enums.ZIMMessageMentionedType;
import java.io.Serializable;

public class ZIMMessageMentionedInfo implements Serializable {
    public String fromUserID;
    public long messageID;
    public long messageSeq;
    public ZIMMessageMentionedType type;

    public String toString() {
        return "ZIMMessageMentionedInfo{messageSeq=" + this.messageSeq + "messageID=" + this.messageID + ", fromUserID='" + this.fromUserID + "', type=" + this.type + '}';
    }
}
