.class Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment$b;
.super Landroid/widget/ArrayAdapter;
.source "BillingAddressFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;->a(Ljava/util/List;IZ)Landroid/widget/ArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;


# direct methods
.method constructor <init>(Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;Landroid/content/Context;ILjava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment$b;->c:Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment;

    iput-object p5, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment$b;->a:Ljava/lang/String;

    iput-object p6, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment$b;->b:Ljava/util/List;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment$b;->a:Ljava/lang/String;

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment$b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/BillingAddressFragment$b;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
