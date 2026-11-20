package im.zego.zim.enums;

public enum ZIMGroupMemberState {
    UNKNOWN(-1),
    QUIT(0),
    ENTER(1);

    private int value;

    ZIMGroupMemberState(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMGroupMemberState getZIMGroupMemberState(int value) {
        try {
            ZIMGroupMemberState zIMGroupMemberState = QUIT;
            if (zIMGroupMemberState.value == value) {
                return zIMGroupMemberState;
            }
            ZIMGroupMemberState zIMGroupMemberState2 = ENTER;
            return zIMGroupMemberState2.value == value ? zIMGroupMemberState2 : UNKNOWN;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
