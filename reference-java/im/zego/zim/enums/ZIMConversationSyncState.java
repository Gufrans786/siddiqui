package im.zego.zim.enums;

public enum ZIMConversationSyncState {
    UNKNOWN(-1),
    STARTED(0),
    FINISHED(1),
    FAILED(2);

    private int value;

    ZIMConversationSyncState(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMConversationSyncState getZIMConversationSyncState(int value) {
        try {
            ZIMConversationSyncState zIMConversationSyncState = STARTED;
            if (zIMConversationSyncState.value == value) {
                return zIMConversationSyncState;
            }
            ZIMConversationSyncState zIMConversationSyncState2 = FINISHED;
            if (zIMConversationSyncState2.value == value) {
                return zIMConversationSyncState2;
            }
            ZIMConversationSyncState zIMConversationSyncState3 = FAILED;
            return zIMConversationSyncState3.value == value ? zIMConversationSyncState3 : UNKNOWN;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
