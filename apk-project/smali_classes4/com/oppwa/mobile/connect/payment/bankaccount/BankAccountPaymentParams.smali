.class public Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;
.super Lcom/oppwa/mobile/connect/payment/PaymentParams;
.source "BankAccountPaymentParams.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;",
            ">;"
        }
    .end annotation
.end field

.field private static n:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private static o:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private static p:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private static q:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private static r:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private static s:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private static t:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected f:[B

.field protected g:[B

.field protected h:[B

.field protected i:[B

.field protected j:[B

.field protected k:[B

.field protected l:[B

.field protected m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams$a;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams$a;-><init>()V

    sput-object v0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 105
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/payment/PaymentParams;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->m:Z

    .line 214
    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/Utils;->readByteArray(Landroid/os/Parcel;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->f:[B

    .line 215
    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/Utils;->readByteArray(Landroid/os/Parcel;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->g:[B

    .line 216
    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/Utils;->readByteArray(Landroid/os/Parcel;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->h:[B

    .line 217
    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/Utils;->readByteArray(Landroid/os/Parcel;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->i:[B

    .line 218
    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/Utils;->readByteArray(Landroid/os/Parcel;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->j:[B

    .line 219
    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/Utils;->readByteArray(Landroid/os/Parcel;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->k:[B

    .line 220
    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/Utils;->readByteArray(Landroid/os/Parcel;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->l:[B

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->m:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/payment/PaymentParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->m:Z

    .line 98
    invoke-static {p3}, Lcom/oppwa/mobile/connect/utils/Utils;->normalizeHolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/Utils;->bytesFromString(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->f:[B

    .line 99
    invoke-static {p4}, Lcom/oppwa/mobile/connect/utils/Utils;->bytesFromString(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->g:[B

    .line 100
    invoke-static {p5}, Lcom/oppwa/mobile/connect/utils/Utils;->bytesFromString(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->h:[B

    .line 101
    invoke-static {p6}, Lcom/oppwa/mobile/connect/utils/Utils;->bytesFromString(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->i:[B

    .line 102
    invoke-static {p7}, Lcom/oppwa/mobile/connect/utils/Utils;->bytesFromString(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->j:[B

    .line 103
    invoke-static {p8}, Lcom/oppwa/mobile/connect/utils/Utils;->bytesFromString(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->k:[B

    .line 104
    invoke-static {p9}, Lcom/oppwa/mobile/connect/utils/Utils;->bytesFromString(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->l:[B

    return-void
.end method

.method public static createDirectDebitSepaPaymentParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/payment/bankaccount/a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/oppwa/mobile/connect/payment/bankaccount/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static createGiroPayPaymentParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/payment/bankaccount/b;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/oppwa/mobile/connect/payment/bankaccount/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createIdealPaymentParams(Ljava/lang/String;Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/payment/bankaccount/c;

    invoke-direct {v0, p0, p1}, Lcom/oppwa/mobile/connect/payment/bankaccount/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createPaytrailPaymentParams(Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/payment/bankaccount/d;

    invoke-direct {v0, p0}, Lcom/oppwa/mobile/connect/payment/bankaccount/d;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createSofortPaymentParams(Ljava/lang/String;Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/payment/bankaccount/e;

    invoke-direct {v0, p0, p1}, Lcom/oppwa/mobile/connect/payment/bankaccount/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static e()Ljava/util/regex/Pattern;
    .locals 2

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->r:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/ref/SoftReference;

    .line 4
    const-string v1, "[0-9]{3,27}"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->r:Ljava/lang/ref/SoftReference;

    .line 7
    :cond_1
    sget-object v0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->r:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private static f()Ljava/util/regex/Pattern;
    .locals 2

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->t:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/ref/SoftReference;

    .line 4
    const-string v1, "[0-9]{1,12}"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->t:Ljava/lang/ref/SoftReference;

    .line 7
    :cond_1
    sget-object v0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->t:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private static g()Ljava/util/regex/Pattern;
    .locals 2

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->q:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/ref/SoftReference;

    const-string v1, "[\\s\\S]{1,255}"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->q:Ljava/lang/ref/SoftReference;

    .line 6
    :cond_1
    sget-object v0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->q:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private static h()Ljava/util/regex/Pattern;
    .locals 2

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->s:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/ref/SoftReference;

    .line 4
    const-string v1, "[a-zA-Z0-9]{8}$|^[a-zA-Z0-9]{11}"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->s:Ljava/lang/ref/SoftReference;

    .line 7
    :cond_1
    sget-object v0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->s:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private static i()Ljava/util/regex/Pattern;
    .locals 2

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->p:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/ref/SoftReference;

    const-string v1, "[A-Z]{2}"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->p:Ljava/lang/ref/SoftReference;

    .line 6
    :cond_1
    sget-object v0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->p:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static isAccountNumberValid(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->e()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isBankCodeValid(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->f()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isBankNameValid(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->g()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isBicValid(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->h()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isCountryValid(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->i()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isHolderValid(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->j()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {p0}, Lcom/oppwa/mobile/connect/utils/Utils;->normalizeHolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isIbanValid(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->k()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static j()Ljava/util/regex/Pattern;
    .locals 2

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->n:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/ref/SoftReference;

    const-string v1, ".{3,128}"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->n:Ljava/lang/ref/SoftReference;

    .line 6
    :cond_1
    sget-object v0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->n:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private static k()Ljava/util/regex/Pattern;
    .locals 2

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->o:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/ref/SoftReference;

    .line 4
    const-string v1, "[a-zA-Z]{2}[0-9]{2}[a-zA-Z0-9]{11,27}"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->o:Ljava/lang/ref/SoftReference;

    .line 7
    :cond_1
    sget-object v0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->o:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    return-object v0
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

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-super {p0, p1}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 9
    :cond_2
    check-cast p1, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;

    .line 11
    iget-boolean v2, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->m:Z

    iget-boolean v3, p1, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->m:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->f:[B

    iget-object v3, p1, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->f:[B

    .line 12
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->g:[B

    iget-object v3, p1, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->g:[B

    .line 13
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->h:[B

    iget-object v3, p1, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->h:[B

    .line 14
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->i:[B

    iget-object v3, p1, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->i:[B

    .line 15
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->j:[B

    iget-object v3, p1, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->j:[B

    .line 16
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->k:[B

    iget-object v3, p1, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->k:[B

    .line 17
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->l:[B

    iget-object p1, p1, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->l:[B

    .line 18
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public getAccountNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->h:[B

    invoke-static {v0}, Lcom/oppwa/mobile/connect/utils/Utils;->stringFromBytes([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBankCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->j:[B

    invoke-static {v0}, Lcom/oppwa/mobile/connect/utils/Utils;->stringFromBytes([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBankName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->l:[B

    invoke-static {v0}, Lcom/oppwa/mobile/connect/utils/Utils;->stringFromBytes([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->i:[B

    invoke-static {v0}, Lcom/oppwa/mobile/connect/utils/Utils;->stringFromBytes([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->k:[B

    invoke-static {v0}, Lcom/oppwa/mobile/connect/utils/Utils;->stringFromBytes([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreator()Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method

.method public getHolder()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->f:[B

    invoke-static {v0}, Lcom/oppwa/mobile/connect/utils/Utils;->stringFromBytes([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIban()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->g:[B

    invoke-static {v0}, Lcom/oppwa/mobile/connect/utils/Utils;->stringFromBytes([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParamsForRequest()Ljava/util/Map;
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
    invoke-super {p0}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->getParamsForRequest()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->f:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->g:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->h:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->i:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->j:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->k:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-object v1, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->l:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget-boolean v1, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->m:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isTokenizationEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->m:Z

    return v0
.end method

.method public mask()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->g:[B

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->getIban()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->g:[B

    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3
    iget-object p2, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->f:[B

    invoke-static {p1, p2}, Lcom/oppwa/mobile/connect/utils/Utils;->writeByteArray(Landroid/os/Parcel;[B)V

    .line 4
    iget-object p2, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->g:[B

    invoke-static {p1, p2}, Lcom/oppwa/mobile/connect/utils/Utils;->writeByteArray(Landroid/os/Parcel;[B)V

    .line 5
    iget-object p2, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->h:[B

    invoke-static {p1, p2}, Lcom/oppwa/mobile/connect/utils/Utils;->writeByteArray(Landroid/os/Parcel;[B)V

    .line 6
    iget-object p2, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->i:[B

    invoke-static {p1, p2}, Lcom/oppwa/mobile/connect/utils/Utils;->writeByteArray(Landroid/os/Parcel;[B)V

    .line 7
    iget-object p2, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->j:[B

    invoke-static {p1, p2}, Lcom/oppwa/mobile/connect/utils/Utils;->writeByteArray(Landroid/os/Parcel;[B)V

    .line 8
    iget-object p2, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->k:[B

    invoke-static {p1, p2}, Lcom/oppwa/mobile/connect/utils/Utils;->writeByteArray(Landroid/os/Parcel;[B)V

    .line 9
    iget-object p2, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->l:[B

    invoke-static {p1, p2}, Lcom/oppwa/mobile/connect/utils/Utils;->writeByteArray(Landroid/os/Parcel;[B)V

    .line 10
    iget-boolean p2, p0, Lcom/oppwa/mobile/connect/payment/bankaccount/BankAccountPaymentParams;->m:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
