.class public Lcom/oppwa/mobile/connect/exception/PaymentError;
.super Ljava/lang/Object;
.source "PaymentError.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oppwa/mobile/connect/exception/PaymentError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/oppwa/mobile/connect/exception/ErrorCode;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentError$a;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/exception/PaymentError$a;-><init>()V

    sput-object v0, Lcom/oppwa/mobile/connect/exception/PaymentError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-static {}, Lcom/oppwa/mobile/connect/exception/ErrorCode;->values()[Lcom/oppwa/mobile/connect/exception/ErrorCode;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/oppwa/mobile/connect/exception/PaymentError;->a:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/exception/PaymentError;->b:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/exception/PaymentError;->c:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oppwa/mobile/connect/exception/PaymentError$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/oppwa/mobile/connect/exception/PaymentError;->a:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 4
    iput-object p2, p0, Lcom/oppwa/mobile/connect/exception/PaymentError;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/oppwa/mobile/connect/exception/PaymentError;->a:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 7
    iput-object p2, p0, Lcom/oppwa/mobile/connect/exception/PaymentError;->b:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/oppwa/mobile/connect/exception/PaymentError;->c:Ljava/lang/String;

    return-void
.end method

.method public static getBancontactLinkAppNotInstalledError()Lcom/oppwa/mobile/connect/exception/PaymentError;
    .locals 3

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_BANCONTACT_LINK:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v2, "Bancontact Link app is not installed."

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getBancontactLinkAppSchemeUrlMissingError()Lcom/oppwa/mobile/connect/exception/PaymentError;
    .locals 3

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_BANCONTACT_LINK:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v2, "Bancontact Link app scheme URL is missing."

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getCheckoutSettingsMissedError()Lcom/oppwa/mobile/connect/exception/PaymentError;
    .locals 3

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_CHECKOUT_SETTINGS_MISSED:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v2, "CheckoutSettings is null."

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getNoAvailablePaymentMethodsError()Lcom/oppwa/mobile/connect/exception/PaymentError;
    .locals 3

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_NO_AVAILABLE_PAYMENT_METHODS:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v2, "There are no available payment methods in checkout."

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPaymentMethodNotAvailableError()Lcom/oppwa/mobile/connect/exception/PaymentError;
    .locals 3

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_METHOD_NOT_AVAILABLE:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v2, "Payment method is not available."

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPaymentParamsAccountVerificationInvalidError()Lcom/oppwa/mobile/connect/exception/PaymentError;
    .locals 3

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_ACCOUNT_VERIFICATION_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v2, "The account verification is not valid."

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPaymentParamsBankAccountBankCodeInvalidError()Lcom/oppwa/mobile/connect/exception/PaymentError;
    .locals 3

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_BANK_ACCOUNT_BANK_CODE_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v2, "The Bank code is not valid"

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPaymentParamsBankAccountBicInvalidError()Lcom/oppwa/mobile/connect/exception/PaymentError;
    .locals 3

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_BANK_ACCOUNT_BIC_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v2, "The Bic is not valid"

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPaymentParamsBankAccountHolderInvalidError()Lcom/oppwa/mobile/connect/exception/PaymentError;
    .locals 3

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_BANK_ACCOUNT_HOLDER_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v2, "The account holder is not valid."

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPaymentParamsBankAccountIbanInvalidError()Lcom/oppwa/mobile/connect/exception/PaymentError;
    .locals 3

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_BANK_ACCOUNT_IBAN_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v2, "The IBAN is not valid."

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPaymentParamsBankAccountNumberInvalidError()Lcom/oppwa/mobile/connect/exception/PaymentError;
    .locals 3

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_BANK_ACCOUNT_NUMBER_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v2, "The Account number is not valid"

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPaymentParamsBankNameInvalidError()Lcom/oppwa/mobile/connect/exception/PaymentError;
    .locals 3

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_BANK_ACCOUNT_BANK_NAME_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v2, "The bank name is not valid"

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPaymentParamsCardCvvInvalidError()Lcom/oppwa/mobile/connect/exception/PaymentError;
    .locals 3

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_CARD_CVV_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v2, "The card cvv is not valid."

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPaymentParamsCardExpiredError()Lcom/oppwa/mobile/connect/exception/PaymentError;
    .locals 3

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_CARD_EXPIRED:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v2, "The card is expired."

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPaymentParamsCardHolderInvalidError()Lcom/oppwa/mobile/connect/exception/PaymentError;
    .locals 3

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_CARD_HOLDER_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v2, "The card holder is not valid."

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPaymentParamsCardMonthInvalidError()Lcom/oppwa/mobile/connect/exception/PaymentError;
    .locals 3

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_CARD_MONTH_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v2, "The card expiry month is not valid."

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPaymentParamsCardNumberInvalidError()Lcom/oppwa/mobile/connect/exception/PaymentError;
    .locals 3

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_CARD_NUMBER_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v2, "The card number is not valid."

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPaymentParamsCardYearInvalidError()Lcom/oppwa/mobile/connect/exception/PaymentError;
    .locals 3

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_CARD_YEAR_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v2, "The card expiry year is not valid."

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPaymentParamsCheckoutIdInvalidError()Lcom/oppwa/mobile/connect/exception/PaymentError;
    .locals 3

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_CHECKOUT_ID_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v2, "The checkout ID is not valid."

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPaymentParamsCountryCodeInvalidError()Lcom/oppwa/mobile/connect/exception/PaymentError;
    .locals 3

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_COUNTRY_CODE_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v2, "The country code is not valid"

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPaymentParamsEmailInvalidError()Lcom/oppwa/mobile/connect/exception/PaymentError;
    .locals 3

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_EMAIL_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v2, "The email is not valid"

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPaymentParamsGooglePayTokenInvalidError()Lcom/oppwa/mobile/connect/exception/PaymentError;
    .locals 3

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_GOOGLEPAY:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v2, "The Google Pay payment token data is invalid"

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPaymentParamsInvalidError()Lcom/oppwa/mobile/connect/exception/PaymentError;
    .locals 3

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v2, "The payment params are not valid."

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPaymentParamsMobilePhoneInvalidError()Lcom/oppwa/mobile/connect/exception/PaymentError;
    .locals 3

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_MOBILE_PHONE_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v2, "The mobile phone number is not valid"

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPaymentParamsNationalIdentifierInvalidError()Lcom/oppwa/mobile/connect/exception/PaymentError;
    .locals 3

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_NATIONAL_IDENTIFIER_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v2, "The national identifier is not valid"

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPaymentParamsPaymentSchemeInvalidError()Lcom/oppwa/mobile/connect/exception/PaymentError;
    .locals 3

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_PAYMENT_BRAND_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v2, "The payment scheme is not valid."

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPaymentParamsPaymentTokenMissingError()Lcom/oppwa/mobile/connect/exception/PaymentError;
    .locals 3

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_PAYMENT_TOKEN_MISSING:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v2, "The payment token is missing."

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPaymentParamsSofortCountryInvalidError()Lcom/oppwa/mobile/connect/exception/PaymentError;
    .locals 3

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_BANK_ACCOUNT_COUNTRY_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v2, "The SOFORT country is not valid."

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPaymentParamsTokenInvalidError()Lcom/oppwa/mobile/connect/exception/PaymentError;
    .locals 3

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_TOKEN_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v2, "The provided token is not valid."

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPaymentProviderConnectionFailureError()Lcom/oppwa/mobile/connect/exception/PaymentError;
    .locals 3

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PROVIDER_CONNECTION_FAILURE:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v2, "Unexpected connection error."

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPaymentProviderConnectionMalformedResponseError(Ljava/lang/String;)Lcom/oppwa/mobile/connect/exception/PaymentError;
    .locals 3

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PROVIDER_CONNECTION_MALFORMED_RESPONSE:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v2, "Malformed server response."

    invoke-direct {v0, v1, v2, p0}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPaymentProviderInternalError(Ljava/lang/String;)Lcom/oppwa/mobile/connect/exception/PaymentError;
    .locals 2

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PROVIDER_INTERNAL_ERROR:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    invoke-direct {v0, v1, p0}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPaymentProviderNotInitializedError()Lcom/oppwa/mobile/connect/exception/PaymentError;
    .locals 3

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PROVIDER_NOT_INITIALIZED:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v2, "The provider must be initialized prior to using any methods. Please initialize the provider via initializeProvider()"

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getThreeDS2ChallengeCanceledError()Lcom/oppwa/mobile/connect/exception/PaymentError;
    .locals 3

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_THREEDS2_CANCELED:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v2, "Challenge is canceled."

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getThreeDS2Error(Ljava/lang/String;)Lcom/oppwa/mobile/connect/exception/PaymentError;
    .locals 2

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_THREEDS2_FAILED:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    invoke-direct {v0, v1, p0}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getTransactionAbortedError()Lcom/oppwa/mobile/connect/exception/PaymentError;
    .locals 3

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_TRANSACTION_ABORTED:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const-string v2, "Transaction was aborted."

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getUnexpectedExceptionError(Ljava/lang/Exception;)Lcom/oppwa/mobile/connect/exception/PaymentError;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 3
    new-instance p0, Lcom/oppwa/mobile/connect/exception/PaymentError;

    sget-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_UNEXPECTED_EXCEPTION:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 5
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unexpected exception is thrown. See stack trace in getErrorInfo()."

    invoke-direct {p0, v1, v2, v0}, Lcom/oppwa/mobile/connect/exception/PaymentError;-><init>(Lcom/oppwa/mobile/connect/exception/ErrorCode;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    check-cast p1, Lcom/oppwa/mobile/connect/exception/PaymentError;

    .line 5
    iget-object v2, p0, Lcom/oppwa/mobile/connect/exception/PaymentError;->a:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/exception/PaymentError;->a:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/exception/PaymentError;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/exception/PaymentError;->b:Ljava/lang/String;

    .line 6
    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/exception/PaymentError;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/oppwa/mobile/connect/exception/PaymentError;->c:Ljava/lang/String;

    .line 7
    invoke-static {v2, p1}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getErrorCode()Lcom/oppwa/mobile/connect/exception/ErrorCode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/exception/PaymentError;->a:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    return-object v0
.end method

.method public getErrorInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/exception/PaymentError;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/exception/PaymentError;->b:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/exception/PaymentError;->a:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/oppwa/mobile/connect/exception/PaymentError;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/oppwa/mobile/connect/exception/PaymentError;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public setErrorCode(Lcom/oppwa/mobile/connect/exception/ErrorCode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/exception/PaymentError;->a:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    return-void
.end method

.method public setErrorInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/exception/PaymentError;->c:Ljava/lang/String;

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/exception/PaymentError;->b:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/oppwa/mobile/connect/exception/PaymentError;->a:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Lcom/oppwa/mobile/connect/exception/PaymentError;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/oppwa/mobile/connect/exception/PaymentError;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
