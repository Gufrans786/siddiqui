package im.zego.zim.entity;

import im.zego.zim.enums.ZIMMessageType;

public class ZIMTextMessageLiteInfo extends ZIMMessageLiteInfo {
    public String message;

    public ZIMTextMessageLiteInfo() {
        this.type = ZIMMessageType.TEXT;
        this.message = "";
    }

    @Override
    public String toString() {
        return super.toString() + "ZIMMessageLiteInfo{message='" + this.message + "'type='" + this.type.name() + "'}";
    }
}
