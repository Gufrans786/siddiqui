package im.zego.zim.enums;

public enum ZIMMessageReceiptStatus {
    UNKNOWN(-1),
    NONE(0),
    PROCESSING(1),
    DONE(2),
    EXPIRED(3),
    FAILED(4);

    private int value;

    ZIMMessageReceiptStatus(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMMessageReceiptStatus getZIMMessageReceiptStatus(int value) {
        try {
            ZIMMessageReceiptStatus zIMMessageReceiptStatus = NONE;
            if (zIMMessageReceiptStatus.value == value) {
                return zIMMessageReceiptStatus;
            }
            ZIMMessageReceiptStatus zIMMessageReceiptStatus2 = PROCESSING;
            if (zIMMessageReceiptStatus2.value == value) {
                return zIMMessageReceiptStatus2;
            }
            ZIMMessageReceiptStatus zIMMessageReceiptStatus3 = DONE;
            if (zIMMessageReceiptStatus3.value == value) {
                return zIMMessageReceiptStatus3;
            }
            ZIMMessageReceiptStatus zIMMessageReceiptStatus4 = EXPIRED;
            if (zIMMessageReceiptStatus4.value == value) {
                return zIMMessageReceiptStatus4;
            }
            ZIMMessageReceiptStatus zIMMessageReceiptStatus5 = FAILED;
            return zIMMessageReceiptStatus5.value == value ? zIMMessageReceiptStatus5 : UNKNOWN;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
