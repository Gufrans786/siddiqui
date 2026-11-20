.class public final enum Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;
.super Ljava/lang/Enum;
.source "CheckoutStorePaymentDetailsMode.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final enum ALWAYS:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum NEVER:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;

.field public static final enum PROMPT:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;

.field private static final synthetic a:[Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;

    const-string v1, "ALWAYS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;->ALWAYS:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;

    .line 2
    new-instance v1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;

    const-string v2, "PROMPT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;->PROMPT:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;

    .line 3
    new-instance v2, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;

    const-string v3, "NEVER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;->NEVER:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;

    .line 4
    filled-new-array {v0, v1, v2}, [Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;

    move-result-object v0

    sput-object v0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;->a:[Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;

    .line 31
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode$a;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode$a;-><init>()V

    sput-object v0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getByName(Ljava/lang/String;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;
    .locals 5

    .line 1
    invoke-static {}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;->values()[Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;
    .locals 1

    .line 1
    const-class v0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;

    return-object p0
.end method

.method public static values()[Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;->a:[Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;

    invoke-virtual {v0}, [Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppwa/mobile/connect/checkout/meta/CheckoutStorePaymentDetailsMode;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

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
