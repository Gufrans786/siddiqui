package com.payfort.fortpaymentsdk.constants;

import kotlin.Metadata;
import kotlin.text.Regex;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\f\bÆ\u0002\u0018\u00002\u00020\u0001:\n\u0006\u0007\b\t\n\u000b\f\r\u000e\u000fB\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/payfort/fortpaymentsdk/constants/Constants;", "", "()V", "ENVIRONMENT_PRODUCTION", "", "ENVIRONMENT_SANDBOX", "CREDIT_CARDS_TYPES", "EXTRAS", "FORT_CODE", "FORT_MSGS", "FORT_PARAMS", "FORT_STATUS", "FORT_URI", "INDICATORS", "LANGUAGES", "LOCAL_BROADCAST_EVENTS", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class Constants {
    public static final String ENVIRONMENT_PRODUCTION = "https://checkout.payfort.com";
    public static final String ENVIRONMENT_SANDBOX = "https://sbcheckout.payfort.com";
    public static final Constants INSTANCE = new Constants();

    private Constants() {
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0012\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/payfort/fortpaymentsdk/constants/Constants$EXTRAS;", "", "()V", "SAUDI_NUMBERS_REGEX", "Lkotlin/text/Regex;", "getSAUDI_NUMBERS_REGEX$fortpayment_release", "()Lkotlin/text/Regex;", "SDK_COMMAND", "", "SDK_CURRENCY_DP", "SDK_DEFAULT_LOCALE", "SDK_DIGITAL_WALLET", "SDK_ENVIRONMENT", "SDK_MASKED_PHONE_NUMBER", "SDK_MERCHANT_REQUEST", "SDK_MERCHANT_TOKEN", "SDK_OTP", "SDK_PHONE_NUMBER", "SDK_RESPONSE", "SDK_SERVICE_COMMAND", "SDK_SHOW_LOADING", "SDK_TOKEN_NAME", "STC_DIGITAL_WALLET", "STC_GENERATE_OTP", "STC_GET_CUSTOMER_ACCOUNTS", "STC_PURCHASE", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class EXTRAS {
        public static final EXTRAS INSTANCE = new EXTRAS();
        private static final Regex SAUDI_NUMBERS_REGEX = new Regex("^(05|5)(5|0|3|6|4|9|1|8|7)([0-9]{7})$");
        public static final String SDK_COMMAND = "command";
        public static final String SDK_CURRENCY_DP = "currencyDecimalPoints";
        public static final String SDK_DEFAULT_LOCALE = "defaultLocale";
        public static final String SDK_DIGITAL_WALLET = "digital_wallet";
        public static final String SDK_ENVIRONMENT = "environment";
        public static final String SDK_MASKED_PHONE_NUMBER = "masked_phone_number";
        public static final String SDK_MERCHANT_REQUEST = "merchantReq";
        public static final String SDK_MERCHANT_TOKEN = "merchantToken";
        public static final String SDK_OTP = "otp";
        public static final String SDK_PHONE_NUMBER = "phone_number";
        public static final String SDK_RESPONSE = "sdkResp";
        public static final String SDK_SERVICE_COMMAND = "service_command";
        public static final String SDK_SHOW_LOADING = "showLoading";
        public static final String SDK_TOKEN_NAME = "token_name";
        public static final String STC_DIGITAL_WALLET = "STCPAY";
        public static final String STC_GENERATE_OTP = "GENERATE_OTP";
        public static final String STC_GET_CUSTOMER_ACCOUNTS = "GET_CUSTOMER_ACCOUNTS";
        public static final String STC_PURCHASE = "PURCHASE";

        private EXTRAS() {
        }

        public final Regex getSAUDI_NUMBERS_REGEX$fortpayment_release() {
            return SAUDI_NUMBERS_REGEX;
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/payfort/fortpaymentsdk/constants/Constants$LANGUAGES;", "", "()V", "ARABIC", "", "ENGLISH", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class LANGUAGES {
        public static final String ARABIC = "ar";
        public static final String ENGLISH = "en";
        public static final LANGUAGES INSTANCE = new LANGUAGES();

        private LANGUAGES() {
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0017\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/payfort/fortpaymentsdk/constants/Constants$FORT_PARAMS;", "", "()V", "AMOUNT", "", "CARD_NUMBER", "CARD_SECURITY_CODE", "CART_DETAILS", "CLIENT_SIDE_ERROR", "CLIENT_SIDE_ERROR_DESCRIPTION", "CLIENT_SIDE_ERROR_DETAILS", "CURRENCY", "CUSTOMER_NAME", "DEVICE_FINGERPRINT", FORT_PARAMS.ENVIRONMENT, "EXPIRY_DATE", "FORT_ID", "LANGUAGE", "MERCHANT_REFERENCE", "ORDER_DESCRIPTION", "PAYMENT_OPTION", "REMEMBER_ME", "RESPONSE_CODE", "RESPONSE_MSG", FORT_PARAMS.SDK_REQUEST, "SDK_TOKEN", "STATUS", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class FORT_PARAMS {
        public static final String AMOUNT = "amount";
        public static final String CARD_NUMBER = "card_number";
        public static final String CARD_SECURITY_CODE = "card_security_code";
        public static final String CART_DETAILS = "cart_details";
        public static final String CLIENT_SIDE_ERROR = "client_side_error";
        public static final String CLIENT_SIDE_ERROR_DESCRIPTION = "client_side_error_description";
        public static final String CLIENT_SIDE_ERROR_DETAILS = "client_side_error_details";
        public static final String CURRENCY = "currency";
        public static final String CUSTOMER_NAME = "customer_name";
        public static final String DEVICE_FINGERPRINT = "device_fingerprint";
        public static final String ENVIRONMENT = "ENVIRONMENT";
        public static final String EXPIRY_DATE = "expiry_date";
        public static final String FORT_ID = "fort_id";
        public static final FORT_PARAMS INSTANCE = new FORT_PARAMS();
        public static final String LANGUAGE = "language";
        public static final String MERCHANT_REFERENCE = "merchant_reference";
        public static final String ORDER_DESCRIPTION = "order_description";
        public static final String PAYMENT_OPTION = "payment_option";
        public static final String REMEMBER_ME = "remember_me";
        public static final String RESPONSE_CODE = "response_code";
        public static final String RESPONSE_MSG = "response_message";
        public static final String SDK_REQUEST = "SDK_REQUEST";
        public static final String SDK_TOKEN = "sdk_token";
        public static final String STATUS = "status";

        private FORT_PARAMS() {
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/payfort/fortpaymentsdk/constants/Constants$FORT_STATUS;", "", "()V", "INVALID_REQUEST", "", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class FORT_STATUS {
        public static final FORT_STATUS INSTANCE = new FORT_STATUS();
        public static final String INVALID_REQUEST = "00";

        private FORT_STATUS() {
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/payfort/fortpaymentsdk/constants/Constants$FORT_CODE;", "", "()V", "CANCELED_BY_USER", "", "INIT_CONNECTION_FAILED", "INVALID_SDK_TOKEN", "TECHNICAL_PROBLEM", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class FORT_CODE {
        public static final String CANCELED_BY_USER = "072";
        public static final String INIT_CONNECTION_FAILED = "071";
        public static final FORT_CODE INSTANCE = new FORT_CODE();
        public static final String INVALID_SDK_TOKEN = "044";
        public static final String TECHNICAL_PROBLEM = "006";

        private FORT_CODE() {
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/payfort/fortpaymentsdk/constants/Constants$FORT_MSGS;", "", "()V", "TECHNICAL_PROBLEM", "", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class FORT_MSGS {
        public static final FORT_MSGS INSTANCE = new FORT_MSGS();
        public static final String TECHNICAL_PROBLEM = "Technical problem";

        private FORT_MSGS() {
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/payfort/fortpaymentsdk/constants/Constants$CREDIT_CARDS_TYPES;", "", "()V", CREDIT_CARDS_TYPES.AMEX, "", CREDIT_CARDS_TYPES.JAYWAN, CREDIT_CARDS_TYPES.MADA, CREDIT_CARDS_TYPES.MAESTRO, CREDIT_CARDS_TYPES.MASTERCARD, CREDIT_CARDS_TYPES.MEEZA, CREDIT_CARDS_TYPES.VISA, "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class CREDIT_CARDS_TYPES {
        public static final String AMEX = "AMEX";
        public static final CREDIT_CARDS_TYPES INSTANCE = new CREDIT_CARDS_TYPES();
        public static final String JAYWAN = "JAYWAN";
        public static final String MADA = "MADA";
        public static final String MAESTRO = "MAESTRO";
        public static final String MASTERCARD = "MASTERCARD";
        public static final String MEEZA = "MEEZA";
        public static final String VISA = "VISA";

        private CREDIT_CARDS_TYPES() {
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/payfort/fortpaymentsdk/constants/Constants$FORT_URI;", "", "()V", "AUTH_FAILED_URL", "", "PROCESS_TNX_URL", "VALIDATE_URL", "WV_CHECKER_3DS_PARAMS_URL", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class FORT_URI {
        public static final String AUTH_FAILED_URL = "/FortAPI/sdk/authenticationFailed";
        public static final FORT_URI INSTANCE = new FORT_URI();
        public static final String PROCESS_TNX_URL = "/FortAPI/sdk/processSdkTnx";
        public static final String VALIDATE_URL = "FortAPI/sdk/validate";
        public static final String WV_CHECKER_3DS_PARAMS_URL = "/FortAPI/sdk/process3DsMobile";

        private FORT_URI() {
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/payfort/fortpaymentsdk/constants/Constants$LOCAL_BROADCAST_EVENTS;", "", "()V", "RESPONSE_EVENT", "", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class LOCAL_BROADCAST_EVENTS {
        public static final LOCAL_BROADCAST_EVENTS INSTANCE = new LOCAL_BROADCAST_EVENTS();
        public static final String RESPONSE_EVENT = "responseEvent";

        private LOCAL_BROADCAST_EVENTS() {
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/payfort/fortpaymentsdk/constants/Constants$INDICATORS;", "", "()V", "CARD_MASKED_STAR", "", "REMEMBER_ME_OFF", "REMEMBER_ME_ON", "fortpayment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class INDICATORS {
        public static final String CARD_MASKED_STAR = "*";
        public static final INDICATORS INSTANCE = new INDICATORS();
        public static final String REMEMBER_ME_OFF = "off";
        public static final String REMEMBER_ME_ON = "on";

        private INDICATORS() {
        }
    }
}
