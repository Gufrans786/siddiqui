.class public final enum Lcom/oppwa/mobile/connect/payment/CVVMode;
.super Ljava/lang/Enum;
.source "CVVMode.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oppwa/mobile/connect/payment/CVVMode;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oppwa/mobile/connect/payment/CVVMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum NONE:Lcom/oppwa/mobile/connect/payment/CVVMode;

.field public static final enum OPTIONAL:Lcom/oppwa/mobile/connect/payment/CVVMode;

.field public static final enum REQUIRED:Lcom/oppwa/mobile/connect/payment/CVVMode;

.field private static final synthetic a:[Lcom/oppwa/mobile/connect/payment/CVVMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/payment/CVVMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/payment/CVVMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppwa/mobile/connect/payment/CVVMode;->NONE:Lcom/oppwa/mobile/connect/payment/CVVMode;

    .line 2
    new-instance v1, Lcom/oppwa/mobile/connect/payment/CVVMode;

    const-string v2, "REQUIRED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/oppwa/mobile/connect/payment/CVVMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/oppwa/mobile/connect/payment/CVVMode;->REQUIRED:Lcom/oppwa/mobile/connect/payment/CVVMode;

    .line 3
    new-instance v2, Lcom/oppwa/mobile/connect/payment/CVVMode;

    const-string v3, "OPTIONAL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/oppwa/mobile/connect/payment/CVVMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/oppwa/mobile/connect/payment/CVVMode;->OPTIONAL:Lcom/oppwa/mobile/connect/payment/CVVMode;

    .line 4
    filled-new-array {v0, v1, v2}, [Lcom/oppwa/mobile/connect/payment/CVVMode;

    move-result-object v0

    sput-object v0, Lcom/oppwa/mobile/connect/payment/CVVMode;->a:[Lcom/oppwa/mobile/connect/payment/CVVMode;

    .line 20
    new-instance v0, Lcom/oppwa/mobile/connect/payment/CVVMode$a;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/payment/CVVMode$a;-><init>()V

    sput-object v0, Lcom/oppwa/mobile/connect/payment/CVVMode;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/CVVMode;
    .locals 1

    .line 1
    const-class v0, Lcom/oppwa/mobile/connect/payment/CVVMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oppwa/mobile/connect/payment/CVVMode;

    return-object p0
.end method

.method public static values()[Lcom/oppwa/mobile/connect/payment/CVVMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/payment/CVVMode;->a:[Lcom/oppwa/mobile/connect/payment/CVVMode;

    invoke-virtual {v0}, [Lcom/oppwa/mobile/connect/payment/CVVMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppwa/mobile/connect/payment/CVVMode;

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
