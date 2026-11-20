.class public Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;
.super Landroid/widget/LinearLayout;
.source "InputLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$e;,
        Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$d;,
        Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/material/textfield/TextInputLayout;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;

.field private e:Z

.field private f:Z

.field private g:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$d;

.field h:Lcom/oppwa/mobile/connect/checkout/dialog/IPaymentFormListener;


# direct methods
.method public static synthetic $r8$lambda$UDbkUTvKjmFHprrdr42NkjK8xV4(Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->e:Z

    .line 4
    iput-boolean p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->f:Z

    const/4 p2, 0x1

    .line 16
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setSaveEnabled(Z)V

    .line 19
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    if-eqz p1, :cond_0

    .line 22
    sget v0, Lcom/oppwa/mobile/connect/R$layout;->opp_layout_input:I

    invoke-virtual {p1, v0, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 24
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->b()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)I
    .locals 3

    .line 10
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->d:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->h:Lcom/oppwa/mobile/connect/checkout/dialog/IPaymentFormListener;

    invoke-interface {v0, v1, v2}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;->a(Ljava/lang/String;Lcom/oppwa/mobile/connect/checkout/dialog/IPaymentFormListener;)Lcom/oppwa/mobile/connect/checkout/meta/CheckoutValidationResult;

    move-result-object v0

    .line 12
    sget-object v1, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    return v2

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->d:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;

    invoke-interface {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;->a()I

    move-result p1

    return p1

    .line 21
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->f:Z

    if-eqz v0, :cond_2

    return v2

    .line 24
    :cond_2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->d:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;

    invoke-interface {v0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;->a(Ljava/lang/CharSequence;)I

    move-result p1

    return p1
.end method

.method static synthetic a(Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;)Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->g:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$d;

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->c:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->validate()Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->clearError()V

    .line 5
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->c()V

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->g:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$d;

    if-eqz p1, :cond_1

    .line 9
    invoke-interface {p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$d;->a(Z)V

    :cond_1
    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    sget v0, Lcom/oppwa/mobile/connect/R$id;->text_input_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->a:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 4
    sget v0, Lcom/oppwa/mobile/connect/R$id;->edit_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->b:Landroid/widget/EditText;

    .line 5
    new-instance v1, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$$ExternalSyntheticLambda0;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 17
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$a;

    invoke-direct {v1, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$a;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 32
    sget v0, Lcom/oppwa/mobile/connect/R$id;->helper_text_view:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->c:Landroid/widget/TextView;

    const/4 v1, 0x4

    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oppwa/mobile/connect/R$anim;->opp_helper_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 5
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->clearError()V

    .line 2
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->a()V

    return-void
.end method

.method public clearError()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->a:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->c:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->e:Z

    return-void
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method public getErrorText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHelperText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method getHelperTextView()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public getHint()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPaddingStart()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaddingStart()I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->e:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getId()I

    move-result v0

    sget v1, Lcom/oppwa/mobile/connect/R$id;->edit_text:I

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->b:Landroid/widget/EditText;

    invoke-static {}, Landroid/widget/LinearLayout;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->validate()Z

    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$e;

    .line 3
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->b:Landroid/widget/EditText;

    iget p1, p1, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$e;->a:I

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setId(I)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$e;

    invoke-direct {v1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$e;-><init>(Landroid/os/Parcelable;)V

    .line 4
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getId()I

    move-result v0

    iput v0, v1, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$e;->a:I

    return-object v1
.end method

.method public setGravityForRTLLanguages()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->b:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextDirection(I)V

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->b:Landroid/widget/EditText;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->b:Landroid/widget/EditText;

    const v1, 0x800015

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    return-void
.end method

.method public setHelperText(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setInputValidator(Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->d:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;

    return-void
.end method

.method public setListener(Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->g:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$d;

    return-void
.end method

.method public setNotEditableText(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->b:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 3
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->b:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 5
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->a()V

    return-void
.end method

.method public setOptional(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->f:Z

    return-void
.end method

.method public setPaddingEnd(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaddingStart()I

    move-result v1

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->b:Landroid/widget/EditText;

    .line 2
    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->b:Landroid/widget/EditText;

    .line 4
    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v3

    .line 5
    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/widget/EditText;->setPaddingRelative(IIII)V

    return-void
.end method

.method public setPaddingStart(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->b:Landroid/widget/EditText;

    .line 2
    invoke-virtual {v0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->b:Landroid/widget/EditText;

    .line 3
    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingEnd()I

    move-result v2

    iget-object v3, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->b:Landroid/widget/EditText;

    .line 4
    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v3

    .line 5
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/widget/EditText;->setPaddingRelative(IIII)V

    return-void
.end method

.method public setPaymentFormListener(Lcom/oppwa/mobile/connect/checkout/dialog/IPaymentFormListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->h:Lcom/oppwa/mobile/connect/checkout/dialog/IPaymentFormListener;

    return-void
.end method

.method public setSelectionAtTheEnd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showError(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->a:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 3
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->c()V

    .line 4
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->e:Z

    return-void
.end method

.method public validate()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocusable()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->d:Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout$c;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->a()V

    return v2

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->a(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 13
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->clearError()V

    .line 14
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->a()V

    goto :goto_0

    .line 16
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/oppwa/mobile/connect/checkout/dialog/InputLayout;->showError(Ljava/lang/String;)V

    :goto_0
    if-ne v0, v3, :cond_3

    return v1

    :cond_3
    return v2
.end method
