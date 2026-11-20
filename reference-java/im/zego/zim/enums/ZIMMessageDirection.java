package im.zego.zim.enums;

public enum ZIMMessageDirection {
    UNKNOWN(-1),
    SEND(0),
    RECEIVE(1);

    private final int value;

    ZIMMessageDirection(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMMessageDirection getZIMMessageDirection(int value) {
        try {
            ZIMMessageDirection zIMMessageDirection = SEND;
            if (zIMMessageDirection.value() == value) {
                return zIMMessageDirection;
            }
            ZIMMessageDirection zIMMessageDirection2 = RECEIVE;
            return zIMMessageDirection2.value == value ? zIMMessageDirection2 : UNKNOWN;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
