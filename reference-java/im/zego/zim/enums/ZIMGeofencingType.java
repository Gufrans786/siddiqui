package im.zego.zim.enums;

public enum ZIMGeofencingType {
    None(0),
    Include(1),
    Exclude(2);

    private int value;

    ZIMGeofencingType(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMGeofencingType getZIMGeofencingType(int value) {
        try {
            ZIMGeofencingType zIMGeofencingType = None;
            if (zIMGeofencingType.value != value) {
                ZIMGeofencingType zIMGeofencingType2 = Include;
                if (zIMGeofencingType2.value == value) {
                    return zIMGeofencingType2;
                }
                ZIMGeofencingType zIMGeofencingType3 = Exclude;
                if (zIMGeofencingType3.value == value) {
                    return zIMGeofencingType3;
                }
            }
            return zIMGeofencingType;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
