.class public final synthetic Lcom/oppwa/mobile/connect/provider/OppPaymentProvider$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;

.field public final synthetic f$1:Lcom/oppwa/mobile/connect/provider/ThreeDS2AuthResponseListener;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/oppwa/mobile/connect/provider/Transaction;


# direct methods
.method public synthetic constructor <init>(Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;Lcom/oppwa/mobile/connect/provider/ThreeDS2AuthResponseListener;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/Transaction;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider$$ExternalSyntheticLambda5;->f$0:Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;

    iput-object p2, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider$$ExternalSyntheticLambda5;->f$1:Lcom/oppwa/mobile/connect/provider/ThreeDS2AuthResponseListener;

    iput-object p3, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider$$ExternalSyntheticLambda5;->f$3:Lcom/oppwa/mobile/connect/provider/Transaction;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider$$ExternalSyntheticLambda5;->f$0:Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider$$ExternalSyntheticLambda5;->f$1:Lcom/oppwa/mobile/connect/provider/ThreeDS2AuthResponseListener;

    iget-object v2, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider$$ExternalSyntheticLambda5;->f$3:Lcom/oppwa/mobile/connect/provider/Transaction;

    invoke-static {v0, v1, v2, v3}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;->$r8$lambda$CTt-xnZVRZH9vO0IN9x4MfiXpIE(Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;Lcom/oppwa/mobile/connect/provider/ThreeDS2AuthResponseListener;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/Transaction;)V

    return-void
.end method
