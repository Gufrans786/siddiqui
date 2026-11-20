.class public final enum Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;
.super Ljava/lang/Enum;
.source "PaymentConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsa/lg/android/locate/payment/PaymentConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransactionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;

.field public static final enum COMPLETED:Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;

.field public static final enum NEW:Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;

.field public static final enum PENDING:Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;


# direct methods
.method private static synthetic $values()[Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;
    .locals 3

    .line 10
    sget-object v0, Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;->NEW:Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;

    sget-object v1, Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;->PENDING:Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;

    sget-object v2, Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;->COMPLETED:Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;

    filled-new-array {v0, v1, v2}, [Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;

    const-string v1, "NEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;->NEW:Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;

    new-instance v0, Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;

    const-string v1, "PENDING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;->PENDING:Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;

    new-instance v0, Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;

    const-string v1, "COMPLETED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;->COMPLETED:Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;

    .line 10
    invoke-static {}, Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;->$values()[Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;

    move-result-object v0

    sput-object v0, Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;->$VALUES:[Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;
    .locals 1

    .line 10
    const-class v0, Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;

    return-object p0
.end method

.method public static values()[Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;
    .locals 1

    .line 10
    sget-object v0, Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;->$VALUES:[Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;

    invoke-virtual {v0}, [Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;

    return-object v0
.end method
