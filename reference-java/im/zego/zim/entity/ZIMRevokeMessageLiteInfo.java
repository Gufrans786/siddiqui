package im.zego.zim.entity;

import im.zego.zim.enums.ZIMMessageType;

public class ZIMRevokeMessageLiteInfo extends ZIMMessageLiteInfo {
    public ZIMRevokeMessageLiteInfo() {
        this.type = ZIMMessageType.REVOKE;
    }
}
