package im.zego.zim.enums;

public enum ZIMMessageOrder {
    UNKNOWN(-1),
    DESCENDING(0),
    ASCENDING(1);

    private int value;

    ZIMMessageOrder(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMMessageOrder getZIMMessageOrder(int value) {
        try {
            ZIMMessageOrder zIMMessageOrder = DESCENDING;
            if (zIMMessageOrder.value == value) {
                return zIMMessageOrder;
            }
            ZIMMessageOrder zIMMessageOrder2 = ASCENDING;
            return zIMMessageOrder2.value == value ? zIMMessageOrder2 : UNKNOWN;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
