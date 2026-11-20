package im.zego.zim.enums;

public enum ZIMMessagePinStatus {
    NOT_PINNED(0),
    PINNED(1),
    UPDATED(2);

    private int value;

    ZIMMessagePinStatus(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMMessagePinStatus getZIMMessagePinStatus(int value) {
        try {
            ZIMMessagePinStatus zIMMessagePinStatus = NOT_PINNED;
            if (zIMMessagePinStatus.value != value) {
                ZIMMessagePinStatus zIMMessagePinStatus2 = PINNED;
                if (zIMMessagePinStatus2.value == value) {
                    return zIMMessagePinStatus2;
                }
                ZIMMessagePinStatus zIMMessagePinStatus3 = UPDATED;
                if (zIMMessagePinStatus3.value == value) {
                    return zIMMessagePinStatus3;
                }
            }
            return zIMMessagePinStatus;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
