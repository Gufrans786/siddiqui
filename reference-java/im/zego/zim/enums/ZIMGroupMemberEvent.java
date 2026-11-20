package im.zego.zim.enums;

public enum ZIMGroupMemberEvent {
    UNKNOWN(-1),
    JOINED(1),
    LEFT(2),
    KICKED_OUT(4),
    INVITED(5);

    private int value;

    ZIMGroupMemberEvent(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMGroupMemberEvent getZIMGroupMemberEvent(int value) {
        try {
            ZIMGroupMemberEvent zIMGroupMemberEvent = JOINED;
            if (zIMGroupMemberEvent.value == value) {
                return zIMGroupMemberEvent;
            }
            ZIMGroupMemberEvent zIMGroupMemberEvent2 = INVITED;
            if (zIMGroupMemberEvent2.value == value) {
                return zIMGroupMemberEvent2;
            }
            ZIMGroupMemberEvent zIMGroupMemberEvent3 = LEFT;
            if (zIMGroupMemberEvent3.value == value) {
                return zIMGroupMemberEvent3;
            }
            ZIMGroupMemberEvent zIMGroupMemberEvent4 = KICKED_OUT;
            return zIMGroupMemberEvent4.value == value ? zIMGroupMemberEvent4 : UNKNOWN;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
