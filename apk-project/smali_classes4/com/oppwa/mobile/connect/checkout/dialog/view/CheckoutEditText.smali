.class public Lcom/oppwa/mobile/connect/checkout/dialog/view/CheckoutEditText;
.super Lcom/google/android/material/textfield/TextInputEditText;
.source "CheckoutEditText.java"


# static fields
.field private static final b:[I


# instance fields
.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/oppwa/mobile/connect/R$attr;->state_error:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/oppwa/mobile/connect/checkout/dialog/view/CheckoutEditText;->b:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputEditText;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/textfield/TextInputEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/view/CheckoutEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/textfield/TextInputEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/view/CheckoutEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/R$styleable;->CheckoutView:[I

    sget v1, Lcom/oppwa/mobile/connect/R$styleable;->CheckoutView_typeface:I

    invoke-static {p1, p2, v0, v1}, Lcom/oppwa/mobile/connect/checkout/dialog/view/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputEditText;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreateDrawableState(I)[I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/view/CheckoutEditText;->a:Z

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/material/textfield/TextInputEditText;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 4
    sget-object v0, Lcom/oppwa/mobile/connect/checkout/dialog/view/CheckoutEditText;->b:[I

    invoke-static {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->mergeDrawableStates([I[I)[I

    return-object p1

    .line 8
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/material/textfield/TextInputEditText;->onCreateDrawableState(I)[I

    move-result-object p1

    return-object p1
.end method

.method public setErrorState(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/view/CheckoutEditText;->a:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/view/CheckoutEditText;->a:Z

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputEditText;->refreshDrawableState()V

    :cond_0
    return-void
.end method
