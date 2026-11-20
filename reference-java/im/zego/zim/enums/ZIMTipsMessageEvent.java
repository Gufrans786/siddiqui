package im.zego.zim.enums;

public enum ZIMTipsMessageEvent {
    GROUP_CREATED(1),
    GROUP_DISMISSED(2),
    GROUP_JOINED(3),
    GROUP_INVITED(4),
    GROUP_LEFT(5),
    GROUP_KICKED_OUT(6),
    GROUP_INFO_CHANGED(7),
    GROUP_MEMBER_INFO_CHANGED(8),
    GROUP_MESSAGE_PINNED(9);

    private int value;

    ZIMTipsMessageEvent(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMTipsMessageEvent getZIMTipsMessageEvent(int value) {
        try {
            ZIMTipsMessageEvent zIMTipsMessageEvent = GROUP_CREATED;
            if (zIMTipsMessageEvent.value != value) {
                ZIMTipsMessageEvent zIMTipsMessageEvent2 = GROUP_DISMISSED;
                if (zIMTipsMessageEvent2.value == value) {
                    return zIMTipsMessageEvent2;
                }
                ZIMTipsMessageEvent zIMTipsMessageEvent3 = GROUP_JOINED;
                if (zIMTipsMessageEvent3.value == value) {
                    return zIMTipsMessageEvent3;
                }
                ZIMTipsMessageEvent zIMTipsMessageEvent4 = GROUP_INVITED;
                if (zIMTipsMessageEvent4.value == value) {
                    return zIMTipsMessageEvent4;
                }
                ZIMTipsMessageEvent zIMTipsMessageEvent5 = GROUP_LEFT;
                if (zIMTipsMessageEvent5.value == value) {
                    return zIMTipsMessageEvent5;
                }
                ZIMTipsMessageEvent zIMTipsMessageEvent6 = GROUP_KICKED_OUT;
                if (zIMTipsMessageEvent6.value == value) {
                    return zIMTipsMessageEvent6;
                }
                ZIMTipsMessageEvent zIMTipsMessageEvent7 = GROUP_INFO_CHANGED;
                if (zIMTipsMessageEvent7.value == value) {
                    return zIMTipsMessageEvent7;
                }
                ZIMTipsMessageEvent zIMTipsMessageEvent8 = GROUP_MEMBER_INFO_CHANGED;
                if (zIMTipsMessageEvent8.value == value) {
                    return zIMTipsMessageEvent8;
                }
                ZIMTipsMessageEvent zIMTipsMessageEvent9 = GROUP_MESSAGE_PINNED;
                if (zIMTipsMessageEvent9.value == value) {
                    return zIMTipsMessageEvent9;
                }
            }
            return zIMTipsMessageEvent;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
