.class Lcom/oppwa/mobile/connect/checkout/dialog/c0;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PaymentTokenAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppwa/mobile/connect/checkout/dialog/c0$b;,
        Lcom/oppwa/mobile/connect/checkout/dialog/c0$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/oppwa/mobile/connect/checkout/dialog/c0$c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:[Lcom/oppwa/mobile/connect/payment/token/Token;

.field private final c:I

.field private d:Lcom/oppwa/mobile/connect/checkout/dialog/c0$b;

.field private e:Z

.field private f:I

.field private g:I


# direct methods
.method public static synthetic $r8$lambda$La1E20bD1PPyn18JZm607XAHxUk(Lcom/oppwa/mobile/connect/checkout/dialog/c0;Lcom/oppwa/mobile/connect/payment/token/Token;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/c0;->a(Lcom/oppwa/mobile/connect/payment/token/Token;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;[Lcom/oppwa/mobile/connect/payment/token/Token;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/c0;->e:Z

    .line 4
    iput v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/c0;->f:I

    .line 6
    iput v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/c0;->g:I

    .line 11
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/c0;->a:Landroid/content/Context;

    .line 12
    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/c0;->b:[Lcom/oppwa/mobile/connect/payment/token/Token;

    .line 13
    iput p3, p0, Lcom/oppwa/mobile/connect/checkout/dialog/c0;->c:I

    return-void
.end method

.method static synthetic a(Lcom/oppwa/mobile/connect/checkout/dialog/c0;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/c0;->g:I

    return p1
.end method

.method private a(Lcom/oppwa/mobile/connect/payment/token/Token;)Ljava/lang/String;
    .locals 2

    .line 60
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/token/Token;->getPaymentBrand()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DIRECTDEBIT_SEPA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/token/Token;->getBankAccount()Lcom/oppwa/mobile/connect/payment/token/BankAccount;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/token/BankAccount;->getIban()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/f0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 62
    :cond_0
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/token/Token;->getPaymentBrand()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PAYPAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/token/Token;->getVirtualAccount()Lcom/oppwa/mobile/connect/payment/token/VirtualAccount;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/token/VirtualAccount;->getAccountId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/c0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 65
    :cond_1
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/token/Token;->getCard()Lcom/oppwa/mobile/connect/payment/token/Card;

    move-result-object p1

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/token/Card;->getLast4Digits()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oppwa/mobile/connect/checkout/dialog/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 68
    invoke-static {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/f0;->a(Lcom/oppwa/mobile/connect/payment/token/Card;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 69
    :try_start_0
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "***@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p1
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    .line 14
    iget v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/c0;->c:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v0, v2

    .line 15
    iget v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/c0;->c:I

    int-to-double v2, v2

    div-double/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v2, v0

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-double v0, p1

    mul-double/2addr v0, v2

    double-to-int p1, v0

    iput p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/c0;->f:I

    return-void
.end method

.method static synthetic a(Lcom/oppwa/mobile/connect/checkout/dialog/c0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/c0;->a(Landroid/view/View;)V

    return-void
.end method

.method private synthetic a(Lcom/oppwa/mobile/connect/payment/token/Token;Landroid/view/View;)V
    .locals 0

    .line 58
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/c0;->d:Lcom/oppwa/mobile/connect/checkout/dialog/c0$b;

    if-eqz p2, :cond_0

    .line 59
    invoke-interface {p2, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/c0$b;->a(Lcom/oppwa/mobile/connect/payment/token/Token;)V

    :cond_0
    return-void
.end method

.method private b(Lcom/oppwa/mobile/connect/payment/token/Token;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/token/Token;->getCard()Lcom/oppwa/mobile/connect/payment/token/Card;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/token/Card;->getExpiryMonth()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/payment/token/Card;->getExpiryYear()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oppwa/mobile/connect/payment/card/CardPaymentParams;->isCardExpired(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/oppwa/mobile/connect/checkout/dialog/c0$c;
    .locals 2

    .line 3
    iget-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/c0;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/oppwa/mobile/connect/R$layout;->opp_item_payment_token:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 5
    new-instance p2, Lcom/oppwa/mobile/connect/checkout/dialog/c0$c;

    invoke-direct {p2, p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/c0$c;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/c0;Landroid/view/View;)V

    .line 7
    iget-boolean p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/c0;->e:Z

    if-nez p1, :cond_0

    .line 8
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/c0;->e:Z

    .line 13
    new-instance v0, Lcom/oppwa/mobile/connect/checkout/dialog/c0$a;

    invoke-direct {v0, p0, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/c0$a;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/c0;Lcom/oppwa/mobile/connect/checkout/dialog/c0$c;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-object p2
.end method

.method public a(Lcom/oppwa/mobile/connect/checkout/dialog/c0$b;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/c0;->d:Lcom/oppwa/mobile/connect/checkout/dialog/c0$b;

    return-void
.end method

.method public a(Lcom/oppwa/mobile/connect/checkout/dialog/c0$c;I)V
    .locals 4

    .line 18
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/c0;->b:[Lcom/oppwa/mobile/connect/payment/token/Token;

    aget-object p2, v0, p2

    .line 19
    invoke-direct {p0, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/c0;->a(Lcom/oppwa/mobile/connect/payment/token/Token;)Ljava/lang/String;

    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/c0;->a:Landroid/content/Context;

    .line 21
    invoke-virtual {p2}, Lcom/oppwa/mobile/connect/payment/token/Token;->getPaymentBrand()Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-static {v1, v2}, Lcom/oppwa/mobile/connect/checkout/dialog/l;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 24
    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/c0;->a:Landroid/content/Context;

    sget v3, Lcom/oppwa/mobile/connect/R$string;->checkout_layout_text_pay_with_stored_payment_method:I

    .line 25
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 26
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 31
    iget-object v2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/c0;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->a(Landroid/content/Context;)Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;

    move-result-object v2

    invoke-virtual {p2}, Lcom/oppwa/mobile/connect/payment/token/Token;->getPaymentBrand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oppwa/mobile/connect/checkout/dialog/ImageLoader;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 33
    iget-object v3, p1, Lcom/oppwa/mobile/connect/checkout/dialog/c0$c;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 34
    iget-object v2, p1, Lcom/oppwa/mobile/connect/checkout/dialog/c0$c;->c:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 36
    :cond_0
    iget-object v2, p1, Lcom/oppwa/mobile/connect/checkout/dialog/c0$c;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 39
    invoke-direct {p0, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/c0;->b(Lcom/oppwa/mobile/connect/payment/token/Token;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p1, Lcom/oppwa/mobile/connect/checkout/dialog/c0$c;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/c0;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oppwa/mobile/connect/R$color;->error_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p1, Lcom/oppwa/mobile/connect/checkout/dialog/c0$c;->b:Landroid/widget/TextView;

    iget v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/c0;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    :goto_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/oppwa/mobile/connect/checkout/dialog/c0$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/c0$$ExternalSyntheticLambda0;-><init>(Lcom/oppwa/mobile/connect/checkout/dialog/c0;Lcom/oppwa/mobile/connect/payment/token/Token;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/c0;->f:I

    if-eqz p2, :cond_2

    .line 52
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 53
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 55
    iget v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/c0;->f:I

    iput v0, p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->width:I

    .line 57
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/c0;->b:[Lcom/oppwa/mobile/connect/payment/token/Token;

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/oppwa/mobile/connect/checkout/dialog/c0$c;

    invoke-virtual {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/c0;->a(Lcom/oppwa/mobile/connect/checkout/dialog/c0$c;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/oppwa/mobile/connect/checkout/dialog/c0;->a(Landroid/view/ViewGroup;I)Lcom/oppwa/mobile/connect/checkout/dialog/c0$c;

    move-result-object p1

    return-object p1
.end method
