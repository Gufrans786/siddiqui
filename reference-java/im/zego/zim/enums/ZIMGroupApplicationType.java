package im.zego.zim.enums;

public enum ZIMGroupApplicationType {
    NONE(0),
    JOIN(1),
    INVITE(2),
    BE_INVITE(3);

    private int value;

    ZIMGroupApplicationType(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMGroupApplicationType getZIMGroupApplicationType(int value) {
        try {
            ZIMGroupApplicationType zIMGroupApplicationType = NONE;
            if (zIMGroupApplicationType.value != value) {
                ZIMGroupApplicationType zIMGroupApplicationType2 = JOIN;
                if (zIMGroupApplicationType2.value == value) {
                    return zIMGroupApplicationType2;
                }
                ZIMGroupApplicationType zIMGroupApplicationType3 = INVITE;
                if (zIMGroupApplicationType3.value == value) {
                    return zIMGroupApplicationType3;
                }
                ZIMGroupApplicationType zIMGroupApplicationType4 = BE_INVITE;
                if (zIMGroupApplicationType4.value == value) {
                    return zIMGroupApplicationType4;
                }
            }
            return zIMGroupApplicationType;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
