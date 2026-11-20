package im.zego.zim.entity;

import im.zego.zim.enums.ZIMMessageType;
import java.util.Arrays;

public class ZIMCommandMessage extends ZIMMessage {
    public byte[] message;

    public ZIMCommandMessage() {
        super(ZIMMessageType.COMMAND);
    }

    public ZIMCommandMessage(byte[] message) {
        super(ZIMMessageType.COMMAND);
        this.message = message;
    }

    @Override
    public String toString() {
        return "ZIMCommandMessage{message=" + Arrays.toString(this.message) + '}';
    }
}
