.class Lcom/oppwa/mobile/connect/provider/h;
.super Ljava/lang/Object;
.source "ThreeDSWebParametersUtils.java"


# direct methods
.method static a()Ljava/lang/String;
    .locals 1

    .line 52
    const-string v0, "5"

    return-object v0
.end method

.method static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 3
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    .line 6
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 7
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 8
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 14
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 15
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    :cond_1
    move v0, v2

    .line 20
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v3, "status_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 30
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v6, 0x10102eb

    filled-new-array {v6}, [I

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v6, 0x0

    .line 33
    invoke-virtual {v3, v2, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v6, v6

    .line 34
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v7, "navigation_bar_height"

    invoke-virtual {v3, v7, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_3

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :cond_3
    sub-int/2addr v0, v1

    sub-int/2addr v0, v6

    sub-int/2addr v0, v2

    if-lez v0, :cond_4

    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 51
    :cond_4
    const-string p0, "0"

    return-object p0
.end method

.method static a(Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 54
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p0

    div-int/lit16 p0, p0, 0x3e8

    div-int/lit8 p0, p0, 0x3c

    neg-int p0, p0

    .line 56
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/content/Context;Lcom/oppwa/mobile/connect/payment/PaymentParams;)V
    .locals 2

    .line 57
    invoke-static {}, Lcom/oppwa/mobile/connect/provider/h;->d()Ljava/lang/String;

    move-result-object v0

    .line 58
    const-string v1, "customer.browser.language"

    invoke-virtual {p1, v1, v0}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 64
    invoke-static {}, Lcom/oppwa/mobile/connect/provider/h;->b()Ljava/lang/String;

    move-result-object v0

    .line 65
    const-string v1, "customer.browser.javaEnabled"

    invoke-virtual {p1, v1, v0}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 71
    invoke-static {}, Lcom/oppwa/mobile/connect/provider/h;->c()Ljava/lang/String;

    move-result-object v0

    .line 72
    const-string v1, "customer.browser.javascriptEnabled"

    invoke-virtual {p1, v1, v0}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 78
    invoke-static {p0}, Lcom/oppwa/mobile/connect/provider/h;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 79
    const-string v1, "customer.browser.userAgent"

    invoke-virtual {p1, v1, v0}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 85
    invoke-static {p0}, Lcom/oppwa/mobile/connect/provider/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 86
    const-string v1, "customer.browser.screenHeight"

    invoke-virtual {p1, v1, v0}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 92
    invoke-static {p0}, Lcom/oppwa/mobile/connect/provider/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 93
    const-string v0, "customer.browser.screenWidth"

    invoke-virtual {p1, v0, p0}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 99
    invoke-static {}, Lcom/oppwa/mobile/connect/provider/h;->e()Ljava/lang/String;

    move-result-object p0

    .line 100
    const-string v0, "customer.browser.screenColorDepth"

    invoke-virtual {p1, v0, p0}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 106
    invoke-static {}, Lcom/oppwa/mobile/connect/provider/h;->a()Ljava/lang/String;

    move-result-object p0

    .line 107
    const-string v0, "customer.browser.challengeWindow"

    invoke-virtual {p1, v0, p0}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    .line 113
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p0

    invoke-static {p0}, Lcom/oppwa/mobile/connect/provider/h;->a(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object p0

    .line 114
    const-string v0, "customer.browser.timezone"

    invoke-virtual {p1, v0, p0}, Lcom/oppwa/mobile/connect/payment/PaymentParams;->addParam(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method static b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "false"

    return-object v0
.end method

.method static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 4
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-eqz p0, :cond_1

    .line 7
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 8
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 9
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 12
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 15
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 16
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 19
    :cond_1
    const-string p0, "0"

    return-object p0
.end method

.method static c()Ljava/lang/String;
    .locals 1

    .line 1
    const-string/jumbo v0, "true"

    return-object v0
.end method

.method static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static d()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static e()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "32"

    return-object v0
.end method
