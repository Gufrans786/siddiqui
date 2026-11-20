package im.zego.zim.enums;

public enum ZIMConnectionEvent {
    UNKNOWN(-1),
    SUCCESS(0),
    ACTIVE_LOGIN(1),
    LOGIN_TIMEOUT(2),
    LOGIN_INTERRUPTED(3),
    KICKED_OUT(4),
    TOKEN_EXPIRED(5),
    UNREGISTERED(6);

    private int value;

    ZIMConnectionEvent(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMConnectionEvent getZIMConnectionEvent(int value) {
        try {
            ZIMConnectionEvent zIMConnectionEvent = SUCCESS;
            if (zIMConnectionEvent.value == value) {
                return zIMConnectionEvent;
            }
            ZIMConnectionEvent zIMConnectionEvent2 = ACTIVE_LOGIN;
            if (zIMConnectionEvent2.value == value) {
                return zIMConnectionEvent2;
            }
            ZIMConnectionEvent zIMConnectionEvent3 = LOGIN_TIMEOUT;
            if (zIMConnectionEvent3.value == value) {
                return zIMConnectionEvent3;
            }
            ZIMConnectionEvent zIMConnectionEvent4 = LOGIN_INTERRUPTED;
            if (zIMConnectionEvent4.value == value) {
                return zIMConnectionEvent4;
            }
            ZIMConnectionEvent zIMConnectionEvent5 = KICKED_OUT;
            if (zIMConnectionEvent5.value == value) {
                return zIMConnectionEvent5;
            }
            ZIMConnectionEvent zIMConnectionEvent6 = TOKEN_EXPIRED;
            if (zIMConnectionEvent6.value == value) {
                return zIMConnectionEvent6;
            }
            ZIMConnectionEvent zIMConnectionEvent7 = UNREGISTERED;
            return zIMConnectionEvent7.value == value ? zIMConnectionEvent7 : UNKNOWN;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
