package im.zego.zim.internal.generated;

final class ZIMGenMessagePinStatusChangeInfo {
    ZIMGenMessage Message;
    int PinStatus;

    public ZIMGenMessagePinStatusChangeInfo() {
    }

    public ZIMGenMessagePinStatusChangeInfo(ZIMGenMessage message, int pinStatus) {
        this.Message = message;
        this.PinStatus = pinStatus;
    }

    public ZIMGenMessage getMessage() {
        return this.Message;
    }

    public void setMessage(ZIMGenMessage message) {
        this.Message = message;
    }

    public int getPinStatus() {
        return this.PinStatus;
    }

    public void setPinStatus(int pinStatus) {
        this.PinStatus = pinStatus;
    }

    public String toString() {
        return "ZIMGenMessagePinStatusChangeInfo{Message=" + this.Message + ",PinStatus=" + this.PinStatus + "}";
    }
}
