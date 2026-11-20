.class public Lcom/oppwa/mobile/connect/checkout/dialog/view/CheckoutTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "CheckoutTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/view/CheckoutTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/view/CheckoutTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method
