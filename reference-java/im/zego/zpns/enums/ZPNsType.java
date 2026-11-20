package im.zego.zpns.enums;

public enum ZPNsType {
    NOTIFICATION_THROUGH(1),
    NOTIFICATION_CLICK(2),
    NOTIFICATION_ARRIVED(3);

    int code;

    public int code() {
        return this.code;
    }

    ZPNsType(int i) {
        this.code = i;
    }
}
