package im.zego.zim.enums;

public enum ZIMGroupEnterType {
    UNKNOWN(0),
    CREATED(1),
    JOIN_APPLY(2),
    JOINED(3),
    INVITED(4),
    INVITE_APPLY(5);

    private int value;

    ZIMGroupEnterType(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMGroupEnterType getZIMGroupEnterType(int value) {
        try {
            ZIMGroupEnterType zIMGroupEnterType = CREATED;
            if (zIMGroupEnterType.value == value) {
                return zIMGroupEnterType;
            }
            ZIMGroupEnterType zIMGroupEnterType2 = JOIN_APPLY;
            if (zIMGroupEnterType2.value == value) {
                return zIMGroupEnterType2;
            }
            ZIMGroupEnterType zIMGroupEnterType3 = JOINED;
            if (zIMGroupEnterType3.value == value) {
                return zIMGroupEnterType3;
            }
            ZIMGroupEnterType zIMGroupEnterType4 = INVITED;
            if (zIMGroupEnterType4.value == value) {
                return zIMGroupEnterType4;
            }
            ZIMGroupEnterType zIMGroupEnterType5 = INVITE_APPLY;
            return zIMGroupEnterType5.value == value ? zIMGroupEnterType5 : UNKNOWN;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
