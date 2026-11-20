package im.zego.zim.enums;

public enum ZIMConversationEvent {
    UNKNOWN(-1),
    ADDED(0),
    UPDATED(1),
    DISABLED(2),
    DELETED(3);

    private int value;

    ZIMConversationEvent(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMConversationEvent getZIMConversationEvent(int value) {
        try {
            ZIMConversationEvent zIMConversationEvent = ADDED;
            if (zIMConversationEvent.value == value) {
                return zIMConversationEvent;
            }
            ZIMConversationEvent zIMConversationEvent2 = UPDATED;
            if (zIMConversationEvent2.value == value) {
                return zIMConversationEvent2;
            }
            ZIMConversationEvent zIMConversationEvent3 = DISABLED;
            if (zIMConversationEvent3.value == value) {
                return zIMConversationEvent3;
            }
            ZIMConversationEvent zIMConversationEvent4 = DELETED;
            return zIMConversationEvent4.value == value ? zIMConversationEvent4 : UNKNOWN;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
