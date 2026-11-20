package im.zego.zim.enums;

public enum ZIMGroupBeInviteMode {
    NONE(0),
    AUTH(1);

    private int value;

    ZIMGroupBeInviteMode(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMGroupBeInviteMode getZIMGroupBeInviteMode(int value) {
        try {
            ZIMGroupBeInviteMode zIMGroupBeInviteMode = NONE;
            if (zIMGroupBeInviteMode.value != value) {
                ZIMGroupBeInviteMode zIMGroupBeInviteMode2 = AUTH;
                if (zIMGroupBeInviteMode2.value == value) {
                    return zIMGroupBeInviteMode2;
                }
            }
            return zIMGroupBeInviteMode;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
