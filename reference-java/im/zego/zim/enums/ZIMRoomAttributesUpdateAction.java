package im.zego.zim.enums;

public enum ZIMRoomAttributesUpdateAction {
    UNKNOWN(-1),
    SET(0),
    DELETE(1);

    private int value;

    ZIMRoomAttributesUpdateAction(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMRoomAttributesUpdateAction getZIMRoomAttributesUpdateAction(int value) {
        try {
            ZIMRoomAttributesUpdateAction zIMRoomAttributesUpdateAction = SET;
            if (zIMRoomAttributesUpdateAction.value == value) {
                return zIMRoomAttributesUpdateAction;
            }
            ZIMRoomAttributesUpdateAction zIMRoomAttributesUpdateAction2 = DELETE;
            return zIMRoomAttributesUpdateAction2.value == value ? zIMRoomAttributesUpdateAction2 : UNKNOWN;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
