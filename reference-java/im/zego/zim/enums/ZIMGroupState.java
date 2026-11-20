package im.zego.zim.enums;

public enum ZIMGroupState {
    UNKNOWN(-1),
    QUIT(0),
    ENTER(1);

    private int value;

    ZIMGroupState(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMGroupState getZIMGroupState(int value) {
        try {
            ZIMGroupState zIMGroupState = QUIT;
            if (zIMGroupState.value == value) {
                return zIMGroupState;
            }
            ZIMGroupState zIMGroupState2 = ENTER;
            return zIMGroupState2.value == value ? zIMGroupState2 : UNKNOWN;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
