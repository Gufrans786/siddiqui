.class public Lsa/lg/android/locate/payment/PaymentConstants;
.super Ljava/lang/Object;
.source "PaymentConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsa/lg/android/locate/payment/PaymentConstants$EventProperty;,
        Lsa/lg/android/locate/payment/PaymentConstants$TransactionState;
    }
.end annotation


# static fields
.field public static HYPER_PAY_DEEP_LINK:Ljava/lang/String; = "sa.lgandroidlocate"

.field public static PAYFORT_DEEP_LINK:Ljava/lang/String; = "locate.go"

.field public static eventCompleted:Ljava/lang/String; = "transactionComplete"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
