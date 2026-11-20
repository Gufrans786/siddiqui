package im.zego.zim.entity;

import im.zego.zim.enums.ZIMMessagePinStatus;

public class ZIMMessagePinStatusChangeInfo {
    private ZIMMessage message;
    private ZIMMessagePinStatus pinStatus;

    public ZIMMessage getMessage() {
        return this.message;
    }

    public void setMessage(ZIMMessage message) {
        this.message = message;
    }

    public ZIMMessagePinStatus getPinStatus() {
        return this.pinStatus;
    }

    public void setPinStatus(ZIMMessagePinStatus pinStatus) {
        this.pinStatus = pinStatus;
    }

    public String toString() {
        return "ZIMMessagePinStatusChangeInfo{message='" + this.message + "', pinStatus=" + this.pinStatus + '}';
    }
}
