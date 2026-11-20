package im.zego.zim.entity;

import im.zego.zim.enums.ZIMMessageType;

public class ZIMBarrageMessage extends ZIMMessage {
    public String message;

    public ZIMBarrageMessage() {
        super(ZIMMessageType.BARRAGE);
        this.message = "";
    }

    public ZIMBarrageMessage(String message) {
        super(ZIMMessageType.BARRAGE);
        this.message = message;
    }

    @Override
    public String toString() {
        return super.toString() + "ZIMBarrageMessage{message='" + this.message + "'}";
    }
}
