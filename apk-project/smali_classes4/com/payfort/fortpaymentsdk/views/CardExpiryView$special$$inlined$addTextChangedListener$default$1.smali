.class public final Lcom/payfort/fortpaymentsdk/views/CardExpiryView$special$$inlined$addTextChangedListener$default$1;
.super Ljava/lang/Object;
.source "TextView.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payfort/fortpaymentsdk/views/CardExpiryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1\n+ 2 CardExpiryView.kt\ncom/payfort/fortpaymentsdk/views/CardExpiryView\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$1\n+ 5 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$2\n*L\n1#1,97:1\n36#2:98\n37#2,4:100\n1#3:99\n71#4:104\n77#5:105\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0016J*\u0010\r\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a8\u0006\u000f\u00b8\u0006\u0000"
    }
    d2 = {
        "androidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1",
        "Landroid/text/TextWatcher;",
        "afterTextChanged",
        "",
        "s",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "text",
        "",
        "start",
        "",
        "count",
        "after",
        "onTextChanged",
        "before",
        "core-ktx_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $lastInput$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic this$0:Lcom/payfort/fortpaymentsdk/views/CardExpiryView;


# direct methods
.method public constructor <init>(Lcom/payfort/fortpaymentsdk/views/CardExpiryView;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/views/CardExpiryView$special$$inlined$addTextChangedListener$default$1;->this$0:Lcom/payfort/fortpaymentsdk/views/CardExpiryView;

    iput-object p2, p0, Lcom/payfort/fortpaymentsdk/views/CardExpiryView$special$$inlined$addTextChangedListener$default$1;->$lastInput$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/views/CardExpiryView$special$$inlined$addTextChangedListener$default$1;->this$0:Lcom/payfort/fortpaymentsdk/views/CardExpiryView;

    invoke-static {v0, p1}, Lcom/payfort/fortpaymentsdk/views/CardExpiryView;->access$controlDigits(Lcom/payfort/fortpaymentsdk/views/CardExpiryView;Landroid/text/Editable;)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/views/CardExpiryView$special$$inlined$addTextChangedListener$default$1;->this$0:Lcom/payfort/fortpaymentsdk/views/CardExpiryView;

    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/views/CardExpiryView;->getEtText$fortpayment_release()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/payfort/fortpaymentsdk/views/CardExpiryView$special$$inlined$addTextChangedListener$default$1;->$lastInput$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, v2, p1}, Lcom/payfort/fortpaymentsdk/views/CardExpiryView;->access$formatExpiryDate(Lcom/payfort/fortpaymentsdk/views/CardExpiryView;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lcom/payfort/fortpaymentsdk/views/CardExpiryView$special$$inlined$addTextChangedListener$default$1;->$lastInput$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/views/CardExpiryView$special$$inlined$addTextChangedListener$default$1;->this$0:Lcom/payfort/fortpaymentsdk/views/CardExpiryView;

    invoke-virtual {v0}, Lcom/payfort/fortpaymentsdk/views/CardExpiryView;->getText$fortpayment_release()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 102
    iget-object p1, p0, Lcom/payfort/fortpaymentsdk/views/CardExpiryView$special$$inlined$addTextChangedListener$default$1;->this$0:Lcom/payfort/fortpaymentsdk/views/CardExpiryView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/payfort/fortpaymentsdk/views/CardExpiryView;->setError(Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
