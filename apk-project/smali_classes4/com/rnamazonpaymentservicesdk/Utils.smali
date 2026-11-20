.class public Lcom/rnamazonpaymentservicesdk/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static rand:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/rnamazonpaymentservicesdk/Utils;->rand:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectDirectPayRequestMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 3

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 78
    const-string v1, "command"

    const-string v2, "AUTHORIZATION"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v1, "customer_email"

    const-string v2, "Sam@gmail.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v1, "currency"

    const-string v2, "AED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v1, "amount"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string p2, "language"

    const-string v1, "en"

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string p2, "card_security_code"

    const-string v1, "123"

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string/jumbo p2, "token_name"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0xa

    .line 85
    invoke-static {p1}, Lcom/rnamazonpaymentservicesdk/Utils;->getAlphaNumericString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "merchant_reference"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string p1, "sdk_token"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static collectRequestMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 3

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58
    const-string v1, "command"

    const-string v2, "PURCHASE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "customer_email"

    const-string v2, "Sam@gmail.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v1, "phone_number"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v1, "currency"

    const-string v2, "AED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v1, "amount"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string p1, "language"

    const-string v1, "en"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0xa

    .line 64
    invoke-static {p1}, Lcom/rnamazonpaymentservicesdk/Utils;->getAlphaNumericString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "merchant_reference"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string p1, "customer_name"

    const-string v1, "Sam"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string p1, "customer_ip"

    const-string v1, "172.150.16.10"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string/jumbo p1, "token_name"

    const-string v1, "Op9Vmp"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string p1, "payment_option"

    const-string v1, "VISA"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string p1, "eci"

    const-string v1, "ECOMMERCE"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string p1, "order_description"

    const-string v1, "DESCRIPTION"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string/jumbo p1, "settlement_reference"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string p1, "sdk_token"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static customizeButton(Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;Ljava/util/HashMap;)Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;
    .locals 8

    .line 92
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    const-string/jumbo v1, "textFontFamily"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 94
    const-string v2, "backgroundColor"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 95
    const-string/jumbo v3, "textColor"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 96
    const-string/jumbo v4, "textSize"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    .line 97
    const-string v5, "borderWidth"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    .line 98
    const-string v6, "borderRadius"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    .line 99
    const-string v7, "borderColor"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 102
    invoke-virtual {v4}, Ljava/lang/Double;->floatValue()F

    move-result v4

    .line 105
    invoke-virtual {v5}, Ljava/lang/Double;->intValue()I

    move-result v5

    .line 107
    invoke-virtual {v6}, Ljava/lang/Double;->intValue()I

    move-result v6

    const/4 v7, 0x0

    .line 109
    invoke-static {v1, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 111
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 112
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float v2, v6

    .line 113
    invoke-virtual {v7, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 114
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v7, v5, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;->setText(Ljava/lang/CharSequence;)V

    .line 118
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;->setTextColor(I)V

    .line 119
    invoke-virtual {p0, v4}, Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;->setTextSize(F)V

    .line 120
    invoke-virtual {p0, v1}, Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 p1, 0x11

    .line 121
    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;->setGravity(I)V

    .line 122
    invoke-virtual {p0, v7}, Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public static customizeButtonParams(Ljava/util/HashMap;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 5

    .line 131
    const-string v0, "marginLeft"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 132
    const-string v1, "marginTop"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 133
    const-string v2, "buttonHeight"

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    .line 134
    const-string v3, "buttonWidth"

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    .line 136
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 142
    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result v2

    .line 144
    invoke-virtual {p0}, Ljava/lang/Double;->intValue()I

    move-result p0

    .line 147
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 149
    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v0

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 150
    iput p0, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 151
    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    return-object v3
.end method

.method public static getAlphaNumericString(I)Ljava/lang/String;
    .locals 7

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 38
    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvxyz"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    int-to-double v3, v3

    .line 39
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-int v3, v3

    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static randInt()I
    .locals 2

    .line 51
    sget-object v0, Lcom/rnamazonpaymentservicesdk/Utils;->rand:Ljava/util/Random;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
