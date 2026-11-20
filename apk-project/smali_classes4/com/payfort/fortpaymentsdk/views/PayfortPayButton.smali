.class public final Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "PayfortPayButton.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u001b\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rJ\u0015\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\rH\u0000\u00a2\u0006\u0002\u0008\u0010J\u0012\u0010\u0011\u001a\u00020\u000b2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J/\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0000\u00a2\u0006\u0002\u0008\u001dJ \u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u001f\u001a\u0004\u0018\u00010 J&\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020 J\u000e\u0010!\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020\u0018R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;",
        "Landroidx/appcompat/widget/AppCompatButton;",
        "Landroid/view/View$OnClickListener;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "payHandler",
        "Lcom/payfort/fortpaymentsdk/handlers/PayHandler;",
        "isRememberMeEnabled",
        "",
        "isRememberMe",
        "",
        "isValidatedBefore",
        "flag",
        "isValidatedBefore$fortpayment_release",
        "onClick",
        "v",
        "Landroid/view/View;",
        "setUpInternalButton",
        "environment",
        "",
        "request",
        "Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;",
        "payComponents",
        "Lcom/payfort/fortpaymentsdk/views/model/PayComponents;",
        "fortPayCallback",
        "Lcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;",
        "setUpInternalButton$fortpayment_release",
        "setup",
        "payFortCallback",
        "Lcom/payfort/fortpaymentsdk/callbacks/PayFortCallback;",
        "updateRequest",
        "fortRequest",
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


# instance fields
.field private final payHandler:Lcom/payfort/fortpaymentsdk/handlers/PayHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance p1, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;

    move-object p2, p0

    check-cast p2, Landroidx/appcompat/widget/AppCompatButton;

    invoke-direct {p1, p2}, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;-><init>(Landroidx/appcompat/widget/AppCompatButton;)V

    iput-object p1, p0, Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;->payHandler:Lcom/payfort/fortpaymentsdk/handlers/PayHandler;

    .line 80
    move-object p1, p0

    check-cast p1, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1}, Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 14
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final isRememberMeEnabled(Z)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;->payHandler:Lcom/payfort/fortpaymentsdk/handlers/PayHandler;

    invoke-virtual {v0, p1}, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->setRememberMe(Z)V

    return-void
.end method

.method public final isValidatedBefore$fortpayment_release(Z)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;->payHandler:Lcom/payfort/fortpaymentsdk/handlers/PayHandler;

    invoke-virtual {v0, p1}, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->setValidatedBefore$fortpayment_release(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 84
    iget-object p1, p0, Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;->payHandler:Lcom/payfort/fortpaymentsdk/handlers/PayHandler;

    invoke-virtual {p1}, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->pay()V

    return-void
.end method

.method public final setUpInternalButton$fortpayment_release(Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Lcom/payfort/fortpaymentsdk/views/model/PayComponents;Lcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;)V
    .locals 1

    const-string v0, "environment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payComponents"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;->payHandler:Lcom/payfort/fortpaymentsdk/handlers/PayHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->setUpPayButton(Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Lcom/payfort/fortpaymentsdk/views/model/PayComponents;Lcom/payfort/fortpaymentsdk/callbacks/FortPayInternalCallback;)V

    return-void
.end method

.method public final setup(Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Lcom/payfort/fortpaymentsdk/callbacks/PayFortCallback;)V
    .locals 1

    const-string v0, "environment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;->payHandler:Lcom/payfort/fortpaymentsdk/handlers/PayHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->setUpPayButton(Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Lcom/payfort/fortpaymentsdk/callbacks/PayFortCallback;)V

    return-void
.end method

.method public final setup(Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Lcom/payfort/fortpaymentsdk/views/model/PayComponents;Lcom/payfort/fortpaymentsdk/callbacks/PayFortCallback;)V
    .locals 1

    const-string v0, "environment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payComponents"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payFortCallback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;->payHandler:Lcom/payfort/fortpaymentsdk/handlers/PayHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->setUpPayButton(Ljava/lang/String;Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;Lcom/payfort/fortpaymentsdk/views/model/PayComponents;Lcom/payfort/fortpaymentsdk/callbacks/PayFortCallback;)V

    return-void
.end method

.method public final updateRequest(Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)V
    .locals 1

    const-string v0, "fortRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/payfort/fortpaymentsdk/views/PayfortPayButton;->payHandler:Lcom/payfort/fortpaymentsdk/handlers/PayHandler;

    invoke-virtual {v0, p1}, Lcom/payfort/fortpaymentsdk/handlers/PayHandler;->setRequest$fortpayment_release(Lcom/payfort/fortpaymentsdk/domain/model/FortRequest;)V

    return-void
.end method
