package im.zego.zim.entity;

import im.zego.zim.enums.ZIMMessageRepliedInfoState;
import java.io.Serializable;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

public class ZIMMessageRepliedInfo implements Serializable {
    public long messageID;
    public ZIMMessageLiteInfo messageInfo;
    public long messageSeq;
    public String senderUserID;
    public long sentTime;
    public ZIMMessageRepliedInfoState state;

    public String toString() {
        StringBuilder sbAppend = new StringBuilder("ZIMMessageRepliedInfo{senderUserID=").append(this.senderUserID).append("messageID=").append(this.messageID).append("messageSeq=").append(this.messageSeq).append("sentTime=").append(this.sentTime).append("state=").append(this.state).append("messageInfo=");
        ZIMMessageLiteInfo zIMMessageLiteInfo = this.messageInfo;
        return sbAppend.append(zIMMessageLiteInfo != null ? zIMMessageLiteInfo.toString() : AbstractJsonLexerKt.NULL).append('}').toString();
    }
}
