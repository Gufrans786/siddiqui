package im.zego.zim.enums;

public enum ZIMCallUserState {
    UNKNOWN(-1),
    INVITING(0),
    ACCEPTED(1),
    REJECTED(2),
    CANCELLED(3),
    OFFLINE(4),
    RECEIVED(5),
    TIMEOUT(6),
    QUITED(7),
    ENDED(8),
    NOT_YET_RECEIVED(9),
    BE_CANCELLED(10);

    private int value;

    ZIMCallUserState(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMCallUserState getZIMCallUserState(int value) {
        try {
            ZIMCallUserState zIMCallUserState = INVITING;
            if (zIMCallUserState.value == value) {
                return zIMCallUserState;
            }
            ZIMCallUserState zIMCallUserState2 = ACCEPTED;
            if (zIMCallUserState2.value == value) {
                return zIMCallUserState2;
            }
            ZIMCallUserState zIMCallUserState3 = REJECTED;
            if (zIMCallUserState3.value == value) {
                return zIMCallUserState3;
            }
            ZIMCallUserState zIMCallUserState4 = CANCELLED;
            if (zIMCallUserState4.value == value) {
                return zIMCallUserState4;
            }
            ZIMCallUserState zIMCallUserState5 = RECEIVED;
            if (zIMCallUserState5.value == value) {
                return zIMCallUserState5;
            }
            ZIMCallUserState zIMCallUserState6 = QUITED;
            if (zIMCallUserState6.value == value) {
                return zIMCallUserState6;
            }
            ZIMCallUserState zIMCallUserState7 = TIMEOUT;
            if (zIMCallUserState7.value == value) {
                return zIMCallUserState7;
            }
            ZIMCallUserState zIMCallUserState8 = ENDED;
            if (zIMCallUserState8.value == value) {
                return zIMCallUserState8;
            }
            ZIMCallUserState zIMCallUserState9 = NOT_YET_RECEIVED;
            if (zIMCallUserState9.value == value) {
                return zIMCallUserState9;
            }
            ZIMCallUserState zIMCallUserState10 = BE_CANCELLED;
            return zIMCallUserState10.value == value ? zIMCallUserState10 : UNKNOWN;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
