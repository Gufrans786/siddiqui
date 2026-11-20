package im.zego.zim.enums;

public enum ZIMMessageReactionUserChangeAction {
    ADDED(0),
    DELETED(1);

    private int value;

    ZIMMessageReactionUserChangeAction(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMMessageReactionUserChangeAction getZIMMessageReactionUserChangeAction(int value) {
        try {
            ZIMMessageReactionUserChangeAction zIMMessageReactionUserChangeAction = ADDED;
            if (zIMMessageReactionUserChangeAction.value != value) {
                ZIMMessageReactionUserChangeAction zIMMessageReactionUserChangeAction2 = DELETED;
                if (zIMMessageReactionUserChangeAction2.value == value) {
                    return zIMMessageReactionUserChangeAction2;
                }
            }
            return zIMMessageReactionUserChangeAction;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
