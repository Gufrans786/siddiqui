.class Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel$a;
.super Ljava/lang/Object;
.source "CheckoutViewModel.java"

# interfaces
.implements Lcom/oppwa/mobile/connect/provider/ThreeDSWorkflowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;->sendTransaction(Landroid/app/Activity;Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;Lcom/oppwa/mobile/connect/provider/Transaction;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/IPaymentProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;

.field final synthetic c:Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;


# direct methods
.method constructor <init>(Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;Landroid/app/Activity;Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel$a;->c:Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel;

    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel$a;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel$a;->b:Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThreeDSChallengeRequired()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel$a;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public onThreeDSConfigRequired()Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CheckoutViewModel$a;->b:Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;

    return-object v0
.end method
