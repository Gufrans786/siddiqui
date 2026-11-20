package im.zego.zim.enums;

public enum ZIMUserOnlineStatus {
    ONLINE(0),
    OFFLINE(1),
    LOGOUT(2),
    UNKNOWN(99);

    private final int value;

    ZIMUserOnlineStatus(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMUserOnlineStatus getZIMUserOnlineStatus(int value) {
        try {
            ZIMUserOnlineStatus zIMUserOnlineStatus = OFFLINE;
            if (zIMUserOnlineStatus.value == value) {
                return zIMUserOnlineStatus;
            }
            ZIMUserOnlineStatus zIMUserOnlineStatus2 = ONLINE;
            if (zIMUserOnlineStatus2.value == value) {
                return zIMUserOnlineStatus2;
            }
            ZIMUserOnlineStatus zIMUserOnlineStatus3 = LOGOUT;
            if (zIMUserOnlineStatus3.value == value) {
                return zIMUserOnlineStatus3;
            }
            ZIMUserOnlineStatus zIMUserOnlineStatus4 = UNKNOWN;
            int i = zIMUserOnlineStatus4.value;
            return zIMUserOnlineStatus4;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
