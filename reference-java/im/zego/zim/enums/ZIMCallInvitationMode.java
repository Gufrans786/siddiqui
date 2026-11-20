package im.zego.zim.enums;

public enum ZIMCallInvitationMode {
    UNKNOWN(-1),
    GENERAL(0),
    ADVANCED(1);

    private int value;

    ZIMCallInvitationMode(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMCallInvitationMode getZIMCallInvitationMode(int value) {
        try {
            ZIMCallInvitationMode zIMCallInvitationMode = GENERAL;
            if (zIMCallInvitationMode.value == value) {
                return zIMCallInvitationMode;
            }
            ZIMCallInvitationMode zIMCallInvitationMode2 = ADVANCED;
            return zIMCallInvitationMode2.value == value ? zIMCallInvitationMode2 : UNKNOWN;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
