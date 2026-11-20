package im.zego.zim.entity;

import im.zego.zim.enums.ZIMMessageType;

public class ZIMSystemMessage extends ZIMMessage {
    public String message;

    public ZIMSystemMessage() {
        super(ZIMMessageType.SYSTEM);
        this.message = "";
    }

    public ZIMSystemMessage(String message) {
        super(ZIMMessageType.SYSTEM);
        this.message = message;
    }

    @Override
    public String toString() {
        return super.toString() + "ZIMSystemMessage{message='" + this.message + "'}";
    }
}
