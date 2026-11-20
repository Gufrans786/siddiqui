.class public final enum Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;
.super Ljava/lang/Enum;
.source "ThreeDS2Info.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppwa/mobile/connect/provider/ThreeDS2Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AuthStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final enum ATTEMPT_PROCESSING_PERFORMED:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

.field public static final enum AUTHENTICATED:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

.field public static final enum AUTH_PARAMS_REQUIRED:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

.field public static final enum CHALLENGE_REQUIRED:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DECOUPLED_CONFIRMED:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

.field public static final enum DENIED:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

.field public static final enum FAILED:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

.field public static final enum INFORMATIONAL_ONLY:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

.field public static final enum REJECTED:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

.field private static final synthetic a:[Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    const-string v1, "AUTHENTICATED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;->AUTHENTICATED:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    .line 6
    new-instance v1, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    const-string v2, "ATTEMPT_PROCESSING_PERFORMED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;->ATTEMPT_PROCESSING_PERFORMED:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    .line 11
    new-instance v2, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    const-string v3, "CHALLENGE_REQUIRED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;->CHALLENGE_REQUIRED:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    .line 16
    new-instance v3, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    const-string v4, "DECOUPLED_CONFIRMED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;->DECOUPLED_CONFIRMED:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    .line 21
    new-instance v4, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    const-string v5, "DENIED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;->DENIED:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    .line 26
    new-instance v5, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    const-string v6, "REJECTED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;->REJECTED:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    .line 31
    new-instance v6, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    const-string v7, "FAILED"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;->FAILED:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    .line 36
    new-instance v7, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    const-string v8, "INFORMATIONAL_ONLY"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;->INFORMATIONAL_ONLY:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    .line 41
    new-instance v8, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    const-string v9, "AUTH_PARAMS_REQUIRED"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;->AUTH_PARAMS_REQUIRED:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    .line 42
    filled-new-array/range {v0 .. v8}, [Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    move-result-object v0

    sput-object v0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;->a:[Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    .line 112
    new-instance v0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus$a;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus$a;-><init>()V

    sput-object v0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method static a(Ljava/lang/String;)Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "Y"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_1
    const-string v0, "U"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_2
    const-string v0, "R"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_3
    const-string v0, "N"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    const-string v0, "I"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_5
    const-string v0, "D"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_6
    const-string v0, "C"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_7
    const-string v0, "A"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :pswitch_0
    sget-object p0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;->AUTHENTICATED:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    return-object p0

    .line 15
    :pswitch_1
    sget-object p0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;->FAILED:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    return-object p0

    .line 16
    :pswitch_2
    sget-object p0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;->REJECTED:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    return-object p0

    .line 17
    :pswitch_3
    sget-object p0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;->DENIED:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    return-object p0

    .line 23
    :pswitch_4
    sget-object p0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;->INFORMATIONAL_ONLY:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    return-object p0

    .line 24
    :pswitch_5
    sget-object p0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;->DECOUPLED_CONFIRMED:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    return-object p0

    .line 25
    :pswitch_6
    sget-object p0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;->CHALLENGE_REQUIRED:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    return-object p0

    .line 26
    :pswitch_7
    sget-object p0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;->ATTEMPT_PROCESSING_PERFORMED:Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_7
        0x43 -> :sswitch_6
        0x44 -> :sswitch_5
        0x49 -> :sswitch_4
        0x4e -> :sswitch_3
        0x52 -> :sswitch_2
        0x55 -> :sswitch_1
        0x59 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;
    .locals 1

    .line 1
    const-class v0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    return-object p0
.end method

.method public static values()[Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;->a:[Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

    invoke-virtual {v0}, [Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppwa/mobile/connect/provider/ThreeDS2Info$AuthStatus;

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
