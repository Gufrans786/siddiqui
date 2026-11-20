package im.zego.zim.enums;

public enum ZIMFriendApplicationType {
    UNKNOWN(-1),
    NONE(0),
    RECEIVED(1),
    SENT(2),
    BOTH(3);

    private final int value;

    ZIMFriendApplicationType(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMFriendApplicationType getZIMFriendApplicationType(int value) {
        try {
            ZIMFriendApplicationType zIMFriendApplicationType = RECEIVED;
            if (zIMFriendApplicationType.value == value) {
                return zIMFriendApplicationType;
            }
            ZIMFriendApplicationType zIMFriendApplicationType2 = SENT;
            if (zIMFriendApplicationType2.value == value) {
                return zIMFriendApplicationType2;
            }
            ZIMFriendApplicationType zIMFriendApplicationType3 = BOTH;
            if (zIMFriendApplicationType3.value == value) {
                return zIMFriendApplicationType3;
            }
            ZIMFriendApplicationType zIMFriendApplicationType4 = NONE;
            return zIMFriendApplicationType4.value == value ? zIMFriendApplicationType4 : UNKNOWN;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
