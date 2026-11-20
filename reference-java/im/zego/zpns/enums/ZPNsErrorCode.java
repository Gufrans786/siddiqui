package im.zego.zpns.enums;

public enum ZPNsErrorCode {
    SUCCESS(0),
    CONNECT_FAILS(6000401),
    APPID_KEY_ERROR(6000402),
    OBTAIN_PUSH_ID_FAILS(6000403),
    REGISTER_FAILS(6000404),
    UNREGISTER_FAILS(6000405);

    public int code = 0;

    public int getCode() {
        return this.code;
    }

    ZPNsErrorCode(int i) {
    }
}
