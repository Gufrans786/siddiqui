.class public final enum Lcom/oppwa/mobile/connect/exception/ErrorCode;
.super Ljava/lang/Enum;
.source "ErrorCode.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oppwa/mobile/connect/exception/ErrorCode;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oppwa/mobile/connect/exception/ErrorCode;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum ERROR_CODE_BANCONTACT_LINK:Lcom/oppwa/mobile/connect/exception/ErrorCode;

.field public static final enum ERROR_CODE_CHECKOUT_SETTINGS_MISSED:Lcom/oppwa/mobile/connect/exception/ErrorCode;

.field public static final enum ERROR_CODE_GOOGLEPAY:Lcom/oppwa/mobile/connect/exception/ErrorCode;

.field public static final enum ERROR_CODE_KLARNA_INLINE:Lcom/oppwa/mobile/connect/exception/ErrorCode;

.field public static final enum ERROR_CODE_NO_AVAILABLE_PAYMENT_METHODS:Lcom/oppwa/mobile/connect/exception/ErrorCode;

.field public static final enum ERROR_CODE_PAYMENT_METHOD_NOT_AVAILABLE:Lcom/oppwa/mobile/connect/exception/ErrorCode;

.field public static final enum ERROR_CODE_PAYMENT_PARAMS_ACCOUNT_VERIFICATION_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

.field public static final enum ERROR_CODE_PAYMENT_PARAMS_BANK_ACCOUNT_BANK_CODE_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

.field public static final enum ERROR_CODE_PAYMENT_PARAMS_BANK_ACCOUNT_BANK_NAME_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

.field public static final enum ERROR_CODE_PAYMENT_PARAMS_BANK_ACCOUNT_BIC_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

.field public static final enum ERROR_CODE_PAYMENT_PARAMS_BANK_ACCOUNT_COUNTRY_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

.field public static final enum ERROR_CODE_PAYMENT_PARAMS_BANK_ACCOUNT_HOLDER_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

.field public static final enum ERROR_CODE_PAYMENT_PARAMS_BANK_ACCOUNT_IBAN_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

.field public static final enum ERROR_CODE_PAYMENT_PARAMS_BANK_ACCOUNT_NUMBER_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

.field public static final enum ERROR_CODE_PAYMENT_PARAMS_CARD_BRAND_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

.field public static final enum ERROR_CODE_PAYMENT_PARAMS_CARD_CVV_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

.field public static final enum ERROR_CODE_PAYMENT_PARAMS_CARD_EXPIRED:Lcom/oppwa/mobile/connect/exception/ErrorCode;

.field public static final enum ERROR_CODE_PAYMENT_PARAMS_CARD_HOLDER_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

.field public static final enum ERROR_CODE_PAYMENT_PARAMS_CARD_MONTH_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

.field public static final enum ERROR_CODE_PAYMENT_PARAMS_CARD_NUMBER_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

.field public static final enum ERROR_CODE_PAYMENT_PARAMS_CARD_YEAR_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

.field public static final enum ERROR_CODE_PAYMENT_PARAMS_CHECKOUT_ID_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

.field public static final enum ERROR_CODE_PAYMENT_PARAMS_COUNTRY_CODE_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

.field public static final enum ERROR_CODE_PAYMENT_PARAMS_EMAIL_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

.field public static final enum ERROR_CODE_PAYMENT_PARAMS_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

.field public static final enum ERROR_CODE_PAYMENT_PARAMS_MOBILE_PHONE_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

.field public static final enum ERROR_CODE_PAYMENT_PARAMS_NATIONAL_IDENTIFIER_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

.field public static final enum ERROR_CODE_PAYMENT_PARAMS_PAYMENT_BRAND_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

.field public static final enum ERROR_CODE_PAYMENT_PARAMS_PAYMENT_TOKEN_MISSING:Lcom/oppwa/mobile/connect/exception/ErrorCode;

.field public static final enum ERROR_CODE_PAYMENT_PARAMS_TOKENIZATION_UNSUPPORTED:Lcom/oppwa/mobile/connect/exception/ErrorCode;

.field public static final enum ERROR_CODE_PAYMENT_PARAMS_TOKEN_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

.field public static final enum ERROR_CODE_PAYMENT_PROVIDER_CONNECTION_FAILURE:Lcom/oppwa/mobile/connect/exception/ErrorCode;

.field public static final enum ERROR_CODE_PAYMENT_PROVIDER_CONNECTION_MALFORMED_RESPONSE:Lcom/oppwa/mobile/connect/exception/ErrorCode;

.field public static final enum ERROR_CODE_PAYMENT_PROVIDER_INTERNAL_ERROR:Lcom/oppwa/mobile/connect/exception/ErrorCode;

.field public static final enum ERROR_CODE_PAYMENT_PROVIDER_NOT_INITIALIZED:Lcom/oppwa/mobile/connect/exception/ErrorCode;

.field public static final enum ERROR_CODE_PAYMENT_PROVIDER_SECURITY_INVALID_CHECKSUM:Lcom/oppwa/mobile/connect/exception/ErrorCode;

.field public static final enum ERROR_CODE_PAYMENT_PROVIDER_SECURITY_SSL_VALIDATION_FAILED:Lcom/oppwa/mobile/connect/exception/ErrorCode;

.field public static final enum ERROR_CODE_THREEDS2_CANCELED:Lcom/oppwa/mobile/connect/exception/ErrorCode;

.field public static final enum ERROR_CODE_THREEDS2_FAILED:Lcom/oppwa/mobile/connect/exception/ErrorCode;

.field public static final enum ERROR_CODE_TRANSACTION_ABORTED:Lcom/oppwa/mobile/connect/exception/ErrorCode;

.field public static final enum ERROR_CODE_UNEXPECTED_EXCEPTION:Lcom/oppwa/mobile/connect/exception/ErrorCode;

.field private static final synthetic b:[Lcom/oppwa/mobile/connect/exception/ErrorCode;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 44

    .line 1
    new-instance v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const/4 v0, 0x0

    const/16 v2, 0x3e8

    const-string v3, "ERROR_CODE_PAYMENT_PARAMS_INVALID"

    invoke-direct {v1, v3, v0, v2}, Lcom/oppwa/mobile/connect/exception/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 2
    new-instance v2, Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const/4 v0, 0x1

    const/16 v3, 0x3f2

    const-string v4, "ERROR_CODE_PAYMENT_PARAMS_CHECKOUT_ID_INVALID"

    invoke-direct {v2, v4, v0, v3}, Lcom/oppwa/mobile/connect/exception/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_CHECKOUT_ID_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 3
    new-instance v3, Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const/4 v0, 0x2

    const/16 v4, 0x3f3

    const-string v5, "ERROR_CODE_PAYMENT_PARAMS_PAYMENT_BRAND_INVALID"

    invoke-direct {v3, v5, v0, v4}, Lcom/oppwa/mobile/connect/exception/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_PAYMENT_BRAND_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 4
    new-instance v4, Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const/4 v0, 0x3

    const/16 v5, 0x442

    const-string v6, "ERROR_CODE_PAYMENT_PARAMS_TOKEN_INVALID"

    invoke-direct {v4, v6, v0, v5}, Lcom/oppwa/mobile/connect/exception/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_TOKEN_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 5
    new-instance v5, Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const/4 v0, 0x4

    const/16 v6, 0x443

    const-string v7, "ERROR_CODE_PAYMENT_PARAMS_TOKENIZATION_UNSUPPORTED"

    invoke-direct {v5, v7, v0, v6}, Lcom/oppwa/mobile/connect/exception/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_TOKENIZATION_UNSUPPORTED:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 6
    new-instance v6, Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const/4 v0, 0x5

    const/16 v7, 0x456

    const-string v8, "ERROR_CODE_PAYMENT_PARAMS_CARD_HOLDER_INVALID"

    invoke-direct {v6, v8, v0, v7}, Lcom/oppwa/mobile/connect/exception/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_CARD_HOLDER_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 7
    new-instance v7, Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const/4 v0, 0x6

    const/16 v8, 0x457

    const-string v9, "ERROR_CODE_PAYMENT_PARAMS_CARD_NUMBER_INVALID"

    invoke-direct {v7, v9, v0, v8}, Lcom/oppwa/mobile/connect/exception/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_CARD_NUMBER_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 8
    new-instance v8, Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const/4 v0, 0x7

    const/16 v9, 0x458

    const-string v10, "ERROR_CODE_PAYMENT_PARAMS_CARD_BRAND_INVALID"

    invoke-direct {v8, v10, v0, v9}, Lcom/oppwa/mobile/connect/exception/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_CARD_BRAND_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 9
    new-instance v9, Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const/16 v0, 0x8

    const/16 v10, 0x459

    const-string v11, "ERROR_CODE_PAYMENT_PARAMS_CARD_MONTH_INVALID"

    invoke-direct {v9, v11, v0, v10}, Lcom/oppwa/mobile/connect/exception/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_CARD_MONTH_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 10
    new-instance v10, Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const/16 v0, 0x9

    const/16 v11, 0x45a

    const-string v12, "ERROR_CODE_PAYMENT_PARAMS_CARD_YEAR_INVALID"

    invoke-direct {v10, v12, v0, v11}, Lcom/oppwa/mobile/connect/exception/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_CARD_YEAR_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 11
    new-instance v11, Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const/16 v0, 0xa

    const/16 v12, 0x45b

    const-string v13, "ERROR_CODE_PAYMENT_PARAMS_CARD_EXPIRED"

    invoke-direct {v11, v13, v0, v12}, Lcom/oppwa/mobile/connect/exception/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_CARD_EXPIRED:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 12
    new-instance v12, Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const/16 v0, 0xb

    const/16 v13, 0x45c

    const-string v14, "ERROR_CODE_PAYMENT_PARAMS_CARD_CVV_INVALID"

    invoke-direct {v12, v14, v0, v13}, Lcom/oppwa/mobile/connect/exception/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_CARD_CVV_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 13
    new-instance v13, Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const/16 v0, 0xc

    const/16 v14, 0x46a

    const-string v15, "ERROR_CODE_PAYMENT_PARAMS_BANK_ACCOUNT_HOLDER_INVALID"

    invoke-direct {v13, v15, v0, v14}, Lcom/oppwa/mobile/connect/exception/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_BANK_ACCOUNT_HOLDER_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 14
    new-instance v14, Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const/16 v0, 0xd

    const/16 v15, 0x46b

    move-object/from16 v16, v1

    const-string v1, "ERROR_CODE_PAYMENT_PARAMS_BANK_ACCOUNT_IBAN_INVALID"

    invoke-direct {v14, v1, v0, v15}, Lcom/oppwa/mobile/connect/exception/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_BANK_ACCOUNT_IBAN_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 15
    new-instance v15, Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const/16 v0, 0xe

    const/16 v1, 0x46c

    move-object/from16 v17, v2

    const-string v2, "ERROR_CODE_PAYMENT_PARAMS_BANK_ACCOUNT_COUNTRY_INVALID"

    invoke-direct {v15, v2, v0, v1}, Lcom/oppwa/mobile/connect/exception/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_BANK_ACCOUNT_COUNTRY_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 16
    new-instance v0, Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const/16 v1, 0xf

    const/16 v2, 0x46d

    move-object/from16 v18, v3

    const-string v3, "ERROR_CODE_PAYMENT_PARAMS_BANK_ACCOUNT_BANK_NAME_INVALID"

    invoke-direct {v0, v3, v1, v2}, Lcom/oppwa/mobile/connect/exception/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_BANK_ACCOUNT_BANK_NAME_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 17
    new-instance v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const/16 v2, 0x10

    const/16 v3, 0x46e

    move-object/from16 v19, v0

    const-string v0, "ERROR_CODE_PAYMENT_PARAMS_BANK_ACCOUNT_NUMBER_INVALID"

    invoke-direct {v1, v0, v2, v3}, Lcom/oppwa/mobile/connect/exception/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_BANK_ACCOUNT_NUMBER_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 18
    new-instance v0, Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const/16 v2, 0x11

    const/16 v3, 0x46f

    move-object/from16 v20, v1

    const-string v1, "ERROR_CODE_PAYMENT_PARAMS_BANK_ACCOUNT_BIC_INVALID"

    invoke-direct {v0, v1, v2, v3}, Lcom/oppwa/mobile/connect/exception/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_BANK_ACCOUNT_BIC_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 19
    new-instance v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const/16 v2, 0x12

    const/16 v3, 0x470

    move-object/from16 v21, v0

    const-string v0, "ERROR_CODE_PAYMENT_PARAMS_BANK_ACCOUNT_BANK_CODE_INVALID"

    invoke-direct {v1, v0, v2, v3}, Lcom/oppwa/mobile/connect/exception/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_BANK_ACCOUNT_BANK_CODE_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 20
    new-instance v0, Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const/16 v2, 0x13

    const/16 v3, 0x488

    move-object/from16 v22, v1

    const-string v1, "ERROR_CODE_PAYMENT_PARAMS_MOBILE_PHONE_INVALID"

    invoke-direct {v0, v1, v2, v3}, Lcom/oppwa/mobile/connect/exception/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_MOBILE_PHONE_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 21
    new-instance v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const/16 v2, 0x14

    const/16 v3, 0x489

    move-object/from16 v23, v0

    const-string v0, "ERROR_CODE_PAYMENT_PARAMS_COUNTRY_CODE_INVALID"

    invoke-direct {v1, v0, v2, v3}, Lcom/oppwa/mobile/connect/exception/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_COUNTRY_CODE_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 22
    new-instance v0, Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const/16 v2, 0x15

    const/16 v3, 0x48a

    move-object/from16 v24, v1

    const-string v1, "ERROR_CODE_PAYMENT_PARAMS_EMAIL_INVALID"

    invoke-direct {v0, v1, v2, v3}, Lcom/oppwa/mobile/connect/exception/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_EMAIL_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 23
    new-instance v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const/16 v2, 0x16

    const/16 v3, 0x48b

    move-object/from16 v25, v0

    const-string v0, "ERROR_CODE_PAYMENT_PARAMS_NATIONAL_IDENTIFIER_INVALID"

    invoke-direct {v1, v0, v2, v3}, Lcom/oppwa/mobile/connect/exception/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_NATIONAL_IDENTIFIER_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 24
    new-instance v0, Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const/16 v2, 0x17

    const/16 v3, 0x492

    move-object/from16 v26, v1

    const-string v1, "ERROR_CODE_PAYMENT_PARAMS_ACCOUNT_VERIFICATION_INVALID"

    invoke-direct {v0, v1, v2, v3}, Lcom/oppwa/mobile/connect/exception/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_ACCOUNT_VERIFICATION_INVALID:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 25
    new-instance v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const/16 v2, 0x18

    const/16 v3, 0x49c

    move-object/from16 v27, v0

    const-string v0, "ERROR_CODE_PAYMENT_PARAMS_PAYMENT_TOKEN_MISSING"

    invoke-direct {v1, v0, v2, v3}, Lcom/oppwa/mobile/connect/exception/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PARAMS_PAYMENT_TOKEN_MISSING:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 26
    new-instance v0, Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const/16 v2, 0x19

    const/16 v3, 0x7d0

    move-object/from16 v28, v1

    const-string v1, "ERROR_CODE_PAYMENT_PROVIDER_NOT_INITIALIZED"

    invoke-direct {v0, v1, v2, v3}, Lcom/oppwa/mobile/connect/exception/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PROVIDER_NOT_INITIALIZED:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 27
    new-instance v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const/16 v2, 0x1a

    const/16 v3, 0x7d1

    move-object/from16 v29, v0

    const-string v0, "ERROR_CODE_PAYMENT_PROVIDER_INTERNAL_ERROR"

    invoke-direct {v1, v0, v2, v3}, Lcom/oppwa/mobile/connect/exception/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PROVIDER_INTERNAL_ERROR:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 28
    new-instance v0, Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const/16 v2, 0x1b

    const/16 v3, 0x834

    move-object/from16 v30, v1

    const-string v1, "ERROR_CODE_PAYMENT_PROVIDER_SECURITY_INVALID_CHECKSUM"

    invoke-direct {v0, v1, v2, v3}, Lcom/oppwa/mobile/connect/exception/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PROVIDER_SECURITY_INVALID_CHECKSUM:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 29
    new-instance v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const/16 v2, 0x1c

    const/16 v3, 0x835

    move-object/from16 v31, v0

    const-string v0, "ERROR_CODE_PAYMENT_PROVIDER_SECURITY_SSL_VALIDATION_FAILED"

    invoke-direct {v1, v0, v2, v3}, Lcom/oppwa/mobile/connect/exception/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PROVIDER_SECURITY_SSL_VALIDATION_FAILED:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 30
    new-instance v0, Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const/16 v2, 0x1d

    const/16 v3, 0xbb8

    move-object/from16 v32, v1

    const-string v1, "ERROR_CODE_PAYMENT_PROVIDER_CONNECTION_FAILURE"

    invoke-direct {v0, v1, v2, v3}, Lcom/oppwa/mobile/connect/exception/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PROVIDER_CONNECTION_FAILURE:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 31
    new-instance v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const/16 v2, 0x1e

    const/16 v3, 0xc1c

    move-object/from16 v33, v0

    const-string v0, "ERROR_CODE_PAYMENT_PROVIDER_CONNECTION_MALFORMED_RESPONSE"

    invoke-direct {v1, v0, v2, v3}, Lcom/oppwa/mobile/connect/exception/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_PROVIDER_CONNECTION_MALFORMED_RESPONSE:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 32
    new-instance v0, Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const/16 v2, 0x1f

    const/16 v3, 0xfa0

    move-object/from16 v34, v1

    const-string v1, "ERROR_CODE_NO_AVAILABLE_PAYMENT_METHODS"

    invoke-direct {v0, v1, v2, v3}, Lcom/oppwa/mobile/connect/exception/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_NO_AVAILABLE_PAYMENT_METHODS:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 33
    new-instance v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const/16 v2, 0x20

    const/16 v3, 0xfa1

    move-object/from16 v35, v0

    const-string v0, "ERROR_CODE_PAYMENT_METHOD_NOT_AVAILABLE"

    invoke-direct {v1, v0, v2, v3}, Lcom/oppwa/mobile/connect/exception/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_PAYMENT_METHOD_NOT_AVAILABLE:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 34
    new-instance v0, Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const/16 v2, 0x21

    const/16 v3, 0xfa2

    move-object/from16 v36, v1

    const-string v1, "ERROR_CODE_CHECKOUT_SETTINGS_MISSED"

    invoke-direct {v0, v1, v2, v3}, Lcom/oppwa/mobile/connect/exception/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_CHECKOUT_SETTINGS_MISSED:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 35
    new-instance v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const/16 v2, 0x22

    const/16 v3, 0xfa3

    move-object/from16 v37, v0

    const-string v0, "ERROR_CODE_TRANSACTION_ABORTED"

    invoke-direct {v1, v0, v2, v3}, Lcom/oppwa/mobile/connect/exception/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_TRANSACTION_ABORTED:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 36
    new-instance v0, Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const/16 v2, 0x23

    const/16 v3, 0xfa4

    move-object/from16 v38, v1

    const-string v1, "ERROR_CODE_UNEXPECTED_EXCEPTION"

    invoke-direct {v0, v1, v2, v3}, Lcom/oppwa/mobile/connect/exception/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_UNEXPECTED_EXCEPTION:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 37
    new-instance v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const/16 v2, 0x24

    const/16 v3, 0x1388

    move-object/from16 v39, v0

    const-string v0, "ERROR_CODE_GOOGLEPAY"

    invoke-direct {v1, v0, v2, v3}, Lcom/oppwa/mobile/connect/exception/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_GOOGLEPAY:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 38
    new-instance v0, Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const/16 v2, 0x25

    const/16 v3, 0x1389

    move-object/from16 v40, v1

    const-string v1, "ERROR_CODE_KLARNA_INLINE"

    invoke-direct {v0, v1, v2, v3}, Lcom/oppwa/mobile/connect/exception/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_KLARNA_INLINE:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 39
    new-instance v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const/16 v2, 0x26

    const/16 v3, 0x138a

    move-object/from16 v41, v0

    const-string v0, "ERROR_CODE_BANCONTACT_LINK"

    invoke-direct {v1, v0, v2, v3}, Lcom/oppwa/mobile/connect/exception/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_BANCONTACT_LINK:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 40
    new-instance v0, Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const/16 v2, 0x27

    const/16 v3, 0x1770

    move-object/from16 v42, v1

    const-string v1, "ERROR_CODE_THREEDS2_FAILED"

    invoke-direct {v0, v1, v2, v3}, Lcom/oppwa/mobile/connect/exception/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_THREEDS2_FAILED:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 41
    new-instance v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;

    const/16 v2, 0x28

    const/16 v3, 0x1771

    move-object/from16 v43, v0

    const-string v0, "ERROR_CODE_THREEDS2_CANCELED"

    invoke-direct {v1, v0, v2, v3}, Lcom/oppwa/mobile/connect/exception/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/oppwa/mobile/connect/exception/ErrorCode;->ERROR_CODE_THREEDS2_CANCELED:Lcom/oppwa/mobile/connect/exception/ErrorCode;

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v17, v20

    move-object/from16 v18, v21

    move-object/from16 v20, v23

    move-object/from16 v21, v24

    move-object/from16 v23, v26

    move-object/from16 v24, v27

    move-object/from16 v26, v29

    move-object/from16 v27, v30

    move-object/from16 v29, v32

    move-object/from16 v30, v33

    move-object/from16 v32, v35

    move-object/from16 v33, v36

    move-object/from16 v35, v38

    move-object/from16 v36, v39

    move-object/from16 v38, v41

    move-object/from16 v39, v42

    move-object/from16 v41, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v19

    move-object/from16 v19, v22

    move-object/from16 v22, v25

    move-object/from16 v25, v28

    move-object/from16 v28, v31

    move-object/from16 v31, v34

    move-object/from16 v34, v37

    move-object/from16 v37, v40

    move-object/from16 v40, v43

    .line 42
    filled-new-array/range {v1 .. v41}, [Lcom/oppwa/mobile/connect/exception/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/oppwa/mobile/connect/exception/ErrorCode;->b:[Lcom/oppwa/mobile/connect/exception/ErrorCode;

    .line 96
    new-instance v0, Lcom/oppwa/mobile/connect/exception/ErrorCode$a;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/exception/ErrorCode$a;-><init>()V

    sput-object v0, Lcom/oppwa/mobile/connect/exception/ErrorCode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/oppwa/mobile/connect/exception/ErrorCode;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oppwa/mobile/connect/exception/ErrorCode;
    .locals 1

    .line 1
    const-class v0, Lcom/oppwa/mobile/connect/exception/ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oppwa/mobile/connect/exception/ErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/oppwa/mobile/connect/exception/ErrorCode;
    .locals 1

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/exception/ErrorCode;->b:[Lcom/oppwa/mobile/connect/exception/ErrorCode;

    invoke-virtual {v0}, [Lcom/oppwa/mobile/connect/exception/ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppwa/mobile/connect/exception/ErrorCode;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/oppwa/mobile/connect/exception/ErrorCode;->a:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
