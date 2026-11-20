package im.zego.zim.entity;

import im.zego.zim.enums.ZIMGroupAttributesUpdateAction;
import java.util.HashMap;

public class ZIMGroupAttributesUpdateInfo {
    public ZIMGroupAttributesUpdateAction action;
    public HashMap<String, String> groupAttributes;

    public String toString() {
        return "ZIMGroupAttributesUpdateInfo{action=" + this.action + ", groupAttributes=" + this.groupAttributes + '}';
    }
}
