package im.zego.zim.enums;

public enum ZIMMessageSentStatus {
    UNKNOWN(-1),
    SENDING(0),
    SUCCESS(1),
    FAILED(2);

    private int value;

    ZIMMessageSentStatus(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMMessageSentStatus getZIMMessageSentStatus(int value) {
        try {
            ZIMMessageSentStatus zIMMessageSentStatus = SENDING;
            if (zIMMessageSentStatus.value == value) {
                return zIMMessageSentStatus;
            }
            ZIMMessageSentStatus zIMMessageSentStatus2 = SUCCESS;
            if (zIMMessageSentStatus2.value == value) {
                return zIMMessageSentStatus2;
            }
            ZIMMessageSentStatus zIMMessageSentStatus3 = FAILED;
            return zIMMessageSentStatus3.value == value ? zIMMessageSentStatus3 : UNKNOWN;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
