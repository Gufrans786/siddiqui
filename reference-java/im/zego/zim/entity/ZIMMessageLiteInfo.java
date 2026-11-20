package im.zego.zim.entity;

import im.zego.zim.enums.ZIMMessageType;
import java.io.Serializable;

public class ZIMMessageLiteInfo implements Serializable {
    public ZIMMessageType type = ZIMMessageType.UNKNOWN;

    public String toString() {
        return super.toString() + "ZIMMessageLiteInfo{type='" + this.type.name() + "'}";
    }
}
