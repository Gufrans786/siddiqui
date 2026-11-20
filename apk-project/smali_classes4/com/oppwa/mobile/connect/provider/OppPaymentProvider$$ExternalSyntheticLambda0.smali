.class public final synthetic Lcom/oppwa/mobile/connect/provider/OppPaymentProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;

.field public final synthetic f$1:Lcom/oppwa/mobile/connect/provider/Transaction;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/oppwa/mobile/connect/provider/ITransactionListener;


# direct methods
.method public synthetic constructor <init>(Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;Lcom/oppwa/mobile/connect/provider/Transaction;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/ITransactionListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider$$ExternalSyntheticLambda0;->f$0:Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;

    iput-object p2, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider$$ExternalSyntheticLambda0;->f$1:Lcom/oppwa/mobile/connect/provider/Transaction;

    iput-object p3, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider$$ExternalSyntheticLambda0;->f$3:Lcom/oppwa/mobile/connect/provider/ITransactionListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider$$ExternalSyntheticLambda0;->f$0:Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider$$ExternalSyntheticLambda0;->f$1:Lcom/oppwa/mobile/connect/provider/Transaction;

    iget-object v2, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider$$ExternalSyntheticLambda0;->f$3:Lcom/oppwa/mobile/connect/provider/ITransactionListener;

    invoke-static {v0, v1, v2, v3}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->$r8$lambda$C8HkIG1QIbo6Z1PMBHfxoMmR-Bg(Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;Lcom/oppwa/mobile/connect/provider/Transaction;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/ITransactionListener;)V

    return-void
.end method
