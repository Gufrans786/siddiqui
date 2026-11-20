.class public abstract Lcom/payfort/fortpaymentsdk/views/FortView;
.super Landroid/widget/FrameLayout;
.source "FortView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payfort/fortpaymentsdk/views/FortView$Companion;,
        Lcom/payfort/fortpaymentsdk/views/FortView$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008&\u0018\u0000 R2\u00020\u0001:\u0001RB#\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\n\u0010B\u001a\u0004\u0018\u00010CH\u0016J\"\u0010D\u001a\u0004\u0018\u00010\u00182\u0006\u0010E\u001a\u00020F2\u0006\u0010G\u001a\u00020\n2\u0006\u0010H\u001a\u00020\nH\u0002J\u0008\u0010I\u001a\u00020JH&J\u0010\u0010K\u001a\u00020L2\u0006\u0010M\u001a\u00020JH\u0016J\u0010\u0010N\u001a\u00020L2\u0008\u0010O\u001a\u0004\u0018\u00010\u0018J\u0012\u0010P\u001a\u00020L2\u0008\u0010Q\u001a\u0004\u0018\u00010CH\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\r\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R$\u0010\u0012\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000f\"\u0004\u0008\u0014\u0010\u0011R$\u0010\u0015\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u000f\"\u0004\u0008\u0017\u0010\u0011R(\u0010\u0019\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0018@VX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR$\u0010\u001e\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u000f\"\u0004\u0008 \u0010\u0011R$\u0010!\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u000f\"\u0004\u0008#\u0010\u0011R\u001c\u0010$\u001a\u0004\u0018\u00010%X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R(\u0010*\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0018@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\u001b\"\u0004\u0008,\u0010\u001dR$\u0010-\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010\u000f\"\u0004\u0008/\u0010\u0011R\u001c\u00100\u001a\u0004\u0018\u000101X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105R*\u00106\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u00188@@@X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u0010\u001b\"\u0004\u00088\u0010\u001dR$\u00109\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010\u000f\"\u0004\u0008;\u0010\u0011R$\u0010=\u001a\u00020<2\u0006\u0010\u000c\u001a\u00020<@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008>\u0010?\"\u0004\u0008@\u0010A\u00a8\u0006S"
    }
    d2 = {
        "Lcom/payfort/fortpaymentsdk/views/FortView;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "fortViewType",
        "Lcom/payfort/fortpaymentsdk/views/model/FortViewTypes;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Lcom/payfort/fortpaymentsdk/views/model/FortViewTypes;Landroid/util/AttributeSet;)V",
        "DEFAULT_COLOR",
        "",
        "GRAY_HINT_COLOR",
        "value",
        "boxBackgroundColor",
        "getBoxBackgroundColor",
        "()I",
        "setBoxBackgroundColor",
        "(I)V",
        "boxBackgroundMode",
        "getBoxBackgroundMode",
        "setBoxBackgroundMode",
        "boxStrokeErrorColor",
        "getBoxStrokeErrorColor",
        "setBoxStrokeErrorColor",
        "",
        "errorText",
        "getErrorText",
        "()Ljava/lang/String;",
        "setErrorText",
        "(Ljava/lang/String;)V",
        "errorTextAppearance",
        "getErrorTextAppearance",
        "setErrorTextAppearance",
        "errorTextColor",
        "getErrorTextColor",
        "setErrorTextColor",
        "etText",
        "Landroid/widget/EditText;",
        "getEtText$fortpayment_release",
        "()Landroid/widget/EditText;",
        "setEtText$fortpayment_release",
        "(Landroid/widget/EditText;)V",
        "hint",
        "getHint",
        "setHint",
        "hintTextColor",
        "getHintTextColor",
        "setHintTextColor",
        "inputLayout",
        "Lcom/google/android/material/textfield/TextInputLayout;",
        "getInputLayout$fortpayment_release",
        "()Lcom/google/android/material/textfield/TextInputLayout;",
        "setInputLayout$fortpayment_release",
        "(Lcom/google/android/material/textfield/TextInputLayout;)V",
        "text",
        "getText$fortpayment_release",
        "setText$fortpayment_release",
        "textColor",
        "getTextColor",
        "setTextColor",
        "",
        "textSize",
        "getTextSize",
        "()F",
        "setTextSize",
        "(F)V",
        "getOnFocusChangeListener",
        "Landroid/view/View$OnFocusChangeListener;",
        "getValueFromStyle",
        "a",
        "Landroid/content/res/TypedArray;",
        "resourcesIndex",
        "defaultValue",
        "isValid",
        "",
        "setEnabled",
        "",
        "enabled",
        "setError",
        "error",
        "setOnFocusChangeListener",
        "l",
        "Companion",
        "fortpayment_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/payfort/fortpaymentsdk/views/FortView$Companion;

.field private static final DEFAULT_BOX_SHAPE:I = 0x1

.field private static final DEFAULT_SIZE:F = 13.0f


# instance fields
.field private final DEFAULT_COLOR:I

.field private final GRAY_HINT_COLOR:I

.field private boxBackgroundColor:I

.field private boxBackgroundMode:I

.field private boxStrokeErrorColor:I

.field private errorText:Ljava/lang/String;

.field private errorTextAppearance:I

.field private errorTextColor:I

.field private etText:Landroid/widget/EditText;

.field private hint:Ljava/lang/String;

.field private hintTextColor:I

.field private inputLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private text:Ljava/lang/String;

.field private textColor:I

.field private textSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/payfort/fortpaymentsdk/views/FortView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/payfort/fortpaymentsdk/views/FortView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/payfort/fortpaymentsdk/views/FortView;->Companion:Lcom/payfort/fortpaymentsdk/views/FortView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/payfort/fortpaymentsdk/views/model/FortViewTypes;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fortViewType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/payfort/fortpaymentsdk/views/FortView;-><init>(Landroid/content/Context;Lcom/payfort/fortpaymentsdk/views/model/FortViewTypes;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/payfort/fortpaymentsdk/views/model/FortViewTypes;Landroid/util/AttributeSet;)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fortViewType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v1, 0x106000c

    .line 31
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->DEFAULT_COLOR:I

    const/high16 v2, 0x1060000

    .line 32
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->GRAY_HINT_COLOR:I

    const/high16 v3, -0x1000000

    .line 42
    iput v3, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->textColor:I

    .line 52
    const-string v4, ""

    iput-object v4, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->text:Ljava/lang/String;

    const/high16 v5, 0x41500000    # 13.0f

    .line 63
    iput v5, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->textSize:F

    .line 73
    iput-object v4, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->hint:Ljava/lang/String;

    const v4, -0x333334

    .line 83
    iput v4, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->hintTextColor:I

    const/4 v4, 0x1

    .line 92
    iput v4, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->boxBackgroundMode:I

    .line 101
    iput v3, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->boxBackgroundColor:I

    const/high16 v3, -0x10000

    .line 120
    iput v3, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->boxStrokeErrorColor:I

    .line 130
    iput v3, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->errorTextColor:I

    .line 178
    const-string v6, "layout_inflater"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/LayoutInflater;

    .line 179
    sget v7, Lcom/payfort/fortpaymentsdk/R$layout;->fort_view:I

    move-object v8, p0

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v6, v7, v8, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 180
    sget v7, Lcom/payfort/fortpaymentsdk/R$id;->etText:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->etText:Landroid/widget/EditText;

    .line 181
    sget v7, Lcom/payfort/fortpaymentsdk/R$id;->inputLayout:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v6, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->inputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 182
    iget-object v6, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->etText:Landroid/widget/EditText;

    const-string v7, "null cannot be cast to non-null type android.view.View"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/View;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-static {v6, v7}, Landroidx/core/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 184
    sget-object v6, Lcom/payfort/fortpaymentsdk/R$styleable;->FortView:[I

    invoke-virtual {p1, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    const-string v6, "context.obtainStyledAttr\u2026rs, R.styleable.FortView)"

    invoke-static {p3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    sget v6, Lcom/payfort/fortpaymentsdk/R$styleable;->FortView_textSize:I

    invoke-static {v5, p1}, Lcom/payfort/fortpaymentsdk/utils/Utils;->convertDpToPixel(FLandroid/content/Context;)F

    move-result p1

    invoke-virtual {p3, v6, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/views/FortView;->setTextSize(F)V

    .line 186
    sget p1, Lcom/payfort/fortpaymentsdk/R$styleable;->FortView_textColor:I

    invoke-virtual {p3, p1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/views/FortView;->setTextColor(I)V

    .line 189
    sget p1, Lcom/payfort/fortpaymentsdk/R$styleable;->FortView_hintTextColor:I

    invoke-virtual {p3, p1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/views/FortView;->setHintTextColor(I)V

    .line 190
    sget p1, Lcom/payfort/fortpaymentsdk/R$styleable;->FortView_boxBackgroundColor:I

    invoke-virtual {p3, p1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/views/FortView;->setBoxBackgroundColor(I)V

    .line 191
    sget p1, Lcom/payfort/fortpaymentsdk/R$styleable;->FortView_boxBackgroundShape:I

    invoke-virtual {p3, p1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/views/FortView;->setBoxBackgroundMode(I)V

    .line 192
    sget p1, Lcom/payfort/fortpaymentsdk/R$styleable;->FortView_errorTextAppearance:I

    invoke-virtual {p3, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/views/FortView;->setErrorTextAppearance(I)V

    .line 193
    sget p1, Lcom/payfort/fortpaymentsdk/R$styleable;->FortView_errorTextColor:I

    invoke-virtual {p3, p1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/views/FortView;->setErrorTextColor(I)V

    .line 195
    sget p1, Lcom/payfort/fortpaymentsdk/R$styleable;->FortView_boxStrokeErrorColor:I

    invoke-virtual {p3, p1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 194
    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/views/FortView;->setBoxStrokeErrorColor(I)V

    .line 197
    sget-object p1, Lcom/payfort/fortpaymentsdk/views/FortView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/payfort/fortpaymentsdk/views/model/FortViewTypes;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v4, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    sget p1, Lcom/payfort/fortpaymentsdk/R$styleable;->FortView_hintText:I

    .line 225
    sget p2, Lcom/payfort/fortpaymentsdk/R$string;->pf_cvv_hint:I

    .line 222
    invoke-direct {p0, p3, p1, p2}, Lcom/payfort/fortpaymentsdk/views/FortView;->getValueFromStyle(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/views/FortView;->setHint(Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :cond_1
    sget p1, Lcom/payfort/fortpaymentsdk/R$styleable;->FortView_hintText:I

    .line 218
    sget p2, Lcom/payfort/fortpaymentsdk/R$string;->pf_cardholder_name_hint:I

    .line 215
    invoke-direct {p0, p3, p1, p2}, Lcom/payfort/fortpaymentsdk/views/FortView;->getValueFromStyle(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/views/FortView;->setHint(Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_2
    sget p1, Lcom/payfort/fortpaymentsdk/R$styleable;->FortView_hintText:I

    .line 210
    sget p2, Lcom/payfort/fortpaymentsdk/R$string;->pf_expiry_date_hint:I

    .line 207
    invoke-direct {p0, p3, p1, p2}, Lcom/payfort/fortpaymentsdk/views/FortView;->getValueFromStyle(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/views/FortView;->setHint(Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_3
    sget p1, Lcom/payfort/fortpaymentsdk/R$styleable;->FortView_hintText:I

    .line 202
    sget p2, Lcom/payfort/fortpaymentsdk/R$string;->pf_card_number_hint:I

    .line 199
    invoke-direct {p0, p3, p1, p2}, Lcom/payfort/fortpaymentsdk/views/FortView;->getValueFromStyle(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/views/FortView;->setHint(Ljava/lang/String;)V

    .line 230
    :goto_0
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/payfort/fortpaymentsdk/views/model/FortViewTypes;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 22
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/payfort/fortpaymentsdk/views/FortView;-><init>(Landroid/content/Context;Lcom/payfort/fortpaymentsdk/views/model/FortViewTypes;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final getValueFromStyle(Landroid/content/res/TypedArray;II)Ljava/lang/String;
    .locals 1

    .line 236
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/payfort/fortpaymentsdk/views/FortView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final getBoxBackgroundColor()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->boxBackgroundColor:I

    return v0
.end method

.method public final getBoxBackgroundMode()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->boxBackgroundMode:I

    return v0
.end method

.method public final getBoxStrokeErrorColor()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->boxStrokeErrorColor:I

    return v0
.end method

.method public getErrorText()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->errorText:Ljava/lang/String;

    return-object v0
.end method

.method public final getErrorTextAppearance()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->errorTextAppearance:I

    return v0
.end method

.method public final getErrorTextColor()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->errorTextColor:I

    return v0
.end method

.method public final getEtText$fortpayment_release()Landroid/widget/EditText;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->etText:Landroid/widget/EditText;

    return-object v0
.end method

.method public final getHint()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->hint:Ljava/lang/String;

    return-object v0
.end method

.method public final getHintTextColor()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->hintTextColor:I

    return v0
.end method

.method public final getInputLayout$fortpayment_release()Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->inputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method public getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->etText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getText$fortpayment_release()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->etText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTextColor()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->textColor:I

    return v0
.end method

.method public final getTextSize()F
    .locals 1

    .line 63
    iget v0, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->textSize:F

    return v0
.end method

.method public abstract isValid()Z
.end method

.method public final setBoxBackgroundColor(I)V
    .locals 1

    .line 103
    iput p1, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->boxBackgroundColor:I

    .line 104
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->inputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxBackgroundColor(I)V

    return-void
.end method

.method public final setBoxBackgroundMode(I)V
    .locals 1

    .line 94
    iput p1, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->boxBackgroundMode:I

    .line 95
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->inputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxBackgroundMode(I)V

    return-void
.end method

.method public final setBoxStrokeErrorColor(I)V
    .locals 1

    .line 122
    iput p1, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->boxStrokeErrorColor:I

    .line 123
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->inputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeErrorColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->etText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 152
    :goto_0
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->inputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    .line 153
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    return-void
.end method

.method public final setError(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_1

    .line 161
    iget-object p1, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->inputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    :goto_0
    const/4 p1, 0x0

    .line 162
    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/views/FortView;->setErrorText(Ljava/lang/String;)V

    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->inputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 165
    :goto_1
    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/views/FortView;->setErrorText(Ljava/lang/String;)V

    return-void
.end method

.method public setErrorText(Ljava/lang/String;)V
    .locals 1

    .line 141
    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->errorText:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->inputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setErrorTextAppearance(I)V
    .locals 1

    .line 113
    iput p1, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->errorTextAppearance:I

    .line 114
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->inputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorTextAppearance(I)V

    :cond_0
    return-void
.end method

.method public final setErrorTextColor(I)V
    .locals 1

    .line 132
    iput p1, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->errorTextColor:I

    .line 133
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->inputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public final setEtText$fortpayment_release(Landroid/widget/EditText;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->etText:Landroid/widget/EditText;

    return-void
.end method

.method public final setHint(Ljava/lang/String;)V
    .locals 1

    .line 75
    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->hint:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->inputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 77
    :goto_0
    iget-object p1, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->inputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    :cond_1
    return-void
.end method

.method public final setHintTextColor(I)V
    .locals 1

    .line 85
    iput p1, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->hintTextColor:I

    .line 86
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->inputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setInputLayout$fortpayment_release(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->inputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->etText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public final setText$fortpayment_release(Ljava/lang/String;)V
    .locals 1

    .line 54
    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->text:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->etText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final setTextColor(I)V
    .locals 1

    .line 44
    iput p1, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->textColor:I

    .line 45
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->etText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public final setTextSize(F)V
    .locals 2

    .line 65
    iput p1, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->textSize:F

    .line 66
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/views/FortView;->etText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/EditText;->setTextSize(IF)V

    :cond_0
    return-void
.end method
