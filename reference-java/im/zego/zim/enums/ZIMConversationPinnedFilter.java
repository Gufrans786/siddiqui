package im.zego.zim.enums;

public enum ZIMConversationPinnedFilter {
    ALL(0),
    ONLY_PINNED(1),
    ONLY_UNPINNED(2);

    private int value;

    ZIMConversationPinnedFilter(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMConversationPinnedFilter getZIMConversationPinnedFilter(int value) {
        try {
            ZIMConversationPinnedFilter zIMConversationPinnedFilter = ALL;
            if (zIMConversationPinnedFilter.value != value) {
                ZIMConversationPinnedFilter zIMConversationPinnedFilter2 = ONLY_PINNED;
                if (zIMConversationPinnedFilter2.value == value) {
                    return zIMConversationPinnedFilter2;
                }
                ZIMConversationPinnedFilter zIMConversationPinnedFilter3 = ONLY_UNPINNED;
                if (zIMConversationPinnedFilter3.value == value) {
                    return zIMConversationPinnedFilter3;
                }
            }
            return zIMConversationPinnedFilter;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
