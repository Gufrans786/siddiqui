package im.zego.zim.enums;

public enum ZIMFriendApplicationState {
    UNKNOWN(-1),
    WAITING(1),
    ACCEPTED(2),
    REJECTED(3),
    EXPIRED(4),
    DISABLED(5);

    private final int value;

    ZIMFriendApplicationState(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMFriendApplicationState getZIMFriendApplicationState(int value) {
        try {
            ZIMFriendApplicationState zIMFriendApplicationState = WAITING;
            if (zIMFriendApplicationState.value == value) {
                return zIMFriendApplicationState;
            }
            ZIMFriendApplicationState zIMFriendApplicationState2 = ACCEPTED;
            if (zIMFriendApplicationState2.value == value) {
                return zIMFriendApplicationState2;
            }
            ZIMFriendApplicationState zIMFriendApplicationState3 = REJECTED;
            if (zIMFriendApplicationState3.value == value) {
                return zIMFriendApplicationState3;
            }
            ZIMFriendApplicationState zIMFriendApplicationState4 = EXPIRED;
            if (zIMFriendApplicationState4.value == value) {
                return zIMFriendApplicationState4;
            }
            ZIMFriendApplicationState zIMFriendApplicationState5 = DISABLED;
            return zIMFriendApplicationState5.value == value ? zIMFriendApplicationState5 : UNKNOWN;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
