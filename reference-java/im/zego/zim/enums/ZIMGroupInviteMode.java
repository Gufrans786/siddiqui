package im.zego.zim.enums;

public enum ZIMGroupInviteMode {
    ANY(0),
    ADMIN(1);

    private int value;

    ZIMGroupInviteMode(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMGroupInviteMode getZIMGroupInviteMode(int value) {
        try {
            ZIMGroupInviteMode zIMGroupInviteMode = ANY;
            if (zIMGroupInviteMode.value != value) {
                ZIMGroupInviteMode zIMGroupInviteMode2 = ADMIN;
                if (zIMGroupInviteMode2.value == value) {
                    return zIMGroupInviteMode2;
                }
            }
            return zIMGroupInviteMode;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
