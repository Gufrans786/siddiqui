.class public Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseFragment.java"


# instance fields
.field protected a:Landroid/widget/TextView;

.field protected b:Landroid/widget/ImageButton;

.field protected c:Landroid/widget/ImageButton;


# direct methods
.method public static synthetic $r8$lambda$8FYZ7OPWyteq2z1mVAbSr6IfljM(Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;->a(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroidx/fragment/app/Fragment;-><init>(I)V

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 2

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 14
    const-class v1, Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;->a()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .line 12
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method protected a(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method protected a(Lcom/oppwa/mobile/connect/provider/Transaction;)V
    .locals 2

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    const-string v1, "TRANSACTION_RESULT_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 6
    invoke-direct {p0, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method protected a(Lcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/exception/PaymentError;)V
    .locals 2

    .line 7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8
    const-string v1, "TRANSACTION_RESULT_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 9
    const-string p1, "PAYMENT_ERROR_RESULT_KEY"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 11
    invoke-direct {p0, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 3
    sget p2, Lcom/oppwa/mobile/connect/R$id;->title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;->a:Landroid/widget/TextView;

    .line 4
    sget p2, Lcom/oppwa/mobile/connect/R$id;->back_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;->b:Landroid/widget/ImageButton;

    .line 5
    sget p2, Lcom/oppwa/mobile/connect/R$id;->close_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;->c:Landroid/widget/ImageButton;

    .line 7
    new-instance p2, Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment$$ExternalSyntheticLambda0;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/BaseFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
