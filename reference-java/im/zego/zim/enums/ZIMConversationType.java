package im.zego.zim.enums;

public enum ZIMConversationType {
    UNKNOWN(-1),
    PEER(0),
    ROOM(1),
    GROUP(2);

    private int value;

    ZIMConversationType(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMConversationType getZIMConversationType(int value) {
        try {
            ZIMConversationType zIMConversationType = PEER;
            if (zIMConversationType.value == value) {
                return zIMConversationType;
            }
            ZIMConversationType zIMConversationType2 = ROOM;
            if (zIMConversationType2.value == value) {
                return zIMConversationType2;
            }
            ZIMConversationType zIMConversationType3 = GROUP;
            if (zIMConversationType3.value == value) {
                return zIMConversationType3;
            }
            ZIMConversationType zIMConversationType4 = UNKNOWN;
            int i = zIMConversationType4.value;
            return zIMConversationType4;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
