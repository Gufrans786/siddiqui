package im.zego.zim.enums;

public enum ZIMFriendRelationCheckType {
    UNKNOWN(-1),
    BOTH(0),
    SINGLE(1);

    private final int value;

    ZIMFriendRelationCheckType(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMFriendRelationCheckType getZIMFriendRelationCheckType(int value) {
        try {
            ZIMFriendRelationCheckType zIMFriendRelationCheckType = SINGLE;
            if (zIMFriendRelationCheckType.value == value) {
                return zIMFriendRelationCheckType;
            }
            ZIMFriendRelationCheckType zIMFriendRelationCheckType2 = BOTH;
            return zIMFriendRelationCheckType2.value == value ? zIMFriendRelationCheckType2 : UNKNOWN;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
