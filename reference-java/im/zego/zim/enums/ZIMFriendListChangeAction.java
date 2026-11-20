package im.zego.zim.enums;

public enum ZIMFriendListChangeAction {
    UNKNOWN(-1),
    ADDED(0),
    DELETED(1);

    private int value;

    ZIMFriendListChangeAction(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMFriendListChangeAction getZIMFriendListChangeAction(int value) {
        try {
            ZIMFriendListChangeAction zIMFriendListChangeAction = ADDED;
            if (zIMFriendListChangeAction.value == value) {
                return zIMFriendListChangeAction;
            }
            ZIMFriendListChangeAction zIMFriendListChangeAction2 = DELETED;
            return zIMFriendListChangeAction2.value == value ? zIMFriendListChangeAction2 : UNKNOWN;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
