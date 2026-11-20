package im.zego.zim.enums;

public enum ZIMGroupMuteMode {
    None(0),
    Normal(1),
    All(2),
    Custom(3);

    private int value;

    ZIMGroupMuteMode(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMGroupMuteMode getZIMGroupMuteMode(int value) {
        try {
            ZIMGroupMuteMode zIMGroupMuteMode = None;
            if (zIMGroupMuteMode.value != value) {
                ZIMGroupMuteMode zIMGroupMuteMode2 = Normal;
                if (zIMGroupMuteMode2.value == value) {
                    return zIMGroupMuteMode2;
                }
                ZIMGroupMuteMode zIMGroupMuteMode3 = All;
                if (zIMGroupMuteMode3.value == value) {
                    return zIMGroupMuteMode3;
                }
                ZIMGroupMuteMode zIMGroupMuteMode4 = Custom;
                if (zIMGroupMuteMode4.value == value) {
                    return zIMGroupMuteMode4;
                }
            }
            return zIMGroupMuteMode;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
