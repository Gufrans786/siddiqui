package im.zego.zim.enums;

public enum ZIMRoomEvent {
    UNKNOWN(-1),
    SUCCESS(0),
    NETWORK_INTERRUPTED(1),
    NETWORK_DISCONNECTED(2),
    ROOM_NOT_EXIST(3),
    ACTIVE_CREATE(4),
    CREATE_FAILED(5),
    ACTIVE_ENTER(6),
    ENTER_FAILED(7),
    KICKED_OUT(8),
    CONNECT_TIMEOUT(9),
    KICKED_OUT_BY_OTHER_DEVICE(10),
    ACTIVE_SWITCH(11),
    SWITCH_FAILED(12);

    private int value;

    ZIMRoomEvent(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMRoomEvent getZIMRoomEvent(int value) {
        try {
            ZIMRoomEvent zIMRoomEvent = SUCCESS;
            if (zIMRoomEvent.value == value) {
                return zIMRoomEvent;
            }
            ZIMRoomEvent zIMRoomEvent2 = NETWORK_INTERRUPTED;
            if (zIMRoomEvent2.value == value) {
                return zIMRoomEvent2;
            }
            ZIMRoomEvent zIMRoomEvent3 = NETWORK_DISCONNECTED;
            if (zIMRoomEvent3.value == value) {
                return zIMRoomEvent3;
            }
            ZIMRoomEvent zIMRoomEvent4 = ROOM_NOT_EXIST;
            if (zIMRoomEvent4.value == value) {
                return zIMRoomEvent4;
            }
            ZIMRoomEvent zIMRoomEvent5 = ACTIVE_CREATE;
            if (zIMRoomEvent5.value == value) {
                return zIMRoomEvent5;
            }
            ZIMRoomEvent zIMRoomEvent6 = CREATE_FAILED;
            if (zIMRoomEvent6.value == value) {
                return zIMRoomEvent6;
            }
            ZIMRoomEvent zIMRoomEvent7 = ACTIVE_ENTER;
            if (zIMRoomEvent7.value == value) {
                return zIMRoomEvent7;
            }
            ZIMRoomEvent zIMRoomEvent8 = ENTER_FAILED;
            if (zIMRoomEvent8.value == value) {
                return zIMRoomEvent8;
            }
            ZIMRoomEvent zIMRoomEvent9 = KICKED_OUT;
            if (zIMRoomEvent9.value == value) {
                return zIMRoomEvent9;
            }
            ZIMRoomEvent zIMRoomEvent10 = CONNECT_TIMEOUT;
            if (zIMRoomEvent10.value == value) {
                return zIMRoomEvent10;
            }
            ZIMRoomEvent zIMRoomEvent11 = KICKED_OUT_BY_OTHER_DEVICE;
            if (zIMRoomEvent11.value == value) {
                return zIMRoomEvent11;
            }
            ZIMRoomEvent zIMRoomEvent12 = ACTIVE_SWITCH;
            if (zIMRoomEvent12.value == value) {
                return zIMRoomEvent12;
            }
            ZIMRoomEvent zIMRoomEvent13 = SWITCH_FAILED;
            return zIMRoomEvent13.value == value ? zIMRoomEvent13 : UNKNOWN;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
