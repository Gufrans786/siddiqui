.class public final enum Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;
.super Ljava/lang/Enum;
.source "CheckoutThreeDS2Flow.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final enum APP:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DISABLED:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;

.field public static final enum WEB:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;

.field private static final synthetic a:[Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;

    const-string v1, "APP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;->APP:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;

    .line 5
    new-instance v1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;

    const-string v2, "WEB"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;->WEB:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;

    .line 9
    new-instance v2, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;

    const-string v3, "DISABLED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;->DISABLED:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;

    .line 10
    filled-new-array {v0, v1, v2}, [Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;

    move-result-object v0

    sput-object v0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;->a:[Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;

    .line 35
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow$a;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow$a;-><init>()V

    sput-object v0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;
    .locals 1

    .line 1
    const-class v0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;

    return-object p0
.end method

.method public static values()[Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;
    .locals 1

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;->a:[Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;

    invoke-virtual {v0}, [Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppwa/mobile/connect/checkout/meta/CheckoutThreeDS2Flow;

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
