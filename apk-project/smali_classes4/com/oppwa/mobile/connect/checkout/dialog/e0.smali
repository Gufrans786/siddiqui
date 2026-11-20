.class Lcom/oppwa/mobile/connect/checkout/dialog/e0;
.super Ljava/lang/Object;
.source "TransactionResult.java"


# instance fields
.field private final a:Lcom/oppwa/mobile/connect/provider/Transaction;

.field private final b:Lcom/oppwa/mobile/connect/exception/PaymentError;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/exception/PaymentError;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e0;->a:Lcom/oppwa/mobile/connect/provider/Transaction;

    .line 3
    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e0;->b:Lcom/oppwa/mobile/connect/exception/PaymentError;

    return-void
.end method


# virtual methods
.method public a()Lcom/oppwa/mobile/connect/exception/PaymentError;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e0;->b:Lcom/oppwa/mobile/connect/exception/PaymentError;

    return-object v0
.end method

.method public a(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e0;->c:Z

    return-void
.end method

.method public b()Lcom/oppwa/mobile/connect/provider/Transaction;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e0;->a:Lcom/oppwa/mobile/connect/provider/Transaction;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/e0;->c:Z

    return v0
.end method
