package im.zego.zim.enums;

public enum ZIMMessageRepliedInfoState {
    UNKNOWN(-1),
    NORMAL(0),
    DELETED(1),
    NOT_FOUND(2);

    private int value;

    ZIMMessageRepliedInfoState(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMMessageRepliedInfoState getZIMMessageRepliedInfoState(int value) {
        try {
            ZIMMessageRepliedInfoState zIMMessageRepliedInfoState = NORMAL;
            if (zIMMessageRepliedInfoState.value == value) {
                return zIMMessageRepliedInfoState;
            }
            ZIMMessageRepliedInfoState zIMMessageRepliedInfoState2 = DELETED;
            if (zIMMessageRepliedInfoState2.value == value) {
                return zIMMessageRepliedInfoState2;
            }
            ZIMMessageRepliedInfoState zIMMessageRepliedInfoState3 = NOT_FOUND;
            return zIMMessageRepliedInfoState3.value == value ? zIMMessageRepliedInfoState3 : UNKNOWN;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
