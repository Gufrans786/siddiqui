package im.zego.zim.entity;

import im.zego.zim.enums.ZIMMessageType;

public class ZIMFileMessageLiteInfo extends ZIMMediaMessageLiteInfo {
    public ZIMFileMessageLiteInfo() {
        this.type = ZIMMessageType.FILE;
    }

    @Override
    public String toString() {
        return super.toString();
    }
}
