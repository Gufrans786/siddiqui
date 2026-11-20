package com.oppwa.mobile.connect.exception;

import android.os.Parcel;
import android.os.Parcelable;
import com.oppwa.mobile.connect.utils.Utils;
import java.io.PrintWriter;
import java.io.StringWriter;

public class PaymentError implements Parcelable {
    public static final Parcelable.Creator<PaymentError> CREATOR = new a();
    private ErrorCode a;
    private String b;
    private String c;

    class a implements Parcelable.Creator<PaymentError> {
        a() {
        }

        @Override
        public PaymentError createFromParcel(Parcel parcel) {
            return new PaymentError(parcel, (a) null);
        }

        @Override
        public PaymentError[] newArray(int i) {
            return new PaymentError[i];
        }
    }

    PaymentError(Parcel parcel, a aVar) {
        this(parcel);
    }

    public static PaymentError getBancontactLinkAppNotInstalledError() {
        return new PaymentError(ErrorCode.ERROR_CODE_BANCONTACT_LINK, "Bancontact Link app is not installed.");
    }

    public static PaymentError getBancontactLinkAppSchemeUrlMissingError() {
        return new PaymentError(ErrorCode.ERROR_CODE_BANCONTACT_LINK, "Bancontact Link app scheme URL is missing.");
    }

    public static PaymentError getCheckoutSettingsMissedError() {
        return new PaymentError(ErrorCode.ERROR_CODE_CHECKOUT_SETTINGS_MISSED, "CheckoutSettings is null.");
    }

    public static PaymentError getNoAvailablePaymentMethodsError() {
        return new PaymentError(ErrorCode.ERROR_CODE_NO_AVAILABLE_PAYMENT_METHODS, "There are no available payment methods in checkout.");
    }

    public static PaymentError getPaymentMethodNotAvailableError() {
        return new PaymentError(ErrorCode.ERROR_CODE_PAYMENT_METHOD_NOT_AVAILABLE, "Payment method is not available.");
    }

    public static PaymentError getPaymentParamsAccountVerificationInvalidError() {
        return new PaymentError(ErrorCode.ERROR_CODE_PAYMENT_PARAMS_ACCOUNT_VERIFICATION_INVALID, "The account verification is not valid.");
    }

    public static PaymentError getPaymentParamsBankAccountBankCodeInvalidError() {
        return new PaymentError(ErrorCode.ERROR_CODE_PAYMENT_PARAMS_BANK_ACCOUNT_BANK_CODE_INVALID, "The Bank code is not valid");
    }

    public static PaymentError getPaymentParamsBankAccountBicInvalidError() {
        return new PaymentError(ErrorCode.ERROR_CODE_PAYMENT_PARAMS_BANK_ACCOUNT_BIC_INVALID, "The Bic is not valid");
    }

    public static PaymentError getPaymentParamsBankAccountHolderInvalidError() {
        return new PaymentError(ErrorCode.ERROR_CODE_PAYMENT_PARAMS_BANK_ACCOUNT_HOLDER_INVALID, "The account holder is not valid.");
    }

    public static PaymentError getPaymentParamsBankAccountIbanInvalidError() {
        return new PaymentError(ErrorCode.ERROR_CODE_PAYMENT_PARAMS_BANK_ACCOUNT_IBAN_INVALID, "The IBAN is not valid.");
    }

    public static PaymentError getPaymentParamsBankAccountNumberInvalidError() {
        return new PaymentError(ErrorCode.ERROR_CODE_PAYMENT_PARAMS_BANK_ACCOUNT_NUMBER_INVALID, "The Account number is not valid");
    }

    public static PaymentError getPaymentParamsBankNameInvalidError() {
        return new PaymentError(ErrorCode.ERROR_CODE_PAYMENT_PARAMS_BANK_ACCOUNT_BANK_NAME_INVALID, "The bank name is not valid");
    }

    public static PaymentError getPaymentParamsCardCvvInvalidError() {
        return new PaymentError(ErrorCode.ERROR_CODE_PAYMENT_PARAMS_CARD_CVV_INVALID, "The card cvv is not valid.");
    }

    public static PaymentError getPaymentParamsCardExpiredError() {
        return new PaymentError(ErrorCode.ERROR_CODE_PAYMENT_PARAMS_CARD_EXPIRED, "The card is expired.");
    }

    public static PaymentError getPaymentParamsCardHolderInvalidError() {
        return new PaymentError(ErrorCode.ERROR_CODE_PAYMENT_PARAMS_CARD_HOLDER_INVALID, "The card holder is not valid.");
    }

    public static PaymentError getPaymentParamsCardMonthInvalidError() {
        return new PaymentError(ErrorCode.ERROR_CODE_PAYMENT_PARAMS_CARD_MONTH_INVALID, "The card expiry month is not valid.");
    }

    public static PaymentError getPaymentParamsCardNumberInvalidError() {
        return new PaymentError(ErrorCode.ERROR_CODE_PAYMENT_PARAMS_CARD_NUMBER_INVALID, "The card number is not valid.");
    }

    public static PaymentError getPaymentParamsCardYearInvalidError() {
        return new PaymentError(ErrorCode.ERROR_CODE_PAYMENT_PARAMS_CARD_YEAR_INVALID, "The card expiry year is not valid.");
    }

    public static PaymentError getPaymentParamsCheckoutIdInvalidError() {
        return new PaymentError(ErrorCode.ERROR_CODE_PAYMENT_PARAMS_CHECKOUT_ID_INVALID, "The checkout ID is not valid.");
    }

    public static PaymentError getPaymentParamsCountryCodeInvalidError() {
        return new PaymentError(ErrorCode.ERROR_CODE_PAYMENT_PARAMS_COUNTRY_CODE_INVALID, "The country code is not valid");
    }

    public static PaymentError getPaymentParamsEmailInvalidError() {
        return new PaymentError(ErrorCode.ERROR_CODE_PAYMENT_PARAMS_EMAIL_INVALID, "The email is not valid");
    }

    public static PaymentError getPaymentParamsGooglePayTokenInvalidError() {
        return new PaymentError(ErrorCode.ERROR_CODE_GOOGLEPAY, "The Google Pay payment token data is invalid");
    }

    public static PaymentError getPaymentParamsInvalidError() {
        return new PaymentError(ErrorCode.ERROR_CODE_PAYMENT_PARAMS_INVALID, "The payment params are not valid.");
    }

    public static PaymentError getPaymentParamsMobilePhoneInvalidError() {
        return new PaymentError(ErrorCode.ERROR_CODE_PAYMENT_PARAMS_MOBILE_PHONE_INVALID, "The mobile phone number is not valid");
    }

    public static PaymentError getPaymentParamsNationalIdentifierInvalidError() {
        return new PaymentError(ErrorCode.ERROR_CODE_PAYMENT_PARAMS_NATIONAL_IDENTIFIER_INVALID, "The national identifier is not valid");
    }

    public static PaymentError getPaymentParamsPaymentSchemeInvalidError() {
        return new PaymentError(ErrorCode.ERROR_CODE_PAYMENT_PARAMS_PAYMENT_BRAND_INVALID, "The payment scheme is not valid.");
    }

    public static PaymentError getPaymentParamsPaymentTokenMissingError() {
        return new PaymentError(ErrorCode.ERROR_CODE_PAYMENT_PARAMS_PAYMENT_TOKEN_MISSING, "The payment token is missing.");
    }

    public static PaymentError getPaymentParamsSofortCountryInvalidError() {
        return new PaymentError(ErrorCode.ERROR_CODE_PAYMENT_PARAMS_BANK_ACCOUNT_COUNTRY_INVALID, "The SOFORT country is not valid.");
    }

    public static PaymentError getPaymentParamsTokenInvalidError() {
        return new PaymentError(ErrorCode.ERROR_CODE_PAYMENT_PARAMS_TOKEN_INVALID, "The provided token is not valid.");
    }

    public static PaymentError getPaymentProviderConnectionFailureError() {
        return new PaymentError(ErrorCode.ERROR_CODE_PAYMENT_PROVIDER_CONNECTION_FAILURE, "Unexpected connection error.");
    }

    public static PaymentError getPaymentProviderConnectionMalformedResponseError(String str) {
        return new PaymentError(ErrorCode.ERROR_CODE_PAYMENT_PROVIDER_CONNECTION_MALFORMED_RESPONSE, "Malformed server response.", str);
    }

    public static PaymentError getPaymentProviderInternalError(String str) {
        return new PaymentError(ErrorCode.ERROR_CODE_PAYMENT_PROVIDER_INTERNAL_ERROR, str);
    }

    public static PaymentError getPaymentProviderNotInitializedError() {
        return new PaymentError(ErrorCode.ERROR_CODE_PAYMENT_PROVIDER_NOT_INITIALIZED, "The provider must be initialized prior to using any methods. Please initialize the provider via initializeProvider()");
    }

    public static PaymentError getThreeDS2ChallengeCanceledError() {
        return new PaymentError(ErrorCode.ERROR_CODE_THREEDS2_CANCELED, "Challenge is canceled.");
    }

    public static PaymentError getThreeDS2Error(String str) {
        return new PaymentError(ErrorCode.ERROR_CODE_THREEDS2_FAILED, str);
    }

    public static PaymentError getTransactionAbortedError() {
        return new PaymentError(ErrorCode.ERROR_CODE_TRANSACTION_ABORTED, "Transaction was aborted.");
    }

    public static PaymentError getUnexpectedExceptionError(Exception exc) {
        StringWriter stringWriter = new StringWriter();
        exc.printStackTrace(new PrintWriter(stringWriter));
        return new PaymentError(ErrorCode.ERROR_CODE_UNEXPECTED_EXCEPTION, "Unexpected exception is thrown. See stack trace in getErrorInfo().", stringWriter.toString());
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            PaymentError paymentError = (PaymentError) obj;
            if (Utils.compare(this.a, paymentError.a) && Utils.compare(this.b, paymentError.b) && Utils.compare(this.c, paymentError.c)) {
                return true;
            }
        }
        return false;
    }

    public ErrorCode getErrorCode() {
        return this.a;
    }

    public String getErrorInfo() {
        return this.c;
    }

    public String getErrorMessage() {
        return this.b;
    }

    public int hashCode() {
        int iHashCode = ((this.a.hashCode() * 31) + this.b.hashCode()) * 31;
        String str = this.c;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public void setErrorCode(ErrorCode errorCode) {
        this.a = errorCode;
    }

    public void setErrorInfo(String str) {
        this.c = str;
    }

    public void setErrorMessage(String str) {
        this.b = str;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.a.ordinal());
        parcel.writeString(this.b);
        parcel.writeString(this.c);
    }

    public PaymentError(ErrorCode errorCode, String str) {
        this.a = errorCode;
        this.b = str;
    }

    public PaymentError(ErrorCode errorCode, String str, String str2) {
        this.a = errorCode;
        this.b = str;
        this.c = str2;
    }

    private PaymentError(Parcel parcel) {
        this.a = ErrorCode.values()[parcel.readInt()];
        this.b = parcel.readString();
        this.c = parcel.readString();
    }
}
