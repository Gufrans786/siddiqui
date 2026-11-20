package im.zego.zim.enums;

public enum ZIMGroupJoinMode {
    ANY(0),
    AUTH(1),
    FORBID(2);

    private int value;

    ZIMGroupJoinMode(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMGroupJoinMode getZIMGroupJoinMode(int value) {
        try {
            ZIMGroupJoinMode zIMGroupJoinMode = ANY;
            if (zIMGroupJoinMode.value != value) {
                ZIMGroupJoinMode zIMGroupJoinMode2 = AUTH;
                if (zIMGroupJoinMode2.value == value) {
                    return zIMGroupJoinMode2;
                }
                ZIMGroupJoinMode zIMGroupJoinMode3 = FORBID;
                if (zIMGroupJoinMode3.value == value) {
                    return zIMGroupJoinMode3;
                }
            }
            return zIMGroupJoinMode;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
