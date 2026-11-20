.class public final enum Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType;
.super Ljava/lang/Enum;
.source "CheckoutBrandDetectionType.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final enum BINLIST:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum REGEX:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType;

.field private static final synthetic a:[Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType;

    const-string v1, "REGEX"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType;->REGEX:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType;

    .line 6
    new-instance v1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType;

    const-string v2, "BINLIST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType;->BINLIST:Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType;

    .line 7
    filled-new-array {v0, v1}, [Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType;

    move-result-object v0

    sput-object v0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType;->a:[Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType;

    .line 30
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType$a;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType$a;-><init>()V

    sput-object v0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType;
    .locals 1

    .line 1
    const-class v0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType;

    return-object p0
.end method

.method public static values()[Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType;
    .locals 1

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType;->a:[Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType;

    invoke-virtual {v0}, [Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppwa/mobile/connect/checkout/meta/CheckoutBrandDetectionType;

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
