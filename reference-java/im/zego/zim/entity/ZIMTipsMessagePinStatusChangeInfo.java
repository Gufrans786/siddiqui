package im.zego.zim.entity;

public class ZIMTipsMessagePinStatusChangeInfo extends ZIMTipsMessageChangeInfo {
    public boolean isPinned;

    @Override
    public String toString() {
        return "ZIMTipsMessagePinStatusChangeInfo{type=" + this.type + ", isPinned=" + this.isPinned + '}';
    }
}
