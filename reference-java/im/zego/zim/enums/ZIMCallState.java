package im.zego.zim.enums;

public enum ZIMCallState {
    UNKNOWN(-1),
    STARTED(1),
    ENDED(2);

    private int value;

    ZIMCallState(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMCallState getZIMCallState(int value) {
        try {
            ZIMCallState zIMCallState = STARTED;
            if (zIMCallState.value == value) {
                return zIMCallState;
            }
            ZIMCallState zIMCallState2 = ENDED;
            return zIMCallState2.value == value ? zIMCallState2 : UNKNOWN;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
