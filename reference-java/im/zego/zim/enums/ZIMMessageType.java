package im.zego.zim.enums;

public enum ZIMMessageType {
    UNKNOWN(0),
    TEXT(1),
    COMMAND(2),
    MULTIPLE(10),
    IMAGE(11),
    FILE(12),
    AUDIO(13),
    VIDEO(14),
    BARRAGE(20),
    SYSTEM(30),
    REVOKE(31),
    TIPS(32),
    COMBINE(100),
    CUSTOM(200);

    private int value;

    ZIMMessageType(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMMessageType getZIMMessageType(int value) {
        try {
            ZIMMessageType zIMMessageType = TEXT;
            if (zIMMessageType.value == value) {
                return zIMMessageType;
            }
            ZIMMessageType zIMMessageType2 = COMMAND;
            if (zIMMessageType2.value == value) {
                return zIMMessageType2;
            }
            ZIMMessageType zIMMessageType3 = BARRAGE;
            if (zIMMessageType3.value == value) {
                return zIMMessageType3;
            }
            ZIMMessageType zIMMessageType4 = MULTIPLE;
            if (zIMMessageType4.value == value) {
                return zIMMessageType4;
            }
            ZIMMessageType zIMMessageType5 = AUDIO;
            if (zIMMessageType5.value == value) {
                return zIMMessageType5;
            }
            ZIMMessageType zIMMessageType6 = IMAGE;
            if (zIMMessageType6.value == value) {
                return zIMMessageType6;
            }
            ZIMMessageType zIMMessageType7 = FILE;
            if (zIMMessageType7.value == value) {
                return zIMMessageType7;
            }
            ZIMMessageType zIMMessageType8 = VIDEO;
            if (zIMMessageType8.value == value) {
                return zIMMessageType8;
            }
            ZIMMessageType zIMMessageType9 = SYSTEM;
            if (zIMMessageType9.value == value) {
                return zIMMessageType9;
            }
            ZIMMessageType zIMMessageType10 = REVOKE;
            if (zIMMessageType10.value == value) {
                return zIMMessageType10;
            }
            ZIMMessageType zIMMessageType11 = CUSTOM;
            if (zIMMessageType11.value == value) {
                return zIMMessageType11;
            }
            ZIMMessageType zIMMessageType12 = TIPS;
            if (zIMMessageType12.value == value) {
                return zIMMessageType12;
            }
            ZIMMessageType zIMMessageType13 = COMBINE;
            return zIMMessageType13.value == value ? zIMMessageType13 : UNKNOWN;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
