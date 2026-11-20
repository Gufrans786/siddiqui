package im.zego.zim.enums;

public enum ZIMErrorCode {
    SUCCESS(0),
    FAILED(1),
    PARAM_INVALID(6000001),
    NO_INIT(6000002),
    INVALID_APPID(6000003),
    TRIGGER_SDK_FREQUENCY_LIMIT(6000004),
    TRIGGER_SERVER_FREQUENCY_LIMIT(600005),
    SWITCH_SERVER_ERROR(6000006),
    IM_SERVER_ERROR(6000007),
    DATABASE_ERROR(6000008),
    IM_SERVER_DISCONNECT(6000009),
    UPLOAD_LOG_FAILED(6000010),
    USER_NOT_EXIST(6000011),
    USER_INFO_QUERIED_LIMIT(6000012),
    UNSUPPORTED_REQUEST(6000013),
    EXCEED_DAU_LIMIT(6000015),
    EXCEED_MAU_LIMIT(6000016),
    NETWORK_COMMON_ERROR(6000101),
    NETWORK_SERVER_ERROR_REQUEST_TIMEOUT(6000105),
    NETWORK_SERVER_ERROR(6000102),
    TOKEN_INVALID(6000103),
    NETWORK_ERROR(6000104),
    REQUEST_TIMEOUT(6000105),
    TOKEN_EXPIRED(6000106),
    TOKEN_VERSION_ERROR(6000107),
    TOKEN_TIME_IS_TOO_SHORT(6000108),
    USER_HAS_ALREADY_LOGGED(6000111),
    USER_IS_NOT_LOGGED(6000121),
    USER_HAS_ALREADY_LOGGED_OUT(6000122),
    USER_OFFLINE(6000123),
    USER_ID_ERROR(6000124),
    MESSAGE_COMMON_ERROR(6000201),
    MESSAGE_SERVER_ERROR(6000202),
    SEND_MESSAGE_FAILED(6000203),
    TARGET_DOES_NOT_EXIST(6000204),
    EDIT_MESSAGE_FAILED(6000205),
    SEND_MESSAGE_FAILED_FOR_CANCELLED(6000206),
    CANCEL_SENDING_MESSAGE_FAILED(6000207),
    MESSAGE_IS_NOT_PINNED(6000208),
    FILE_ERROR(6000210),
    FILE_NOT_EXIST(6000211),
    FILE_SERVER_ERROR(6000212),
    FILE_TYPE_UNSUPPORTED(6000213),
    FILE_SIZE_INVALID(6000214),
    FILE_DURATION_INVALID(6000215),
    FILE_PERMISSION_DENIED(6000216),
    FILE_DOWNLOAD_FAILED(6000217),
    FILE_DOWNLOAD_LIMIT(6000218),
    FILE_DOWNLOAD_URL_NOT_FOUND(6000219),
    DOWNLOAD_HTTP_REQUEST_SERVER_ERROR(6000220),
    AUDIT_REJECTED(6000221),
    AUDIT_FAILED(6000222),
    AUDIT_CUSTOM_SENT_REJECTED(6000230),
    MUTED_ERROR(6000231),
    CACHE_FILE_OPEN_FAILED(6000240),
    CACHE_FILE_EXPORT_OR_IMPORT_IS_IN_PROGRESS_CURRENTLY(6000241),
    CACHE_FILE_ONLY_CAN_IMPORT_CACHE_OF_ONESELF(6000242),
    CACHE_FILE_EXPORT_FAILED(6000243),
    CACHE_FILE_IMPORT_FAILED(6000244),
    CACHE_FILE_JSON_PARSE_FAILED(6000245),
    FILE_CONNECT_ERROR(6000251),
    FILE_HTTP_ERROR(6000252),
    FILE_VERIFICATION_ERROR(6000253),
    FILE_CLIENT_ERROR(6000254),
    CALL_ERROR(6000270),
    CANCEL_CALL_ERROR(6000271),
    CALL_SERVER_ERROR(6000272),
    NOT_INVITOR(6000273),
    NOT_INVITEE(6000274),
    CALL_ALREADY_EXISTS(6000275),
    CALL_DOES_NOT_EXIST(6000276),
    CALL_INVITE_USER_DOES_NOT_EXIST(6000281),
    PIN_MESSAGE_LIMIT_EXCEEDED(6000287),
    ROOM_COMMON_ERROR(6000301),
    ROOM_SERVER_ERROR(6000302),
    CREATE_ROOM_ERROR(6000303),
    JOIN_ROOM_ERROR(6000304),
    LEAVE_ROOM_ERROR(6000306),
    MEMBER_QUERY_FAILED(6000310),
    MEMBER_QUERY_FAILED_COMPLETELY(6000311),
    USER_IS_ALREADY_IN_THE_ROOM(6000320),
    USER_IS_NOT_IN_THE_ROOM(6000321),
    ROOM_DOES_NOT_EXIST(6000322),
    THE_ROOM_ALREADY_EXISTS(6000323),
    THE_NUMBER_OF_EXISTING_ROOMS_HAS_REACHED_LIMIT(6000324),
    THE_NUMBER_OF_JOINED_ROOMS_HAS_REACHED_LIMIT(6000325),
    THE_ROOM_IS_CONNECTING(6000326),
    ROOM_ATTRIBUTES_COMMON_ERROR(6000330),
    ROOM_ATTRIBUTES_OPERATION_FAILED_COMPLETELY(6000331),
    ROOM_ATTRIBUTES_OPERATION_FAILED_PARTLY(6000332),
    ROOM_ATTRIBUTES_QUERY_FAILED(6000333),
    THE_NUMBER_OF_ROOM_ATTRIBUTES_EXCEEDS_LIMIT(6000334),
    THE_LENGTH_OF_ROOM_ATTRIBUTE_KEY_EXCEEDS_LIMIT(6000335),
    THE_LENGTH_OF_ROOM_ATTRIBUTE_VALUE_EXCEEDS_LIMIT(6000336),
    THE_TOTAL_LENGTH_OF_ROOM_ATTRIBUTES_VALUE_EXCEEDS_LIMIT(6000337),
    ROOM_MEMBER_ATTRIBUTES_COMMON_ERROR(6000350),
    THE_TOTAL_LENGTH_OF_ROOM_MEMBER_ATTRIBUTES_EXCEEDS_LIMIT(6000351),
    THE_LENGTH_OF_ROOM_MEMBER_ATTRIBUTES_KEY_EXCEEDS_LIMIT(6000352),
    THE_LENGTH_OF_ROOM_MEMBER_ATTRIBUTES_VALUE_EXCEEDS_LIMIT(6000353),
    THE_MEMBER_NUMBER_OF_ROOM_MEMBER_ATTRIBUTES_EXCEEDS_LIMIT(6000357),
    PUSH_ID_INVALID(6000401),
    GROUP_COMMON_ERROR(6000501),
    GROUP_SERVER_ERROR(6000502),
    CREATE_GROUP_ERROR(6000503),
    DISMISS_GROUP_ERROR(6000504),
    JOIN_GROUP_ERROR(6000505),
    LEAVE_GROUP_ERROR(6000506),
    KICK_OUT_GROUP_MEMBER_ERROR(6000507),
    INVITE_USER_INTO_GROUP_ERROR(6000508),
    TRANSFER_OWNER_ERROR(6000509),
    UPDATE_GROUP_INFO_ERROR(6000510),
    QUERY_GROUP_INFO_ERROR(6000511),
    GROUP_ATTRIBUTES_OPERATION_FAILED(6000512),
    ATTRIBUTES_QUERY_FAILED(6000513),
    UPDATE_GROUP_MEMBER_INFO_ERROR(6000514),
    QUERY_GROUP_MEMBER_INFO_ERROR(6000515),
    QUERY_GROUP_LIST_ERROR(6000516),
    QUERY_GROUP_MEMBER_LIST_ERROR(6000517),
    USER_IS_NOT_IN_THE_GROUP(6000521),
    MEMBER_IS_ALREADY_IN_THE_GROUP(6000522),
    DOES_NOT_EXIST(6000523),
    GROUP_ALREADY_EXISTS(6000524),
    GROUP_MEMBER_HAS_REACHED_LIMIT(6000525),
    GROUP_ATTRIBUTE_DOES_NOT_EXIST(6000526),
    GROUP_WITH_DISMISSED(6000527),
    THE_NUMBER_OF_GROUP_ATTRIBUTES_EXCEEDS_LIMIT(6000531),
    THE_LENGTH_OF_GROUP_ATTRIBUTE_KEY_EXCEEDS_LIMIT(6000532),
    THE_LENGTH_OF_GROUP_ATTRIBUTE_VALUE_EXCEEDS_LIMIT(6000533),
    THE_TOTAL_LENGTH_OF_GROUP_ATTRIBUTE_VALUE_EXCEEDS_LIMIT(6000534),
    NO_CORRESPONDING_OPERATION_AUTHORITY(6000541),
    FORBID_JOIN_GROUP_ERROR(6000542),
    CONVERSATION_COMMON_ERROR(6000601),
    CONVERSATION_SERVER_ERROR(6000602),
    CONVERSATION_DOES_NOT_EXIST(6000603),
    CONVERSATION_PINNED_LIST_REACHED_LIMIT(6000604),
    FRIENDS_NUM_LIMIT(6000801),
    FRIEND_APPLICATION_STATUS_ERROR(6000802),
    IS_ALREADY_YOUR_FRIEND(6000803),
    ALREADY_ADD_TO_BLACKLIST(6000804),
    CANNOT_ADD_SELF_TO_BLACKLIST(6000805),
    ALREADY_DELETE_FROM_BLACKLIST(6000806),
    USER_NOT_IN_BLACKLIST(6000807),
    BLACKLIST_LIST_QUANTITY_LIMIT(6000808),
    FRIEND_OPERATION_LIMIT_EXCEEDED(6000809),
    CANNOT_ADD_SELF_TO_FRIEND_LIST(6000810),
    FRIEND_ARE_UNREGISTERED(6000811),
    NOT_YOUR_FRIEND(6000812),
    CANNOT_DELETE_SELF(6000813),
    FRIEND_APPLICATION_EXPIRED(6000814),
    ADD_BLACKLIST_FAIL(6000815),
    DEL_BLACKLIST_FAIL(6000816),
    OPEN_DATABASE_ERROR(6000701),
    MODIFY_DATABASE_ERROR(6000702),
    DELETE_DATABASE_ERROR(6000703),
    SELETE_DATABASE_ERROR(6000704),
    RECEIPT_READ_ERROR(6000277),
    MESSAGE_EXCEEDS_REVOKE_TIME(6000278),
    MESSAGE_HAS_BEEN_REVOKED(6000279),
    MESSAGE_REACTION_TYPE_EXISTED(6000280),
    MESSAGE_RECEIPT_LIMIT(6000282),
    USER_ALREADY_IN_THE_CALL(6000283),
    SENDER_IN_BLACKLIST(6000284),
    EDIT_NO_CORRESPONDING_OPERATION_AUTHORITY(6000285),
    MESSAGE_EXCEEDS_EDIT_TIME(6000286);

    private int value;

    ZIMErrorCode(int value) {
        this.value = value;
    }

    public int value() {
        return this.value;
    }

    public static ZIMErrorCode getZIMErrorCode(int value) {
        try {
            ZIMErrorCode zIMErrorCode = SUCCESS;
            if (zIMErrorCode.value == value) {
                return zIMErrorCode;
            }
            ZIMErrorCode zIMErrorCode2 = FAILED;
            if (zIMErrorCode2.value == value) {
                return zIMErrorCode2;
            }
            ZIMErrorCode zIMErrorCode3 = PARAM_INVALID;
            if (zIMErrorCode3.value == value) {
                return zIMErrorCode3;
            }
            ZIMErrorCode zIMErrorCode4 = NO_INIT;
            if (zIMErrorCode4.value == value) {
                return zIMErrorCode4;
            }
            ZIMErrorCode zIMErrorCode5 = INVALID_APPID;
            if (zIMErrorCode5.value == value) {
                return zIMErrorCode5;
            }
            ZIMErrorCode zIMErrorCode6 = TRIGGER_SDK_FREQUENCY_LIMIT;
            if (zIMErrorCode6.value == value) {
                return zIMErrorCode6;
            }
            ZIMErrorCode zIMErrorCode7 = TRIGGER_SERVER_FREQUENCY_LIMIT;
            if (zIMErrorCode7.value == value) {
                return zIMErrorCode7;
            }
            ZIMErrorCode zIMErrorCode8 = SWITCH_SERVER_ERROR;
            if (zIMErrorCode8.value == value) {
                return zIMErrorCode8;
            }
            ZIMErrorCode zIMErrorCode9 = IM_SERVER_ERROR;
            if (zIMErrorCode9.value == value) {
                return zIMErrorCode9;
            }
            ZIMErrorCode zIMErrorCode10 = DATABASE_ERROR;
            if (zIMErrorCode10.value == value) {
                return zIMErrorCode10;
            }
            ZIMErrorCode zIMErrorCode11 = IM_SERVER_DISCONNECT;
            if (zIMErrorCode11.value == value) {
                return zIMErrorCode11;
            }
            ZIMErrorCode zIMErrorCode12 = UPLOAD_LOG_FAILED;
            if (zIMErrorCode12.value == value) {
                return zIMErrorCode12;
            }
            ZIMErrorCode zIMErrorCode13 = USER_NOT_EXIST;
            if (zIMErrorCode13.value == value) {
                return zIMErrorCode13;
            }
            ZIMErrorCode zIMErrorCode14 = USER_INFO_QUERIED_LIMIT;
            if (zIMErrorCode14.value == value) {
                return zIMErrorCode14;
            }
            ZIMErrorCode zIMErrorCode15 = UNSUPPORTED_REQUEST;
            if (zIMErrorCode15.value == value) {
                return zIMErrorCode15;
            }
            ZIMErrorCode zIMErrorCode16 = EXCEED_DAU_LIMIT;
            if (zIMErrorCode16.value == value) {
                return zIMErrorCode16;
            }
            ZIMErrorCode zIMErrorCode17 = EXCEED_MAU_LIMIT;
            if (zIMErrorCode17.value == value) {
                return zIMErrorCode17;
            }
            ZIMErrorCode zIMErrorCode18 = NETWORK_COMMON_ERROR;
            if (zIMErrorCode18.value == value) {
                return zIMErrorCode18;
            }
            ZIMErrorCode zIMErrorCode19 = NETWORK_SERVER_ERROR;
            if (zIMErrorCode19.value == value) {
                return zIMErrorCode19;
            }
            ZIMErrorCode zIMErrorCode20 = TOKEN_INVALID;
            if (zIMErrorCode20.value == value) {
                return zIMErrorCode20;
            }
            ZIMErrorCode zIMErrorCode21 = NETWORK_ERROR;
            if (zIMErrorCode21.value == value) {
                return zIMErrorCode21;
            }
            ZIMErrorCode zIMErrorCode22 = TOKEN_EXPIRED;
            if (zIMErrorCode22.value == value) {
                return zIMErrorCode22;
            }
            ZIMErrorCode zIMErrorCode23 = TOKEN_VERSION_ERROR;
            if (zIMErrorCode23.value == value) {
                return zIMErrorCode23;
            }
            ZIMErrorCode zIMErrorCode24 = TOKEN_TIME_IS_TOO_SHORT;
            if (zIMErrorCode24.value == value) {
                return zIMErrorCode24;
            }
            ZIMErrorCode zIMErrorCode25 = USER_HAS_ALREADY_LOGGED;
            if (zIMErrorCode25.value == value) {
                return zIMErrorCode25;
            }
            ZIMErrorCode zIMErrorCode26 = USER_IS_NOT_LOGGED;
            if (zIMErrorCode26.value == value) {
                return zIMErrorCode26;
            }
            ZIMErrorCode zIMErrorCode27 = USER_HAS_ALREADY_LOGGED_OUT;
            if (zIMErrorCode27.value == value) {
                return zIMErrorCode27;
            }
            ZIMErrorCode zIMErrorCode28 = USER_OFFLINE;
            if (zIMErrorCode28.value == value) {
                return zIMErrorCode28;
            }
            ZIMErrorCode zIMErrorCode29 = USER_ID_ERROR;
            if (zIMErrorCode29.value == value) {
                return zIMErrorCode29;
            }
            ZIMErrorCode zIMErrorCode30 = MESSAGE_COMMON_ERROR;
            if (zIMErrorCode30.value == value) {
                return zIMErrorCode30;
            }
            ZIMErrorCode zIMErrorCode31 = MESSAGE_SERVER_ERROR;
            if (zIMErrorCode31.value == value) {
                return zIMErrorCode31;
            }
            ZIMErrorCode zIMErrorCode32 = SEND_MESSAGE_FAILED;
            if (zIMErrorCode32.value == value) {
                return zIMErrorCode32;
            }
            ZIMErrorCode zIMErrorCode33 = TARGET_DOES_NOT_EXIST;
            if (zIMErrorCode33.value == value) {
                return zIMErrorCode33;
            }
            ZIMErrorCode zIMErrorCode34 = EDIT_MESSAGE_FAILED;
            if (zIMErrorCode34.value == value) {
                return zIMErrorCode34;
            }
            ZIMErrorCode zIMErrorCode35 = CANCEL_SENDING_MESSAGE_FAILED;
            if (zIMErrorCode35.value == value) {
                return zIMErrorCode35;
            }
            ZIMErrorCode zIMErrorCode36 = MESSAGE_IS_NOT_PINNED;
            if (zIMErrorCode36.value == value) {
                return zIMErrorCode36;
            }
            ZIMErrorCode zIMErrorCode37 = SEND_MESSAGE_FAILED_FOR_CANCELLED;
            if (zIMErrorCode37.value == value) {
                return zIMErrorCode37;
            }
            ZIMErrorCode zIMErrorCode38 = FILE_ERROR;
            if (zIMErrorCode38.value == value) {
                return zIMErrorCode38;
            }
            ZIMErrorCode zIMErrorCode39 = FILE_NOT_EXIST;
            if (zIMErrorCode39.value == value) {
                return zIMErrorCode39;
            }
            ZIMErrorCode zIMErrorCode40 = FILE_SERVER_ERROR;
            if (zIMErrorCode40.value == value) {
                return zIMErrorCode40;
            }
            ZIMErrorCode zIMErrorCode41 = FILE_TYPE_UNSUPPORTED;
            if (zIMErrorCode41.value == value) {
                return zIMErrorCode41;
            }
            ZIMErrorCode zIMErrorCode42 = FILE_SIZE_INVALID;
            if (zIMErrorCode42.value == value) {
                return zIMErrorCode42;
            }
            ZIMErrorCode zIMErrorCode43 = FILE_DURATION_INVALID;
            if (zIMErrorCode43.value == value) {
                return zIMErrorCode43;
            }
            ZIMErrorCode zIMErrorCode44 = FILE_PERMISSION_DENIED;
            if (zIMErrorCode44.value == value) {
                return zIMErrorCode44;
            }
            ZIMErrorCode zIMErrorCode45 = AUDIT_REJECTED;
            if (zIMErrorCode45.value == value) {
                return zIMErrorCode45;
            }
            ZIMErrorCode zIMErrorCode46 = FILE_DOWNLOAD_FAILED;
            if (zIMErrorCode46.value == value) {
                return zIMErrorCode46;
            }
            ZIMErrorCode zIMErrorCode47 = FILE_DOWNLOAD_LIMIT;
            if (zIMErrorCode47.value == value) {
                return zIMErrorCode47;
            }
            ZIMErrorCode zIMErrorCode48 = FILE_DOWNLOAD_URL_NOT_FOUND;
            if (zIMErrorCode48.value == value) {
                return zIMErrorCode48;
            }
            ZIMErrorCode zIMErrorCode49 = DOWNLOAD_HTTP_REQUEST_SERVER_ERROR;
            if (zIMErrorCode49.value == value) {
                return zIMErrorCode49;
            }
            ZIMErrorCode zIMErrorCode50 = AUDIT_FAILED;
            if (zIMErrorCode50.value == value) {
                return zIMErrorCode50;
            }
            ZIMErrorCode zIMErrorCode51 = AUDIT_CUSTOM_SENT_REJECTED;
            if (zIMErrorCode51.value == value) {
                return zIMErrorCode51;
            }
            ZIMErrorCode zIMErrorCode52 = MUTED_ERROR;
            if (zIMErrorCode52.value == value) {
                return zIMErrorCode52;
            }
            ZIMErrorCode zIMErrorCode53 = CALL_ERROR;
            if (zIMErrorCode53.value == value) {
                return zIMErrorCode53;
            }
            ZIMErrorCode zIMErrorCode54 = CANCEL_CALL_ERROR;
            if (zIMErrorCode54.value == value) {
                return zIMErrorCode54;
            }
            ZIMErrorCode zIMErrorCode55 = CALL_SERVER_ERROR;
            if (zIMErrorCode55.value == value) {
                return zIMErrorCode55;
            }
            ZIMErrorCode zIMErrorCode56 = NOT_INVITOR;
            if (zIMErrorCode56.value == value) {
                return zIMErrorCode56;
            }
            ZIMErrorCode zIMErrorCode57 = NOT_INVITEE;
            if (zIMErrorCode57.value == value) {
                return zIMErrorCode57;
            }
            ZIMErrorCode zIMErrorCode58 = CALL_ALREADY_EXISTS;
            if (zIMErrorCode58.value == value) {
                return zIMErrorCode58;
            }
            ZIMErrorCode zIMErrorCode59 = CALL_DOES_NOT_EXIST;
            if (zIMErrorCode59.value == value) {
                return zIMErrorCode59;
            }
            ZIMErrorCode zIMErrorCode60 = CALL_INVITE_USER_DOES_NOT_EXIST;
            if (zIMErrorCode60.value == value) {
                return zIMErrorCode60;
            }
            ZIMErrorCode zIMErrorCode61 = ROOM_COMMON_ERROR;
            if (zIMErrorCode61.value == value) {
                return zIMErrorCode61;
            }
            ZIMErrorCode zIMErrorCode62 = ROOM_SERVER_ERROR;
            if (zIMErrorCode62.value == value) {
                return zIMErrorCode62;
            }
            ZIMErrorCode zIMErrorCode63 = CREATE_ROOM_ERROR;
            if (zIMErrorCode63.value == value) {
                return zIMErrorCode63;
            }
            ZIMErrorCode zIMErrorCode64 = JOIN_ROOM_ERROR;
            if (zIMErrorCode64.value == value) {
                return zIMErrorCode64;
            }
            ZIMErrorCode zIMErrorCode65 = LEAVE_ROOM_ERROR;
            if (zIMErrorCode65.value == value) {
                return zIMErrorCode65;
            }
            ZIMErrorCode zIMErrorCode66 = MEMBER_QUERY_FAILED;
            if (zIMErrorCode66.value == value) {
                return zIMErrorCode66;
            }
            ZIMErrorCode zIMErrorCode67 = MEMBER_QUERY_FAILED_COMPLETELY;
            if (zIMErrorCode67.value == value) {
                return zIMErrorCode67;
            }
            ZIMErrorCode zIMErrorCode68 = USER_IS_ALREADY_IN_THE_ROOM;
            if (zIMErrorCode68.value == value) {
                return zIMErrorCode68;
            }
            ZIMErrorCode zIMErrorCode69 = ADD_BLACKLIST_FAIL;
            if (zIMErrorCode69.value == value) {
                return zIMErrorCode69;
            }
            ZIMErrorCode zIMErrorCode70 = DEL_BLACKLIST_FAIL;
            if (zIMErrorCode70.value == value) {
                return zIMErrorCode70;
            }
            ZIMErrorCode zIMErrorCode71 = USER_IS_NOT_IN_THE_ROOM;
            if (zIMErrorCode71.value == value) {
                return zIMErrorCode71;
            }
            ZIMErrorCode zIMErrorCode72 = ROOM_DOES_NOT_EXIST;
            if (zIMErrorCode72.value == value) {
                return zIMErrorCode72;
            }
            ZIMErrorCode zIMErrorCode73 = THE_ROOM_ALREADY_EXISTS;
            if (zIMErrorCode73.value == value) {
                return zIMErrorCode73;
            }
            ZIMErrorCode zIMErrorCode74 = THE_NUMBER_OF_EXISTING_ROOMS_HAS_REACHED_LIMIT;
            if (zIMErrorCode74.value == value) {
                return zIMErrorCode74;
            }
            ZIMErrorCode zIMErrorCode75 = THE_NUMBER_OF_JOINED_ROOMS_HAS_REACHED_LIMIT;
            if (zIMErrorCode75.value == value) {
                return zIMErrorCode75;
            }
            ZIMErrorCode zIMErrorCode76 = THE_ROOM_IS_CONNECTING;
            if (zIMErrorCode76.value == value) {
                return zIMErrorCode76;
            }
            ZIMErrorCode zIMErrorCode77 = ROOM_ATTRIBUTES_COMMON_ERROR;
            if (zIMErrorCode77.value == value) {
                return zIMErrorCode77;
            }
            ZIMErrorCode zIMErrorCode78 = ROOM_ATTRIBUTES_OPERATION_FAILED_COMPLETELY;
            if (zIMErrorCode78.value == value) {
                return zIMErrorCode78;
            }
            ZIMErrorCode zIMErrorCode79 = ROOM_ATTRIBUTES_OPERATION_FAILED_PARTLY;
            if (zIMErrorCode79.value == value) {
                return zIMErrorCode79;
            }
            ZIMErrorCode zIMErrorCode80 = ROOM_ATTRIBUTES_QUERY_FAILED;
            if (zIMErrorCode80.value == value) {
                return zIMErrorCode80;
            }
            ZIMErrorCode zIMErrorCode81 = THE_NUMBER_OF_ROOM_ATTRIBUTES_EXCEEDS_LIMIT;
            if (zIMErrorCode81.value == value) {
                return zIMErrorCode81;
            }
            ZIMErrorCode zIMErrorCode82 = THE_LENGTH_OF_ROOM_ATTRIBUTE_KEY_EXCEEDS_LIMIT;
            if (zIMErrorCode82.value == value) {
                return zIMErrorCode82;
            }
            ZIMErrorCode zIMErrorCode83 = THE_LENGTH_OF_ROOM_ATTRIBUTE_VALUE_EXCEEDS_LIMIT;
            if (zIMErrorCode83.value == value) {
                return zIMErrorCode83;
            }
            ZIMErrorCode zIMErrorCode84 = THE_TOTAL_LENGTH_OF_ROOM_ATTRIBUTES_VALUE_EXCEEDS_LIMIT;
            if (zIMErrorCode84.value == value) {
                return zIMErrorCode84;
            }
            ZIMErrorCode zIMErrorCode85 = ROOM_MEMBER_ATTRIBUTES_COMMON_ERROR;
            if (zIMErrorCode85.value == value) {
                return zIMErrorCode85;
            }
            ZIMErrorCode zIMErrorCode86 = THE_TOTAL_LENGTH_OF_ROOM_MEMBER_ATTRIBUTES_EXCEEDS_LIMIT;
            if (zIMErrorCode86.value == value) {
                return zIMErrorCode86;
            }
            ZIMErrorCode zIMErrorCode87 = THE_LENGTH_OF_ROOM_MEMBER_ATTRIBUTES_KEY_EXCEEDS_LIMIT;
            if (zIMErrorCode87.value == value) {
                return zIMErrorCode87;
            }
            ZIMErrorCode zIMErrorCode88 = THE_LENGTH_OF_ROOM_MEMBER_ATTRIBUTES_VALUE_EXCEEDS_LIMIT;
            if (zIMErrorCode88.value == value) {
                return zIMErrorCode88;
            }
            ZIMErrorCode zIMErrorCode89 = THE_MEMBER_NUMBER_OF_ROOM_MEMBER_ATTRIBUTES_EXCEEDS_LIMIT;
            if (zIMErrorCode89.value == value) {
                return zIMErrorCode89;
            }
            ZIMErrorCode zIMErrorCode90 = PUSH_ID_INVALID;
            if (zIMErrorCode90.value == value) {
                return zIMErrorCode90;
            }
            ZIMErrorCode zIMErrorCode91 = GROUP_COMMON_ERROR;
            if (zIMErrorCode91.value == value) {
                return zIMErrorCode91;
            }
            ZIMErrorCode zIMErrorCode92 = GROUP_SERVER_ERROR;
            if (zIMErrorCode92.value == value) {
                return zIMErrorCode92;
            }
            ZIMErrorCode zIMErrorCode93 = CREATE_GROUP_ERROR;
            if (zIMErrorCode93.value == value) {
                return zIMErrorCode93;
            }
            ZIMErrorCode zIMErrorCode94 = DISMISS_GROUP_ERROR;
            if (zIMErrorCode94.value == value) {
                return zIMErrorCode94;
            }
            ZIMErrorCode zIMErrorCode95 = JOIN_GROUP_ERROR;
            if (zIMErrorCode95.value == value) {
                return zIMErrorCode95;
            }
            ZIMErrorCode zIMErrorCode96 = LEAVE_GROUP_ERROR;
            if (zIMErrorCode96.value == value) {
                return zIMErrorCode96;
            }
            ZIMErrorCode zIMErrorCode97 = KICK_OUT_GROUP_MEMBER_ERROR;
            if (zIMErrorCode97.value == value) {
                return zIMErrorCode97;
            }
            ZIMErrorCode zIMErrorCode98 = INVITE_USER_INTO_GROUP_ERROR;
            if (zIMErrorCode98.value == value) {
                return zIMErrorCode98;
            }
            ZIMErrorCode zIMErrorCode99 = TRANSFER_OWNER_ERROR;
            if (zIMErrorCode99.value == value) {
                return zIMErrorCode99;
            }
            ZIMErrorCode zIMErrorCode100 = UPDATE_GROUP_INFO_ERROR;
            if (zIMErrorCode100.value == value) {
                return zIMErrorCode100;
            }
            ZIMErrorCode zIMErrorCode101 = QUERY_GROUP_INFO_ERROR;
            if (zIMErrorCode101.value == value) {
                return zIMErrorCode101;
            }
            ZIMErrorCode zIMErrorCode102 = GROUP_ATTRIBUTES_OPERATION_FAILED;
            if (zIMErrorCode102.value == value) {
                return zIMErrorCode102;
            }
            ZIMErrorCode zIMErrorCode103 = ATTRIBUTES_QUERY_FAILED;
            if (zIMErrorCode103.value == value) {
                return zIMErrorCode103;
            }
            ZIMErrorCode zIMErrorCode104 = UPDATE_GROUP_MEMBER_INFO_ERROR;
            if (zIMErrorCode104.value == value) {
                return zIMErrorCode104;
            }
            ZIMErrorCode zIMErrorCode105 = QUERY_GROUP_MEMBER_INFO_ERROR;
            if (zIMErrorCode105.value == value) {
                return zIMErrorCode105;
            }
            ZIMErrorCode zIMErrorCode106 = QUERY_GROUP_LIST_ERROR;
            if (zIMErrorCode106.value == value) {
                return zIMErrorCode106;
            }
            ZIMErrorCode zIMErrorCode107 = QUERY_GROUP_MEMBER_LIST_ERROR;
            if (zIMErrorCode107.value == value) {
                return zIMErrorCode107;
            }
            ZIMErrorCode zIMErrorCode108 = USER_IS_NOT_IN_THE_GROUP;
            if (zIMErrorCode108.value == value) {
                return zIMErrorCode108;
            }
            ZIMErrorCode zIMErrorCode109 = MEMBER_IS_ALREADY_IN_THE_GROUP;
            if (zIMErrorCode109.value == value) {
                return zIMErrorCode109;
            }
            ZIMErrorCode zIMErrorCode110 = DOES_NOT_EXIST;
            if (zIMErrorCode110.value == value) {
                return zIMErrorCode110;
            }
            ZIMErrorCode zIMErrorCode111 = GROUP_ALREADY_EXISTS;
            if (zIMErrorCode111.value == value) {
                return zIMErrorCode111;
            }
            ZIMErrorCode zIMErrorCode112 = GROUP_MEMBER_HAS_REACHED_LIMIT;
            if (zIMErrorCode112.value == value) {
                return zIMErrorCode112;
            }
            ZIMErrorCode zIMErrorCode113 = GROUP_ATTRIBUTE_DOES_NOT_EXIST;
            if (zIMErrorCode113.value == value) {
                return zIMErrorCode113;
            }
            ZIMErrorCode zIMErrorCode114 = THE_NUMBER_OF_GROUP_ATTRIBUTES_EXCEEDS_LIMIT;
            if (zIMErrorCode114.value == value) {
                return zIMErrorCode114;
            }
            ZIMErrorCode zIMErrorCode115 = THE_LENGTH_OF_GROUP_ATTRIBUTE_KEY_EXCEEDS_LIMIT;
            if (zIMErrorCode115.value == value) {
                return zIMErrorCode115;
            }
            ZIMErrorCode zIMErrorCode116 = THE_LENGTH_OF_GROUP_ATTRIBUTE_VALUE_EXCEEDS_LIMIT;
            if (zIMErrorCode116.value == value) {
                return zIMErrorCode116;
            }
            ZIMErrorCode zIMErrorCode117 = THE_TOTAL_LENGTH_OF_GROUP_ATTRIBUTE_VALUE_EXCEEDS_LIMIT;
            if (zIMErrorCode117.value == value) {
                return zIMErrorCode117;
            }
            ZIMErrorCode zIMErrorCode118 = NO_CORRESPONDING_OPERATION_AUTHORITY;
            if (zIMErrorCode118.value == value) {
                return zIMErrorCode118;
            }
            ZIMErrorCode zIMErrorCode119 = FORBID_JOIN_GROUP_ERROR;
            if (zIMErrorCode119.value == value) {
                return zIMErrorCode119;
            }
            ZIMErrorCode zIMErrorCode120 = CONVERSATION_COMMON_ERROR;
            if (zIMErrorCode120.value == value) {
                return zIMErrorCode120;
            }
            ZIMErrorCode zIMErrorCode121 = CONVERSATION_SERVER_ERROR;
            if (zIMErrorCode121.value == value) {
                return zIMErrorCode121;
            }
            ZIMErrorCode zIMErrorCode122 = CONVERSATION_DOES_NOT_EXIST;
            if (zIMErrorCode122.value == value) {
                return zIMErrorCode122;
            }
            ZIMErrorCode zIMErrorCode123 = CONVERSATION_PINNED_LIST_REACHED_LIMIT;
            if (zIMErrorCode123.value == value) {
                return zIMErrorCode123;
            }
            ZIMErrorCode zIMErrorCode124 = OPEN_DATABASE_ERROR;
            if (zIMErrorCode124.value == value) {
                return zIMErrorCode124;
            }
            ZIMErrorCode zIMErrorCode125 = MODIFY_DATABASE_ERROR;
            if (zIMErrorCode125.value == value) {
                return zIMErrorCode125;
            }
            ZIMErrorCode zIMErrorCode126 = DELETE_DATABASE_ERROR;
            if (zIMErrorCode126.value == value) {
                return zIMErrorCode126;
            }
            ZIMErrorCode zIMErrorCode127 = SELETE_DATABASE_ERROR;
            if (zIMErrorCode127.value == value) {
                return zIMErrorCode127;
            }
            ZIMErrorCode zIMErrorCode128 = RECEIPT_READ_ERROR;
            if (zIMErrorCode128.value == value) {
                return zIMErrorCode128;
            }
            ZIMErrorCode zIMErrorCode129 = MESSAGE_EXCEEDS_REVOKE_TIME;
            if (zIMErrorCode129.value == value) {
                return zIMErrorCode129;
            }
            ZIMErrorCode zIMErrorCode130 = MESSAGE_HAS_BEEN_REVOKED;
            if (zIMErrorCode130.value == value) {
                return zIMErrorCode130;
            }
            ZIMErrorCode zIMErrorCode131 = MESSAGE_REACTION_TYPE_EXISTED;
            if (zIMErrorCode131.value == value) {
                return zIMErrorCode131;
            }
            ZIMErrorCode zIMErrorCode132 = MESSAGE_RECEIPT_LIMIT;
            if (zIMErrorCode132.value == value) {
                return zIMErrorCode132;
            }
            ZIMErrorCode zIMErrorCode133 = GROUP_WITH_DISMISSED;
            if (zIMErrorCode133.value == value) {
                return zIMErrorCode133;
            }
            ZIMErrorCode zIMErrorCode134 = USER_ALREADY_IN_THE_CALL;
            if (zIMErrorCode134.value == value) {
                return zIMErrorCode134;
            }
            ZIMErrorCode zIMErrorCode135 = FRIENDS_NUM_LIMIT;
            if (zIMErrorCode135.value == value) {
                return zIMErrorCode135;
            }
            ZIMErrorCode zIMErrorCode136 = SENDER_IN_BLACKLIST;
            if (zIMErrorCode136.value == value) {
                return zIMErrorCode136;
            }
            ZIMErrorCode zIMErrorCode137 = EDIT_NO_CORRESPONDING_OPERATION_AUTHORITY;
            if (zIMErrorCode137.value == value) {
                return zIMErrorCode137;
            }
            ZIMErrorCode zIMErrorCode138 = MESSAGE_EXCEEDS_EDIT_TIME;
            if (zIMErrorCode138.value == value) {
                return zIMErrorCode138;
            }
            ZIMErrorCode zIMErrorCode139 = FRIEND_APPLICATION_STATUS_ERROR;
            if (zIMErrorCode139.value == value) {
                return zIMErrorCode139;
            }
            ZIMErrorCode zIMErrorCode140 = IS_ALREADY_YOUR_FRIEND;
            if (zIMErrorCode140.value == value) {
                return zIMErrorCode140;
            }
            ZIMErrorCode zIMErrorCode141 = ALREADY_ADD_TO_BLACKLIST;
            if (zIMErrorCode141.value == value) {
                return zIMErrorCode141;
            }
            ZIMErrorCode zIMErrorCode142 = CANNOT_ADD_SELF_TO_BLACKLIST;
            if (zIMErrorCode142.value == value) {
                return zIMErrorCode142;
            }
            ZIMErrorCode zIMErrorCode143 = ALREADY_DELETE_FROM_BLACKLIST;
            if (zIMErrorCode143.value == value) {
                return zIMErrorCode143;
            }
            ZIMErrorCode zIMErrorCode144 = USER_NOT_IN_BLACKLIST;
            if (zIMErrorCode144.value == value) {
                return zIMErrorCode144;
            }
            ZIMErrorCode zIMErrorCode145 = BLACKLIST_LIST_QUANTITY_LIMIT;
            if (zIMErrorCode145.value == value) {
                return zIMErrorCode145;
            }
            ZIMErrorCode zIMErrorCode146 = FRIEND_OPERATION_LIMIT_EXCEEDED;
            if (zIMErrorCode146.value == value) {
                return zIMErrorCode146;
            }
            ZIMErrorCode zIMErrorCode147 = CANNOT_ADD_SELF_TO_FRIEND_LIST;
            if (zIMErrorCode147.value == value) {
                return zIMErrorCode147;
            }
            ZIMErrorCode zIMErrorCode148 = FRIEND_ARE_UNREGISTERED;
            if (zIMErrorCode148.value == value) {
                return zIMErrorCode148;
            }
            ZIMErrorCode zIMErrorCode149 = NOT_YOUR_FRIEND;
            if (zIMErrorCode149.value == value) {
                return zIMErrorCode149;
            }
            ZIMErrorCode zIMErrorCode150 = CANNOT_DELETE_SELF;
            if (zIMErrorCode150.value == value) {
                return zIMErrorCode150;
            }
            ZIMErrorCode zIMErrorCode151 = FRIEND_APPLICATION_EXPIRED;
            if (zIMErrorCode151.value == value) {
                return zIMErrorCode151;
            }
            ZIMErrorCode zIMErrorCode152 = CACHE_FILE_OPEN_FAILED;
            if (zIMErrorCode152.value == value) {
                return zIMErrorCode152;
            }
            ZIMErrorCode zIMErrorCode153 = CACHE_FILE_EXPORT_OR_IMPORT_IS_IN_PROGRESS_CURRENTLY;
            if (zIMErrorCode153.value == value) {
                return zIMErrorCode153;
            }
            ZIMErrorCode zIMErrorCode154 = CACHE_FILE_ONLY_CAN_IMPORT_CACHE_OF_ONESELF;
            if (zIMErrorCode154.value == value) {
                return zIMErrorCode154;
            }
            ZIMErrorCode zIMErrorCode155 = CACHE_FILE_EXPORT_FAILED;
            if (zIMErrorCode155.value == value) {
                return zIMErrorCode155;
            }
            ZIMErrorCode zIMErrorCode156 = CACHE_FILE_IMPORT_FAILED;
            if (zIMErrorCode156.value == value) {
                return zIMErrorCode156;
            }
            ZIMErrorCode zIMErrorCode157 = CACHE_FILE_JSON_PARSE_FAILED;
            if (zIMErrorCode157.value == value) {
                return zIMErrorCode157;
            }
            ZIMErrorCode zIMErrorCode158 = FILE_CONNECT_ERROR;
            if (zIMErrorCode158.value == value) {
                return zIMErrorCode158;
            }
            ZIMErrorCode zIMErrorCode159 = FILE_HTTP_ERROR;
            if (zIMErrorCode159.value == value) {
                return zIMErrorCode159;
            }
            ZIMErrorCode zIMErrorCode160 = FILE_VERIFICATION_ERROR;
            if (zIMErrorCode160.value == value) {
                return zIMErrorCode160;
            }
            ZIMErrorCode zIMErrorCode161 = FILE_CLIENT_ERROR;
            if (zIMErrorCode161.value == value) {
                return zIMErrorCode161;
            }
            ZIMErrorCode zIMErrorCode162 = PIN_MESSAGE_LIMIT_EXCEEDED;
            return zIMErrorCode162.value == value ? zIMErrorCode162 : FAILED;
        } catch (Exception unused) {
            throw new RuntimeException("The enumeration cannot be found");
        }
    }
}
