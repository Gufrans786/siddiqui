package im.zego.zim.enums;

public enum ZIMCXHandleType {
    Generic(1),
    PhoneNumber(2),
    EmailAddress(3);

    private int value;

    ZIMCXHandleType(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMCXHandleType getZIMCXHandleType(int value) {
        try {
            ZIMCXHandleType zIMCXHandleType = Generic;
            if (zIMCXHandleType.value != value) {
                ZIMCXHandleType zIMCXHandleType2 = PhoneNumber;
                if (zIMCXHandleType2.value == value) {
                    return zIMCXHandleType2;
                }
                ZIMCXHandleType zIMCXHandleType3 = EmailAddress;
                if (zIMCXHandleType3.value == value) {
                    return zIMCXHandleType3;
                }
            }
            return zIMCXHandleType;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
