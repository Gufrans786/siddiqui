.class abstract Lcom/oppwa/mobile/connect/provider/f;
.super Ljava/lang/Object;
.source "PaymentProvider.java"

# interfaces
.implements Lcom/oppwa/mobile/connect/provider/IPaymentProvider;


# instance fields
.field protected a:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

.field protected b:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

.field private final c:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/oppwa/mobile/connect/provider/f;->c:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/oppwa/mobile/connect/provider/f;->a:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    .line 4
    iput-object p3, p0, Lcom/oppwa/mobile/connect/provider/f;->b:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    .line 6
    invoke-static {p2}, Lcom/oppwa/mobile/connect/utils/Logger;->setProviderMode(Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;)V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/f;->c:Landroid/content/Context;

    return-object v0
.end method

.method public getProviderDomain()Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/f;->b:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    return-object v0
.end method

.method public getProviderMode()Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/f;->a:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    return-object v0
.end method

.method public setProviderDomain(Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/provider/f;->b:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    return-void
.end method

.method public setProviderMode(Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/provider/f;->a:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    .line 3
    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/Logger;->setProviderMode(Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;)V

    return-void
.end method
