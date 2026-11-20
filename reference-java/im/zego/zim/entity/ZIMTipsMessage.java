package im.zego.zim.entity;

import im.zego.zim.enums.ZIMMessageType;
import im.zego.zim.enums.ZIMTipsMessageEvent;
import java.util.ArrayList;

public class ZIMTipsMessage extends ZIMMessage {
    public ZIMTipsMessageChangeInfo changeInfo;
    public ZIMTipsMessageEvent event;
    public ZIMUserInfo operatedUser;
    public ArrayList<ZIMUserInfo> targetUserList;

    public ZIMTipsMessage() {
        super(ZIMMessageType.TIPS);
    }

    @Override
    public String toString() {
        return "ZIMTipsMessage{event=" + this.event + ", operatedUser=" + this.operatedUser + ", targetUserList=" + this.targetUserList + ", changeInfo=" + this.changeInfo + '}';
    }
}
