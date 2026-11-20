package im.zego.zim.entity;

import im.zego.zim.enums.ZIMTipsMessageChangeInfoType;
import java.io.Serializable;

public class ZIMTipsMessageChangeInfo implements Serializable {
    public ZIMTipsMessageChangeInfoType type;

    public String toString() {
        return "ZIMTipsMessageChangeInfo{type=" + this.type + '}';
    }
}
