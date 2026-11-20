package im.zego.zim.enums;

public enum ZIMUserRelationType {
    UNKNOWN(0),
    SINGLE_NO(1),
    SINGLE_HAVE(2),
    BOTH_ALL_NO(3),
    BOTH_SELF_HAVE(4),
    BOTH_OTHER_HAVE(5),
    BOTH_ALL_HAVE(6);

    private final int value;

    ZIMUserRelationType(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMUserRelationType getZIMUserRelationType(int value) {
        try {
            ZIMUserRelationType zIMUserRelationType = SINGLE_NO;
            if (zIMUserRelationType.value == value) {
                return zIMUserRelationType;
            }
            ZIMUserRelationType zIMUserRelationType2 = SINGLE_HAVE;
            if (zIMUserRelationType2.value == value) {
                return zIMUserRelationType2;
            }
            ZIMUserRelationType zIMUserRelationType3 = BOTH_ALL_NO;
            if (zIMUserRelationType3.value == value) {
                return zIMUserRelationType3;
            }
            ZIMUserRelationType zIMUserRelationType4 = BOTH_SELF_HAVE;
            if (zIMUserRelationType4.value == value) {
                return zIMUserRelationType4;
            }
            ZIMUserRelationType zIMUserRelationType5 = BOTH_OTHER_HAVE;
            if (zIMUserRelationType5.value == value) {
                return zIMUserRelationType5;
            }
            ZIMUserRelationType zIMUserRelationType6 = BOTH_ALL_HAVE;
            return zIMUserRelationType6.value == value ? zIMUserRelationType6 : UNKNOWN;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
