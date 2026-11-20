.class public final enum Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;
.super Ljava/lang/Enum;
.source "PaymentConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsa/lg/android/locate/payment/PaymentConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;

.field public static final enum canceled:Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;

.field public static final enum complete:Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;

.field public static final enum error:Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;


# direct methods
.method private static synthetic $values()[Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;
    .locals 3

    .line 13
    sget-object v0, Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;->complete:Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;

    sget-object v1, Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;->error:Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;

    sget-object v2, Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;->canceled:Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;

    filled-new-array {v0, v1, v2}, [Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;

    const-string v1, "complete"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;->complete:Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;

    new-instance v0, Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;

    const-string v1, "error"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;->error:Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;

    new-instance v0, Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;

    const-string v1, "canceled"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;->canceled:Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;

    .line 13
    invoke-static {}, Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;->$values()[Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;

    move-result-object v0

    sput-object v0, Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;->$VALUES:[Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;
    .locals 1

    .line 13
    const-class v0, Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;

    return-object p0
.end method

.method public static values()[Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;
    .locals 1

    .line 13
    sget-object v0, Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;->$VALUES:[Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;

    invoke-virtual {v0}, [Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;

    return-object v0
.end method
