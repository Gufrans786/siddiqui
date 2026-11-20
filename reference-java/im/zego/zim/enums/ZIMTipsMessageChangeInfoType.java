package im.zego.zim.enums;

public enum ZIMTipsMessageChangeInfoType {
    UNKNOWN(0),
    GROUP_DATA_CHANGED(1),
    GROUP_NOTICE_CHANGED(2),
    GROUP_NAME_CHANGED(3),
    GROUP_AVATAR_URL_CHANGED(4),
    GROUP_MUTE_CHANGED(5),
    GROUP_OWNER_TRANSFERRED(10),
    GROUP_MEMBER_ROLE_CHANGED(11),
    GROUP_MEMBER_MUTE_CHANGED(12),
    GROUP_MESSAGE_PIN_INFO_CHANGED(21);

    private int value;

    ZIMTipsMessageChangeInfoType(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMTipsMessageChangeInfoType getZIMTipsMessageChangeInfoType(int value) {
        try {
            ZIMTipsMessageChangeInfoType zIMTipsMessageChangeInfoType = GROUP_DATA_CHANGED;
            if (zIMTipsMessageChangeInfoType.value == value) {
                return zIMTipsMessageChangeInfoType;
            }
            ZIMTipsMessageChangeInfoType zIMTipsMessageChangeInfoType2 = GROUP_NOTICE_CHANGED;
            if (zIMTipsMessageChangeInfoType2.value == value) {
                return zIMTipsMessageChangeInfoType2;
            }
            ZIMTipsMessageChangeInfoType zIMTipsMessageChangeInfoType3 = GROUP_NAME_CHANGED;
            if (zIMTipsMessageChangeInfoType3.value == value) {
                return zIMTipsMessageChangeInfoType3;
            }
            ZIMTipsMessageChangeInfoType zIMTipsMessageChangeInfoType4 = GROUP_AVATAR_URL_CHANGED;
            if (zIMTipsMessageChangeInfoType4.value == value) {
                return zIMTipsMessageChangeInfoType4;
            }
            ZIMTipsMessageChangeInfoType zIMTipsMessageChangeInfoType5 = GROUP_MUTE_CHANGED;
            if (zIMTipsMessageChangeInfoType5.value == value) {
                return zIMTipsMessageChangeInfoType5;
            }
            ZIMTipsMessageChangeInfoType zIMTipsMessageChangeInfoType6 = GROUP_OWNER_TRANSFERRED;
            if (zIMTipsMessageChangeInfoType6.value == value) {
                return zIMTipsMessageChangeInfoType6;
            }
            ZIMTipsMessageChangeInfoType zIMTipsMessageChangeInfoType7 = GROUP_MEMBER_ROLE_CHANGED;
            if (zIMTipsMessageChangeInfoType7.value == value) {
                return zIMTipsMessageChangeInfoType7;
            }
            ZIMTipsMessageChangeInfoType zIMTipsMessageChangeInfoType8 = GROUP_MEMBER_MUTE_CHANGED;
            if (zIMTipsMessageChangeInfoType8.value == value) {
                return zIMTipsMessageChangeInfoType8;
            }
            ZIMTipsMessageChangeInfoType zIMTipsMessageChangeInfoType9 = GROUP_MESSAGE_PIN_INFO_CHANGED;
            return zIMTipsMessageChangeInfoType9.value == value ? zIMTipsMessageChangeInfoType9 : UNKNOWN;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
