.class Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment$a;
.super Landroidx/activity/OnBackPressedCallback;
.source "ThreeDSWebFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;->onAttach(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;


# direct methods
.method constructor <init>(Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment$a;->a:Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;

    invoke-direct {p0, p2}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment$a;->a:Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;

    invoke-static {}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getThreeDS2ChallengeCanceledError()Lcom/oppwa/mobile/connect/exception/PaymentError;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;->a(Lcom/oppwa/mobile/connect/provider/ThreeDSWebFragment;Lcom/oppwa/mobile/connect/exception/PaymentError;)V

    return-void
.end method
