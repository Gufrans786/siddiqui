package im.zego.zim.enums;

public enum ZIMGroupAttributesUpdateAction {
    UNKNOWN(-1),
    SET(0),
    DELETE(1);

    private int value;

    ZIMGroupAttributesUpdateAction(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMGroupAttributesUpdateAction getZIMGroupAttributesUpdateAction(int value) {
        try {
            ZIMGroupAttributesUpdateAction zIMGroupAttributesUpdateAction = SET;
            if (zIMGroupAttributesUpdateAction.value == value) {
                return zIMGroupAttributesUpdateAction;
            }
            ZIMGroupAttributesUpdateAction zIMGroupAttributesUpdateAction2 = DELETE;
            return zIMGroupAttributesUpdateAction2.value == value ? zIMGroupAttributesUpdateAction2 : UNKNOWN;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
