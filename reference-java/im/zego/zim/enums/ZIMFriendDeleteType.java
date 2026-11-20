package im.zego.zim.enums;

public enum ZIMFriendDeleteType {
    UNKNOWN(-1),
    BOTH(0),
    SINGLE(1);

    private final int value;

    ZIMFriendDeleteType(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMFriendDeleteType getZIMFriendDeleteType(int value) {
        try {
            ZIMFriendDeleteType zIMFriendDeleteType = BOTH;
            if (zIMFriendDeleteType.value == value) {
                return zIMFriendDeleteType;
            }
            ZIMFriendDeleteType zIMFriendDeleteType2 = SINGLE;
            return zIMFriendDeleteType2.value == value ? zIMFriendDeleteType2 : UNKNOWN;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
