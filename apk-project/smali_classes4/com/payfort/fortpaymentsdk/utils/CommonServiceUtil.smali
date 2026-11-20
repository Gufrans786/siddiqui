.class public Lcom/payfort/fortpaymentsdk/utils/CommonServiceUtil;
.super Ljava/lang/Object;
.source "CommonServiceUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static displayConnectionAlert(Landroid/view/View;Landroid/content/Context;)Lcom/google/android/material/snackbar/Snackbar;
    .locals 2

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/payfort/fortpaymentsdk/R$string;->pf_no_connection:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 61
    invoke-static {p0, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/payfort/fortpaymentsdk/R$string;->pf_wifi_settings:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/payfort/fortpaymentsdk/utils/CommonServiceUtil$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/payfort/fortpaymentsdk/utils/CommonServiceUtil$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    .line 66
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-object p0
.end method

.method public static getEnvironment(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    .line 25
    const-string v0, "environment"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMerchantRequestObjFromIntent(Landroid/content/Intent;)Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;
    .locals 2

    .line 43
    const-string v0, "merchantReq"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    .line 51
    new-instance p0, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;

    invoke-direct {p0}, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;->setRequestMap(Ljava/util/Map;)V

    :cond_1
    return-object p0
.end method

.method public static hackMaskedCardForArabic(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x2a

    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$displayConnectionAlert$0(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 64
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
