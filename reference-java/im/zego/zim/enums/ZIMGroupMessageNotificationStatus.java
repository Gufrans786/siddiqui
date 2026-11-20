package im.zego.zim.enums;

public enum ZIMGroupMessageNotificationStatus {
    UNKNOWN(-1),
    NOTIFY(1),
    DISTURB(2);

    private int value;

    ZIMGroupMessageNotificationStatus(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMGroupMessageNotificationStatus getZIMGroupMessageNotificationStatus(int value) {
        try {
            ZIMGroupMessageNotificationStatus zIMGroupMessageNotificationStatus = NOTIFY;
            if (zIMGroupMessageNotificationStatus.value == value) {
                return zIMGroupMessageNotificationStatus;
            }
            ZIMGroupMessageNotificationStatus zIMGroupMessageNotificationStatus2 = DISTURB;
            return zIMGroupMessageNotificationStatus2.value == value ? zIMGroupMessageNotificationStatus2 : UNKNOWN;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
