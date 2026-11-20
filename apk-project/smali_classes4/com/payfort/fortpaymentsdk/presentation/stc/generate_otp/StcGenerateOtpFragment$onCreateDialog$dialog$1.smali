.class public final Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment$onCreateDialog$dialog$1;
.super Landroid/app/Dialog;
.source "StcGenerateOtpFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment$onCreateDialog$dialog$1",
        "Landroid/app/Dialog;",
        "onBackPressed",
        "",
        "fortpayment_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;


# direct methods
.method constructor <init>(Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment$onCreateDialog$dialog$1;->this$0:Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;

    .line 55
    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment$onCreateDialog$dialog$1;->this$0:Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;

    invoke-static {v0}, Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;->access$onBackPressed(Lcom/payfort/fortpaymentsdk/presentation/stc/generate_otp/StcGenerateOtpFragment;)V

    return-void
.end method
