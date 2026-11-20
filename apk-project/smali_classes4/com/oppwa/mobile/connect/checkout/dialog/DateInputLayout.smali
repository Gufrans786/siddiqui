.class public Lcom/oppwa/mobile/connect/checkout/dialog/DateInputLayout;
.super Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;
.source "DateInputLayout.java"


# instance fields
.field private i:Lcom/oppwa/mobile/connect/checkout/dialog/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/DateInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/DateInputLayout;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/DateInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/DateInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private b()V
    .locals 5

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/o;

    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/checkout/dialog/o;-><init>(Ljava/lang/Character;I)V

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/DateInputLayout;->i:Lcom/oppwa/mobile/connect/checkout/dialog/o;

    .line 3
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/DateInputLayout;->i:Lcom/oppwa/mobile/connect/checkout/dialog/o;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/oppwa/mobile/connect/R$integer;->cardExpirationDateMaxLength:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 10
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const v1, 0x80004

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    return-void
.end method


# virtual methods
.method public getMonth()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/DateInputLayout;->i:Lcom/oppwa/mobile/connect/checkout/dialog/o;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/o;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oppwa/mobile/connect/utils/StringUtils;->replaceNonstandardDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getYear()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/DateInputLayout;->i:Lcom/oppwa/mobile/connect/checkout/dialog/o;

    invoke-virtual {v0}, Lcom/oppwa/mobile/connect/checkout/dialog/o;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oppwa/mobile/connect/utils/StringUtils;->replaceNonstandardDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setInputValidator(Lcom/oppwa/mobile/connect/checkout/dialog/s$n;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/DateInputLayout;->i:Lcom/oppwa/mobile/connect/checkout/dialog/o;

    invoke-static {v0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/s;->a(Lcom/oppwa/mobile/connect/checkout/dialog/o;Lcom/oppwa/mobile/connect/checkout/dialog/s$n;)Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setInputValidator(Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;)V

    return-void
.end method
