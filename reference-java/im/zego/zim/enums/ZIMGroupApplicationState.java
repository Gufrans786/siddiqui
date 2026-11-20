package im.zego.zim.enums;

public enum ZIMGroupApplicationState {
    WAITING(1),
    ACCEPTED(2),
    REJECTED(3),
    EXPIRED(4),
    DISABLED(5);

    private int value;

    ZIMGroupApplicationState(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMGroupApplicationState getZIMGroupApplicationState(int value) {
        try {
            ZIMGroupApplicationState zIMGroupApplicationState = WAITING;
            if (zIMGroupApplicationState.value != value) {
                ZIMGroupApplicationState zIMGroupApplicationState2 = ACCEPTED;
                if (zIMGroupApplicationState2.value == value) {
                    return zIMGroupApplicationState2;
                }
                ZIMGroupApplicationState zIMGroupApplicationState3 = REJECTED;
                if (zIMGroupApplicationState3.value == value) {
                    return zIMGroupApplicationState3;
                }
                ZIMGroupApplicationState zIMGroupApplicationState4 = EXPIRED;
                if (zIMGroupApplicationState4.value == value) {
                    return zIMGroupApplicationState4;
                }
                ZIMGroupApplicationState zIMGroupApplicationState5 = DISABLED;
                if (zIMGroupApplicationState5.value == value) {
                    return zIMGroupApplicationState5;
                }
            }
            return zIMGroupApplicationState;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
