package im.zego.zim.enums;

public enum ZIMPlatformType {
    WIN(1),
    IPHONE_OS(2),
    ANDROID(3),
    MAC_OS(4),
    LINUX(5),
    WEB(6),
    MINI_PROGRAM(7),
    IPAD_OS(9),
    OHOS(10),
    UNKNOWN(32);

    private int value;

    ZIMPlatformType(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMPlatformType getZIMPlatformType(int value) {
        try {
            ZIMPlatformType zIMPlatformType = WIN;
            if (zIMPlatformType.value == value) {
                return zIMPlatformType;
            }
            ZIMPlatformType zIMPlatformType2 = IPHONE_OS;
            if (zIMPlatformType2.value == value) {
                return zIMPlatformType2;
            }
            ZIMPlatformType zIMPlatformType3 = ANDROID;
            if (zIMPlatformType3.value == value) {
                return zIMPlatformType3;
            }
            ZIMPlatformType zIMPlatformType4 = MAC_OS;
            if (zIMPlatformType4.value == value) {
                return zIMPlatformType4;
            }
            ZIMPlatformType zIMPlatformType5 = LINUX;
            if (zIMPlatformType5.value == value) {
                return zIMPlatformType5;
            }
            ZIMPlatformType zIMPlatformType6 = WEB;
            if (zIMPlatformType6.value == value) {
                return zIMPlatformType6;
            }
            ZIMPlatformType zIMPlatformType7 = MINI_PROGRAM;
            if (zIMPlatformType7.value == value) {
                return zIMPlatformType7;
            }
            ZIMPlatformType zIMPlatformType8 = IPAD_OS;
            if (zIMPlatformType8.value == value) {
                return zIMPlatformType8;
            }
            ZIMPlatformType zIMPlatformType9 = OHOS;
            if (zIMPlatformType9.value == value) {
                return zIMPlatformType9;
            }
            ZIMPlatformType zIMPlatformType10 = UNKNOWN;
            int i = zIMPlatformType10.value;
            return zIMPlatformType10;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
