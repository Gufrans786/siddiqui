package im.zego.zim.enums;

public enum ZIMGroupEvent {
    UNKNOWN(-1),
    CREATED(1),
    DISMISSED(2),
    JOINED(3),
    INVITED(4),
    LEFT(5),
    KICKED_OUT(6);

    private int value;

    ZIMGroupEvent(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMGroupEvent getZIMGroupEvent(int value) {
        try {
            ZIMGroupEvent zIMGroupEvent = CREATED;
            if (zIMGroupEvent.value == value) {
                return zIMGroupEvent;
            }
            ZIMGroupEvent zIMGroupEvent2 = DISMISSED;
            if (zIMGroupEvent2.value == value) {
                return zIMGroupEvent2;
            }
            ZIMGroupEvent zIMGroupEvent3 = JOINED;
            if (zIMGroupEvent3.value == value) {
                return zIMGroupEvent3;
            }
            ZIMGroupEvent zIMGroupEvent4 = INVITED;
            if (zIMGroupEvent4.value == value) {
                return zIMGroupEvent4;
            }
            ZIMGroupEvent zIMGroupEvent5 = LEFT;
            if (zIMGroupEvent5.value == value) {
                return zIMGroupEvent5;
            }
            ZIMGroupEvent zIMGroupEvent6 = KICKED_OUT;
            return zIMGroupEvent6.value == value ? zIMGroupEvent6 : UNKNOWN;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
