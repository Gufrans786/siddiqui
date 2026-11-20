package im.zego.zim.enums;

public enum ZIMFriendApplicationListChangeAction {
    UNKNOWN(-1),
    ADDED(0),
    DELETED(1);

    private int value;

    ZIMFriendApplicationListChangeAction(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMFriendApplicationListChangeAction getZIMFriendApplicationListChangeAction(int value) {
        try {
            ZIMFriendApplicationListChangeAction zIMFriendApplicationListChangeAction = ADDED;
            if (zIMFriendApplicationListChangeAction.value == value) {
                return zIMFriendApplicationListChangeAction;
            }
            ZIMFriendApplicationListChangeAction zIMFriendApplicationListChangeAction2 = DELETED;
            return zIMFriendApplicationListChangeAction2.value == value ? zIMFriendApplicationListChangeAction2 : UNKNOWN;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
