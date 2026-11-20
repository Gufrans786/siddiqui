package im.zego.zim.enums;

public enum ZIMMessageDeleteType {
    UNKNOWN(-1),
    MESSAGE_LIST_DELETED(0),
    CONVERSATION_ALL_MESSAGES_DELETED(1),
    ALL_CONVERSATION_MESSAGES_DELETED(2);

    private final int value;

    ZIMMessageDeleteType(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMMessageDeleteType getZIMMessageDeleteType(int value) {
        try {
            ZIMMessageDeleteType zIMMessageDeleteType = MESSAGE_LIST_DELETED;
            if (zIMMessageDeleteType.value() == value) {
                return zIMMessageDeleteType;
            }
            ZIMMessageDeleteType zIMMessageDeleteType2 = CONVERSATION_ALL_MESSAGES_DELETED;
            if (zIMMessageDeleteType2.value == value) {
                return zIMMessageDeleteType2;
            }
            ZIMMessageDeleteType zIMMessageDeleteType3 = ALL_CONVERSATION_MESSAGES_DELETED;
            return zIMMessageDeleteType3.value == value ? zIMMessageDeleteType3 : UNKNOWN;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
