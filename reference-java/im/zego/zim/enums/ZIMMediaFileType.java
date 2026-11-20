package im.zego.zim.enums;

public enum ZIMMediaFileType {
    UNKNOWN(-1),
    ORIGINAL_FILE(1),
    LARGE_IMAGE(2),
    THUMBNAIL_IMAGE(3),
    VIDEO_FIRST_FRAME_IMAGE(4);

    private final int value;

    ZIMMediaFileType(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMMediaFileType getZIMMediaFileType(int value) {
        try {
            ZIMMediaFileType zIMMediaFileType = ORIGINAL_FILE;
            if (zIMMediaFileType.value() == value) {
                return zIMMediaFileType;
            }
            ZIMMediaFileType zIMMediaFileType2 = LARGE_IMAGE;
            if (zIMMediaFileType2.value == value) {
                return zIMMediaFileType2;
            }
            ZIMMediaFileType zIMMediaFileType3 = THUMBNAIL_IMAGE;
            if (zIMMediaFileType3.value == value) {
                return zIMMediaFileType3;
            }
            ZIMMediaFileType zIMMediaFileType4 = VIDEO_FIRST_FRAME_IMAGE;
            return zIMMediaFileType4.value == value ? zIMMediaFileType4 : UNKNOWN;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
