.class public final synthetic Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity$$ExternalSyntheticLambda0;->f$0:Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity$$ExternalSyntheticLambda0;->f$0:Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;

    check-cast p1, Lcom/oppwa/mobile/connect/payment/CheckoutInfo;

    invoke-virtual {v0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseServiceActivity;->a(Lcom/oppwa/mobile/connect/payment/CheckoutInfo;)V

    return-void
.end method
