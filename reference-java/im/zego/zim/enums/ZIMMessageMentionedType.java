package im.zego.zim.enums;

public enum ZIMMessageMentionedType {
    UNKNOWN(-1),
    MENTION_ME(1),
    MENTION_ALL(2),
    MENTION_ALL_AND_ME(3);

    private final int value;

    ZIMMessageMentionedType(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMMessageMentionedType getZIMMessageMentionedType(int value) {
        try {
            ZIMMessageMentionedType zIMMessageMentionedType = MENTION_ME;
            if (zIMMessageMentionedType.value() == value) {
                return zIMMessageMentionedType;
            }
            ZIMMessageMentionedType zIMMessageMentionedType2 = MENTION_ALL;
            if (zIMMessageMentionedType2.value == value) {
                return zIMMessageMentionedType2;
            }
            ZIMMessageMentionedType zIMMessageMentionedType3 = MENTION_ALL_AND_ME;
            return zIMMessageMentionedType3.value == value ? zIMMessageMentionedType3 : UNKNOWN;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
