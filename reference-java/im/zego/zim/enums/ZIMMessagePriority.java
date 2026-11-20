package im.zego.zim.enums;

public enum ZIMMessagePriority {
    UNKNOWN(-1),
    LOW(1),
    MEDIUM(2),
    HIGH(3);

    private int value;

    ZIMMessagePriority(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMMessagePriority getZIMMessagePriority(int value) {
        try {
            ZIMMessagePriority zIMMessagePriority = LOW;
            if (zIMMessagePriority.value == value) {
                return zIMMessagePriority;
            }
            ZIMMessagePriority zIMMessagePriority2 = MEDIUM;
            if (zIMMessagePriority2.value == value) {
                return zIMMessagePriority2;
            }
            ZIMMessagePriority zIMMessagePriority3 = HIGH;
            return zIMMessagePriority3.value == value ? zIMMessagePriority3 : UNKNOWN;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
