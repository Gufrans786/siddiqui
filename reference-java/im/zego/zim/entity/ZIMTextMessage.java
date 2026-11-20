package im.zego.zim.entity;

import im.zego.zim.enums.ZIMMessageType;

public class ZIMTextMessage extends ZIMMessage {
    public String message;

    public ZIMTextMessage() {
        super(ZIMMessageType.TEXT);
        this.message = "";
    }

    public ZIMTextMessage(String message) {
        super(ZIMMessageType.TEXT);
        this.message = message;
    }

    @Override
    public String toString() {
        return super.toString() + "ZIMTextMessage{message='" + this.message + "'}";
    }
}
