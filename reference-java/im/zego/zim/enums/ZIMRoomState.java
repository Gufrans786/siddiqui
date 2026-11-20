package im.zego.zim.enums;

public enum ZIMRoomState {
    UNKNOWN(-1),
    DISCONNECTED(0),
    CONNECTING(1),
    CONNECTED(2);

    private int value;

    ZIMRoomState(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMRoomState getZIMRoomState(int value) {
        try {
            ZIMRoomState zIMRoomState = DISCONNECTED;
            if (zIMRoomState.value == value) {
                return zIMRoomState;
            }
            ZIMRoomState zIMRoomState2 = CONNECTING;
            if (zIMRoomState2.value == value) {
                return zIMRoomState2;
            }
            ZIMRoomState zIMRoomState3 = CONNECTED;
            return zIMRoomState3.value == value ? zIMRoomState3 : UNKNOWN;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
