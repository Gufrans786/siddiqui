.class Lcom/oppwa/mobile/connect/checkout/dialog/u;
.super Ljava/lang/Object;
.source "KlarnaHelper.java"


# static fields
.field private static final a:Ljava/lang/String; = "com.oppwa.mobile.connect.checkout.dialog.u"

.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    .line 1
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NL"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "AT"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "DK"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "FI"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "NO"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "SE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppwa/mobile/connect/checkout/dialog/u;->b:[Ljava/lang/String;

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Lcom/oppwa/mobile/connect/checkout/dialog/v;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 7
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 9
    new-instance p0, Lcom/oppwa/mobile/connect/checkout/dialog/v;

    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/v;-><init>()V

    .line 10
    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/u;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppwa/mobile/connect/checkout/dialog/v;->d(Ljava/lang/String;)V

    .line 11
    const-string v2, "linkTitle"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/u;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppwa/mobile/connect/checkout/dialog/v;->b(Ljava/lang/String;)V

    .line 12
    const-string v2, "link"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/u;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppwa/mobile/connect/checkout/dialog/v;->a(Ljava/lang/String;)V

    .line 13
    const-string/jumbo v2, "terms"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/u;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/v;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 15
    sget-object p1, Lcom/oppwa/mobile/connect/checkout/dialog/u;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    .line 18
    invoke-static {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/u;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 21
    :cond_0
    const-string p0, "DE"

    return-object p0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 22
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 5
    :cond_0
    sget-object v0, Lcom/oppwa/mobile/connect/checkout/dialog/u;->b:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 6
    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method
