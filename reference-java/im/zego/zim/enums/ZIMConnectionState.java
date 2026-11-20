package im.zego.zim.enums;

public enum ZIMConnectionState {
    UNKNOWN(-1),
    DISCONNECTED(0),
    CONNECTING(1),
    CONNECTED(2),
    RECONNECTING(3);

    private int value;

    ZIMConnectionState(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMConnectionState getZIMConnectionState(int value) {
        try {
            ZIMConnectionState zIMConnectionState = DISCONNECTED;
            if (zIMConnectionState.value == value) {
                return zIMConnectionState;
            }
            ZIMConnectionState zIMConnectionState2 = CONNECTING;
            if (zIMConnectionState2.value == value) {
                return zIMConnectionState2;
            }
            ZIMConnectionState zIMConnectionState3 = CONNECTED;
            if (zIMConnectionState3.value == value) {
                return zIMConnectionState3;
            }
            ZIMConnectionState zIMConnectionState4 = RECONNECTING;
            return zIMConnectionState4.value == value ? zIMConnectionState4 : UNKNOWN;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
