package im.zego.zpns.enums;

public class ZPNsConstants {
    public static final String KEY_PUSH_ID = "KEY_PUSH_ID";
    public static final String KEY_PUSH_ID_EXPIRE_TIME = "KEY_PUSH_ID_EXPIRE_TIME";
    public static final String PUSH_ID_PREFERENCE_NAME = "PUSH_ID_PREFERENCE_NAME";
    public static final String PUSH_MESSAGE = "zego_push_message";
    public static final String PUSH_MESSAGE_STATISTICS_IMEI_KEY = "PUSH_MESSAGE_STATISTICS_IMEI_KEY";
    public static final String PUSH_METHOD = "method";
    public static final String PUSH_METHOD_ON_COMMAND_RESULT = "on_registered";
    public static final String PUSH_METHOD_ON_NOTIFICATION_ARRIVED = "on_notification_arrived";
    public static final String PUSH_METHOD_ON_NOTIFICATION_CLICKED = "on_notification_clicked";
    public static final String PUSH_METHOD_ON_THROUGH_MESSAGE = "on_through_message";
    public static final String PUSH_ON_MESSAGE_ACTION = "im.zego.zim.zpns.intent.action.MESSAGE";

    public enum PushSource {
        ZEGO(0),
        VIVO(1),
        XIAOMI(2),
        HUAWEI(3),
        OPPO(4),
        FCM(5);

        private int code;

        PushSource(int i) {
            this.code = i;
        }

        public int code() {
            return this.code;
        }

        public static PushSource fromValue(int i) {
            if (i == 1) {
                return VIVO;
            }
            if (i == 2) {
                return XIAOMI;
            }
            if (i == 3) {
                return HUAWEI;
            }
            if (i == 4) {
                return OPPO;
            }
            if (i == 5) {
                return FCM;
            }
            return ZEGO;
        }
    }

    public enum PushCmdType {
        DEFAULT(0),
        REGISTER(1),
        UNREGISTER(2);

        private int code;

        PushCmdType(int i) {
            this.code = i;
        }

        public int code() {
            return this.code;
        }

        public static PushCmdType fromValue(int i) {
            if (i == 1) {
                return REGISTER;
            }
            if (i == 2) {
                return UNREGISTER;
            }
            return DEFAULT;
        }
    }
}
