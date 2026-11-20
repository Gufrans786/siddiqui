.class abstract Lcom/oppwa/mobile/connect/checkout/dialog/r;
.super Ljava/lang/Object;
.source "InputFormatter.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field a:Z

.field private final b:[Landroid/text/InputFilter;

.field private c:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/r;->a:Z

    .line 4
    new-array v0, v0, [Landroid/text/InputFilter;

    iput-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/r;->b:[Landroid/text/InputFilter;

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/text/Editable;)V
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/r;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/r;->a:Z

    .line 3
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    iput p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/r;->c:I

    return-void

    .line 9
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    iget v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/r;->c:I

    sub-int/2addr v0, v1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 10
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    iput v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/r;->c:I

    .line 11
    invoke-virtual {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/r;->a(Landroid/text/Editable;)V

    return-void

    .line 16
    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    iput v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/r;->c:I

    .line 19
    invoke-interface {p1}, Landroid/text/Editable;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/r;->b:[Landroid/text/InputFilter;

    invoke-interface {p1, v1}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 23
    invoke-virtual {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/r;->b(Landroid/text/Editable;)Landroid/text/Editable;

    move-result-object p1

    .line 26
    invoke-interface {p1, v0}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method protected abstract b(Landroid/text/Editable;)Landroid/text/Editable;
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
