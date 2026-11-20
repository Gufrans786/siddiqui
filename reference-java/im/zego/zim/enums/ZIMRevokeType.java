package im.zego.zim.enums;

public enum ZIMRevokeType {
    UNKNOWN(-1),
    TWO_WAY(0),
    ONE_WAY(1);

    private int value;

    ZIMRevokeType(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMRevokeType getZIMRevokeType(int value) {
        try {
            ZIMRevokeType zIMRevokeType = UNKNOWN;
            if (zIMRevokeType.value != value) {
                ZIMRevokeType zIMRevokeType2 = TWO_WAY;
                if (zIMRevokeType2.value == value) {
                    return zIMRevokeType2;
                }
                ZIMRevokeType zIMRevokeType3 = ONE_WAY;
                if (zIMRevokeType3.value == value) {
                    return zIMRevokeType3;
                }
            }
            return zIMRevokeType;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
