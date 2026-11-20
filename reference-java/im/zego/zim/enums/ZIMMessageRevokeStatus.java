package im.zego.zim.enums;

public enum ZIMMessageRevokeStatus {
    UNKNOWN(-1),
    SELF_REVOKE(0),
    SYSTEM_REVOKE(1),
    SERVER_API_REVOKE(2),
    GROUP_ADMIN_REVOKE(3),
    GROUP_OWNER_REVOKE(4),
    AUDIT_REJECT_REVOKE(5);

    private int value;

    ZIMMessageRevokeStatus(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMMessageRevokeStatus getZIMMessageRevokeStatus(int value) {
        try {
            ZIMMessageRevokeStatus zIMMessageRevokeStatus = UNKNOWN;
            if (zIMMessageRevokeStatus.value != value) {
                ZIMMessageRevokeStatus zIMMessageRevokeStatus2 = SELF_REVOKE;
                if (zIMMessageRevokeStatus2.value == value) {
                    return zIMMessageRevokeStatus2;
                }
                ZIMMessageRevokeStatus zIMMessageRevokeStatus3 = SYSTEM_REVOKE;
                if (zIMMessageRevokeStatus3.value == value) {
                    return zIMMessageRevokeStatus3;
                }
                ZIMMessageRevokeStatus zIMMessageRevokeStatus4 = SERVER_API_REVOKE;
                if (zIMMessageRevokeStatus4.value == value) {
                    return zIMMessageRevokeStatus4;
                }
                ZIMMessageRevokeStatus zIMMessageRevokeStatus5 = GROUP_ADMIN_REVOKE;
                if (zIMMessageRevokeStatus5.value == value) {
                    return zIMMessageRevokeStatus5;
                }
                ZIMMessageRevokeStatus zIMMessageRevokeStatus6 = GROUP_OWNER_REVOKE;
                if (zIMMessageRevokeStatus6.value == value) {
                    return zIMMessageRevokeStatus6;
                }
                ZIMMessageRevokeStatus zIMMessageRevokeStatus7 = AUDIT_REJECT_REVOKE;
                if (zIMMessageRevokeStatus7.value == value) {
                    return zIMMessageRevokeStatus7;
                }
            }
            return zIMMessageRevokeStatus;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
