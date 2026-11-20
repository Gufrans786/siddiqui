.class public Lcom/oppwa/mobile/connect/checkout/dialog/CardNumberInputLayout;
.super Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;
.source "CardNumberInputLayout.java"


# instance fields
.field private i:Ljava/lang/String;

.field private j:Lcom/oppwa/mobile/connect/checkout/dialog/x;

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/CardNumberInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardNumberInputLayout;->k:Z

    .line 7
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/CardNumberInputLayout;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/CardNumberInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/CardNumberInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(I)Landroid/text/InputFilter;
    .locals 1

    .line 9
    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v0, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/oppwa/mobile/connect/checkout/dialog/x;
    .locals 2

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/x;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/x;-><init>(Ljava/lang/Character;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {v0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/x;->a(Z)V

    return-object v0
.end method

.method private a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 6
    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p2
.end method

.method private b()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const v1, 0x80004

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    return-void
.end method

.method private setLengthFilter(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/oppwa/mobile/connect/R$integer;->cardNumberMaxLength:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 6
    :goto_0
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/CardNumberInputLayout;->a(I)Landroid/text/InputFilter;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method private setNumberInputFormatter(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardNumberInputLayout;->j:Lcom/oppwa/mobile/connect/checkout/dialog/x;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardNumberInputLayout;->j:Lcom/oppwa/mobile/connect/checkout/dialog/x;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/CardNumberInputLayout;->a(Ljava/lang/String;)Lcom/oppwa/mobile/connect/checkout/dialog/x;

    move-result-object p1

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardNumberInputLayout;->j:Lcom/oppwa/mobile/connect/checkout/dialog/x;

    .line 6
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardNumberInputLayout;->j:Lcom/oppwa/mobile/connect/checkout/dialog/x;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 8
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setSelectionAtTheEnd()V

    return-void
.end method

.method private setNumberPattern(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/CardNumberInputLayout;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/CardNumberInputLayout;->setLengthFilter(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/CardNumberInputLayout;->setNumberInputFormatter(Ljava/lang/String;)V

    return-void
.end method

.method private setNumberValidator(Lcom/oppwa/mobile/connect/checkout/dialog/s$m;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardNumberInputLayout;->j:Lcom/oppwa/mobile/connect/checkout/dialog/x;

    invoke-static {v0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/s;->a(Lcom/oppwa/mobile/connect/checkout/dialog/x;Lcom/oppwa/mobile/connect/checkout/dialog/s$m;)Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->setInputValidator(Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;)V

    return-void
.end method


# virtual methods
.method public setBrandDetected(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardNumberInputLayout;->k:Z

    return-void
.end method

.method public setCardBrand(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardNumberInputLayout;->i:Ljava/lang/String;

    return-void
.end method

.method public setNumberPatternAndValidator(Ljava/lang/String;Lcom/oppwa/mobile/connect/checkout/dialog/s$m;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/CardNumberInputLayout;->setNumberPattern(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/CardNumberInputLayout;->setNumberValidator(Lcom/oppwa/mobile/connect/checkout/dialog/s$m;)V

    return-void
.end method

.method public validate()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardNumberInputLayout;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2
    const-string v1, "CARD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/CardNumberInputLayout;->k:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-super {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->validate()Z

    move-result v0

    return v0

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oppwa/mobile/connect/R$string;->checkout_error_card_number_invalid:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->showError(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method
