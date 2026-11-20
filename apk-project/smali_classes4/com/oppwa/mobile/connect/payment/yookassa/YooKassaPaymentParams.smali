.class public Lcom/oppwa/mobile/connect/payment/yookassa/YooKassaPaymentParams;
.super Lcom/oppwa/mobile/connect/payment/VirtualAccountPaymentParams;
.source "YooKassaPaymentParams.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oppwa/mobile/connect/payment/yookassa/YooKassaPaymentParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/payment/yookassa/YooKassaPaymentParams$a;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/payment/yookassa/YooKassaPaymentParams$a;-><init>()V

    sput-object v0, Lcom/oppwa/mobile/connect/payment/yookassa/YooKassaPaymentParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/payment/VirtualAccountPaymentParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oppwa/mobile/connect/exception/PaymentException;
        }
    .end annotation

    .line 1
    const-string v0, "YANDEX_CHECKOUT"

    invoke-direct {p0, p1, v0, p2}, Lcom/oppwa/mobile/connect/payment/VirtualAccountPaymentParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
