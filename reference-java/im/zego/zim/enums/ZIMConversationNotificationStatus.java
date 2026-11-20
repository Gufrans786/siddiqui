package im.zego.zim.enums;

public enum ZIMConversationNotificationStatus {
    UNKNOWN(-1),
    NOTIFY(1),
    DO_NOT_DISTURB(2);

    private int value;

    ZIMConversationNotificationStatus(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMConversationNotificationStatus getZIMConversationNotificationStatus(int value) {
        try {
            ZIMConversationNotificationStatus zIMConversationNotificationStatus = NOTIFY;
            if (zIMConversationNotificationStatus.value == value) {
                return zIMConversationNotificationStatus;
            }
            ZIMConversationNotificationStatus zIMConversationNotificationStatus2 = DO_NOT_DISTURB;
            return zIMConversationNotificationStatus2.value == value ? zIMConversationNotificationStatus2 : UNKNOWN;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
