package im.zego.zim.enums;

public enum ZIMConversationSearchMode {
    MATCH_MESSAGE(0),
    MATCH_CONVERSATION_NAME(1);

    private int value;

    ZIMConversationSearchMode(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMConversationSearchMode getZIMConversationSearchMode(int value) {
        try {
            ZIMConversationSearchMode zIMConversationSearchMode = MATCH_MESSAGE;
            if (zIMConversationSearchMode.value != value) {
                ZIMConversationSearchMode zIMConversationSearchMode2 = MATCH_CONVERSATION_NAME;
                if (zIMConversationSearchMode2.value == value) {
                    return zIMConversationSearchMode2;
                }
            }
            return zIMConversationSearchMode;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
