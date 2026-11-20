package im.zego.zim.enums;

public enum ZIMGroupApplicationListChangeAction {
    ADDED(0);

    private int value;

    ZIMGroupApplicationListChangeAction(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMGroupApplicationListChangeAction getZIMGroupApplicationListChangeAction(int value) {
        try {
            ZIMGroupApplicationListChangeAction zIMGroupApplicationListChangeAction = ADDED;
            int i = zIMGroupApplicationListChangeAction.value;
            return zIMGroupApplicationListChangeAction;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
