.class public Lcom/nsoftware/ipworks3ds/sdk/core/SDKToolbarLayout;
.super Lcom/google/android/material/appbar/AppBarLayout;
.source "SourceFile"


# static fields
.field public static ᾨ:Landroid/widget/Button;


# instance fields
.field public final ㆃ:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/nsoftware/ipworks3ds/sdk/core/SDKToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    sget p2, Lcom/nsoftware/ipworks3ds/sdk/R$layout;->nsoftware_toolbar:I

    invoke-static {p1, p2, p0}, Lcom/google/android/material/appbar/AppBarLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    sget p2, Lcom/nsoftware/ipworks3ds/sdk/R$id;->cancel:I

    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/AppBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    sput-object p2, Lcom/nsoftware/ipworks3ds/sdk/core/SDKToolbarLayout;->ᾨ:Landroid/widget/Button;

    .line 6
    sget p2, Lcom/nsoftware/ipworks3ds/sdk/R$id;->toolbar_title:I

    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/AppBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/nsoftware/ipworks3ds/sdk/core/SDKToolbarLayout;->ㆃ:Landroid/widget/TextView;

    .line 8
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 9
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/nsoftware/ipworks3ds/sdk/R$attr;->colorPrimary:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    iget p2, p2, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/AppBarLayout;->setBackgroundColor(I)V

    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget p2, Lcom/nsoftware/ipworks3ds/sdk/R$attr;->actionBarSize:I

    invoke-virtual {p1, p2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 15
    iget p1, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, p1}, Lcom/nsoftware/ipworks3ds/sdk/core/SDKToolbarLayout;->setActionBarHeight(I)V

    .line 17
    sget p1, Lcom/nsoftware/ipworks3ds/sdk/R$id;->toolbar_layout:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 18
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 19
    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 20
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public static getCancelButton()Landroid/widget/Button;
    .locals 1

    .line 1
    sget-object v0, Lcom/nsoftware/ipworks3ds/sdk/core/SDKToolbarLayout;->ᾨ:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public setActionBarHeight(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/core/SDKToolbarLayout;->ㆃ:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHeight(I)V

    return-void
.end method

.method public setCancelButtonText(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/nsoftware/ipworks3ds/sdk/core/SDKToolbarLayout;->ᾨ:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCancelButtonTextColor(I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/nsoftware/ipworks3ds/sdk/core/SDKToolbarLayout;->ᾨ:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method public setCancelButtonTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/nsoftware/ipworks3ds/sdk/core/SDKToolbarLayout;->ᾨ:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/core/SDKToolbarLayout;->ㆃ:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleFontSize(Ljava/lang/Integer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/core/SDKToolbarLayout;->ㆃ:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/core/SDKToolbarLayout;->ㆃ:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nsoftware/ipworks3ds/sdk/core/SDKToolbarLayout;->ㆃ:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public ㆃ(IIII)V
    .locals 5

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Lcom/nsoftware/ipworks3ds/sdk/R$attr;->actionBarSize:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v0, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 5
    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x2

    if-le p2, v0, :cond_0

    move p2, v0

    :cond_0
    if-le p4, v0, :cond_1

    move p4, v0

    :cond_1
    add-int v2, p2, p4

    if-le v2, v0, :cond_2

    const/4 p2, 0x0

    move p4, p2

    .line 15
    :cond_2
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 16
    div-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x4

    if-le p3, v0, :cond_3

    move p3, v0

    .line 21
    :cond_3
    sget-object v0, Lcom/nsoftware/ipworks3ds/sdk/core/SDKToolbarLayout;->ᾨ:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 22
    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 23
    iput p4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    .line 24
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 25
    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    return-void
.end method
