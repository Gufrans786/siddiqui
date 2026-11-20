package im.zego.zim.enums;

public enum ZIMBlacklistChangeAction {
    ADDED(0),
    REMOVED(1);

    private int value;

    ZIMBlacklistChangeAction(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMBlacklistChangeAction getZIMFriendListChangeAction(int value) {
        try {
            ZIMBlacklistChangeAction zIMBlacklistChangeAction = ADDED;
            if (zIMBlacklistChangeAction.value != value) {
                ZIMBlacklistChangeAction zIMBlacklistChangeAction2 = REMOVED;
                if (zIMBlacklistChangeAction2.value == value) {
                    return zIMBlacklistChangeAction2;
                }
            }
            return zIMBlacklistChangeAction;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
