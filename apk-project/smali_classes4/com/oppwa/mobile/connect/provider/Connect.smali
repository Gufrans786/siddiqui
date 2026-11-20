.class public Lcom/oppwa/mobile/connect/provider/Connect;
.super Ljava/lang/Object;
.source "Connect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;,
        Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProvider(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;)Lcom/oppwa/mobile/connect/provider/IPaymentProvider;
    .locals 1

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;

    invoke-direct {v0, p0, p1}, Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;-><init>(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;)V

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "4.6.0"

    return-object v0
.end method
