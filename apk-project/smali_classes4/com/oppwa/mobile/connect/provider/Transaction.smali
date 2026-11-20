.class public Lcom/oppwa/mobile/connect/provider/Transaction;
.super Ljava/lang/Object;
.source "Transaction.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ALIPAY_SIGNED_ORDER_INFO_KEY:Ljava/lang/String; = "alipaySignedInfo"

.field public static final BANCONTACT_LINK_APP_SCHEME_URL_KEY:Ljava/lang/String; = "secureTransactionId"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oppwa/mobile/connect/provider/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field public static final KLARNA_INLINE_CALLBACK_URL_KEY:Ljava/lang/String; = "callbackUrl"

.field public static final KLARNA_INLINE_CLIENT_TOKEN_KEY:Ljava/lang/String; = "clientToken"

.field public static final KLARNA_INLINE_FAILURE_CALLBACK_URL_KEY:Ljava/lang/String; = "failureCallbackUrl"

.field public static final KLARNA_INLINE_INITIAL_TRANSACTION_ID:Ljava/lang/String; = "connectorId"


# instance fields
.field private final a:Lcom/oppwa/mobile/connect/payment/PaymentParams;

.field private b:Lcom/oppwa/mobile/connect/provider/TransactionType;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;

.field private f:Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/provider/Transaction$a;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/provider/Transaction$a;-><init>()V

    sput-object v0, Lcom/oppwa/mobile/connect/provider/Transaction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oppwa/mobile/connect/provider/Transaction;->g:Ljava/util/Map;

    .line 24
    const-class v0, Lcom/oppwa/mobile/connect/provider/TransactionType;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oppwa/mobile/connect/provider/TransactionType;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/provider/Transaction;->b:Lcom/oppwa/mobile/connect/provider/TransactionType;

    .line 25
    const-class v0, Lcom/oppwa/mobile/connect/payment/PaymentParams;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oppwa/mobile/connect/payment/PaymentParams;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/provider/Transaction;->a:Lcom/oppwa/mobile/connect/payment/PaymentParams;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/provider/Transaction;->c:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/provider/Transaction;->d:Ljava/lang/String;

    .line 28
    const-class v0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/provider/Transaction;->e:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;

    .line 29
    const-class v0, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/provider/Transaction;->f:Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo;

    .line 30
    const-class v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/oppwa/mobile/connect/utils/ParcelUtils;->readMapFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/provider/Transaction;->g:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oppwa/mobile/connect/provider/Transaction$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/provider/Transaction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/oppwa/mobile/connect/payment/PaymentParams;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oppwa/mobile/connect/provider/Transaction;->g:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 10
    iput-object p1, p0, Lcom/oppwa/mobile/connect/provider/Transaction;->a:Lcom/oppwa/mobile/connect/payment/PaymentParams;

    return-void

    .line 11
    :cond_0
    new-instance p1, Lcom/oppwa/mobile/connect/exception/PaymentException;

    invoke-static {}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getPaymentParamsInvalidError()Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/oppwa/mobile/connect/exception/PaymentException;-><init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    throw p1
.end method


# virtual methods
.method a(Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/oppwa/mobile/connect/provider/Transaction;->e:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;

    return-void
.end method

.method a(Lcom/oppwa/mobile/connect/provider/TransactionType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/provider/Transaction;->b:Lcom/oppwa/mobile/connect/provider/TransactionType;

    return-void
.end method

.method a(Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/oppwa/mobile/connect/provider/Transaction;->f:Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo;

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/oppwa/mobile/connect/provider/Transaction;->c:Ljava/lang/String;

    return-void
.end method

.method a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/oppwa/mobile/connect/provider/Transaction;->g:Ljava/util/Map;

    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/provider/Transaction;->d:Ljava/lang/String;

    return-void
.end method

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
    check-cast p1, Lcom/oppwa/mobile/connect/provider/Transaction;

    .line 5
    iget-object v2, p0, Lcom/oppwa/mobile/connect/provider/Transaction;->b:Lcom/oppwa/mobile/connect/provider/TransactionType;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/provider/Transaction;->b:Lcom/oppwa/mobile/connect/provider/TransactionType;

    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/provider/Transaction;->a:Lcom/oppwa/mobile/connect/payment/PaymentParams;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/provider/Transaction;->a:Lcom/oppwa/mobile/connect/payment/PaymentParams;

    .line 6
    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/provider/Transaction;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/provider/Transaction;->c:Ljava/lang/String;

    .line 7
    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/provider/Transaction;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/provider/Transaction;->d:Ljava/lang/String;

    .line 8
    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/provider/Transaction;->e:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/provider/Transaction;->e:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;

    .line 9
    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/provider/Transaction;->g:Ljava/util/Map;

    iget-object v3, p1, Lcom/oppwa/mobile/connect/provider/Transaction;->g:Ljava/util/Map;

    .line 10
    invoke-static {v2, v3}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppwa/mobile/connect/provider/Transaction;->f:Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo;

    iget-object p1, p1, Lcom/oppwa/mobile/connect/provider/Transaction;->f:Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo;

    .line 11
    invoke-static {v2, p1}, Lcom/oppwa/mobile/connect/utils/Utils;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getBrandSpecificInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/Transaction;->g:Ljava/util/Map;

    return-object v0
.end method

.method public getPaymentParams()Lcom/oppwa/mobile/connect/payment/PaymentParams;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/Transaction;->a:Lcom/oppwa/mobile/connect/payment/PaymentParams;

    return-object v0
.end method

.method public getRedirectUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/Transaction;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getThreeDS2Info()Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/Transaction;->e:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;

    return-object v0
.end method

.method public getThreeDS2MethodRedirectUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/Transaction;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionType()Lcom/oppwa/mobile/connect/provider/TransactionType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/Transaction;->b:Lcom/oppwa/mobile/connect/provider/TransactionType;

    return-object v0
.end method

.method public getYooKassaInfo()Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/Transaction;->f:Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/Transaction;->b:Lcom/oppwa/mobile/connect/provider/TransactionType;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v2, p0, Lcom/oppwa/mobile/connect/provider/Transaction;->a:Lcom/oppwa/mobile/connect/payment/PaymentParams;

    invoke-virtual {v2}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v2, p0, Lcom/oppwa/mobile/connect/provider/Transaction;->c:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v2, p0, Lcom/oppwa/mobile/connect/provider/Transaction;->d:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v2, p0, Lcom/oppwa/mobile/connect/provider/Transaction;->e:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-object v2, p0, Lcom/oppwa/mobile/connect/provider/Transaction;->g:Ljava/util/Map;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v2, p0, Lcom/oppwa/mobile/connect/provider/Transaction;->f:Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/oppwa/mobile/connect/provider/Transaction;->b:Lcom/oppwa/mobile/connect/provider/TransactionType;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2
    iget-object p2, p0, Lcom/oppwa/mobile/connect/provider/Transaction;->a:Lcom/oppwa/mobile/connect/payment/PaymentParams;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3
    iget-object p2, p0, Lcom/oppwa/mobile/connect/provider/Transaction;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/oppwa/mobile/connect/provider/Transaction;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/oppwa/mobile/connect/provider/Transaction;->e:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 6
    iget-object p2, p0, Lcom/oppwa/mobile/connect/provider/Transaction;->f:Lcom/oppwa/mobile/connect/provider/model/yookassa/YooKassaInfo;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 7
    iget-object p2, p0, Lcom/oppwa/mobile/connect/provider/Transaction;->g:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/oppwa/mobile/connect/utils/ParcelUtils;->writeMapToParcel(Landroid/os/Parcel;Ljava/util/Map;)V

    return-void
.end method
