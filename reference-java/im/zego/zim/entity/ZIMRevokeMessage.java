package im.zego.zim.entity;

import im.zego.zim.enums.ZIMMessageRevokeStatus;
import im.zego.zim.enums.ZIMMessageType;
import im.zego.zim.enums.ZIMRevokeType;

public class ZIMRevokeMessage extends ZIMMessage {
    private String operatedUserID;
    private ZIMMessageType originalMessageType;
    private String originalTextMessageContent;
    private String revokeExtendedData;
    private ZIMMessageRevokeStatus revokeStatus;
    private long revokeTimestamp;
    private ZIMRevokeType revokeType;

    public ZIMRevokeMessage() {
        super(ZIMMessageType.REVOKE);
    }

    public String getOperatedUserID() {
        return this.operatedUserID;
    }

    public ZIMRevokeType getRevokeType() {
        return this.revokeType;
    }

    public long getRevokeTimestamp() {
        return this.revokeTimestamp;
    }

    public ZIMMessageType getOriginalMessageType() {
        return this.originalMessageType;
    }

    public String getOriginalTextMessageContent() {
        return this.originalTextMessageContent;
    }

    public String getRevokeExtendedData() {
        return this.revokeExtendedData;
    }

    public ZIMMessageRevokeStatus getRevokeStatus() {
        return this.revokeStatus;
    }

    @Override
    public String toString() {
        return super.toString() + "ZIMRevokeMessage{revokeType=" + this.revokeType + ", revokeTimestamp=" + this.revokeTimestamp + ", operatedUserID='" + this.operatedUserID + "', originalMessageType=" + this.originalMessageType + ", originalTextMessageContent='" + this.originalTextMessageContent + "', revokeExtendedData='" + this.revokeExtendedData + "', revokeStatus=" + this.revokeStatus + '}';
    }
}
