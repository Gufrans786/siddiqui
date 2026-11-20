.class public final enum Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;
.super Ljava/lang/Enum;
.source "TransactionStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ATTEMPT_PROCESSING_PERFORMED:Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;

.field public static final enum AUTHENTICATED:Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;

.field public static final enum DENIED:Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;

.field public static final enum FAILED:Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;

.field public static final enum REJECTED:Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;

.field private static final synthetic a:[Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;

    const-string v1, "AUTHENTICATED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;->AUTHENTICATED:Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;

    .line 6
    new-instance v1, Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;

    const-string v2, "ATTEMPT_PROCESSING_PERFORMED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;->ATTEMPT_PROCESSING_PERFORMED:Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;

    .line 11
    new-instance v2, Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;

    const-string v3, "DENIED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;->DENIED:Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;

    .line 16
    new-instance v3, Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;

    const-string v4, "REJECTED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;->REJECTED:Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;

    .line 21
    new-instance v4, Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;

    const-string v5, "FAILED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;->FAILED:Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;

    .line 22
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;

    move-result-object v0

    sput-object v0, Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;->a:[Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;

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

.method public static fromString(Ljava/lang/String;)Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "Y"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "U"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "R"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "N"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "A"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :pswitch_0
    sget-object p0, Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;->AUTHENTICATED:Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;

    return-object p0

    .line 11
    :pswitch_1
    sget-object p0, Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;->FAILED:Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;

    return-object p0

    .line 12
    :pswitch_2
    sget-object p0, Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;->REJECTED:Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;

    return-object p0

    .line 13
    :pswitch_3
    sget-object p0, Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;->DENIED:Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;

    return-object p0

    .line 14
    :pswitch_4
    sget-object p0, Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;->ATTEMPT_PROCESSING_PERFORMED:Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_4
        0x4e -> :sswitch_3
        0x52 -> :sswitch_2
        0x55 -> :sswitch_1
        0x59 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;
    .locals 1

    .line 1
    const-class v0, Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;

    return-object p0
.end method

.method public static values()[Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;->a:[Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;

    invoke-virtual {v0}, [Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;

    return-object v0
.end method
