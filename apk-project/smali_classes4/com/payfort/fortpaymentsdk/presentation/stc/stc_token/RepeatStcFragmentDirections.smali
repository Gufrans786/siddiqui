.class public Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections;
.super Ljava/lang/Object;
.source "RepeatStcFragmentDirections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcPayFragment;,
        Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static actionRepeatStcFragmentToStcGenerateOtpFragment(Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;
    .locals 2

    .line 24
    new-instance v0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcGenerateOtpFragment;-><init>(Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections-IA;)V

    return-object v0
.end method

.method public static actionRepeatStcFragmentToStcPayFragment(Ljava/lang/String;)Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcPayFragment;
    .locals 2

    .line 30
    new-instance v0, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcPayFragment;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections$ActionRepeatStcFragmentToStcPayFragment;-><init>(Ljava/lang/String;Lcom/payfort/fortpaymentsdk/presentation/stc/stc_token/RepeatStcFragmentDirections-IA;)V

    return-object v0
.end method
