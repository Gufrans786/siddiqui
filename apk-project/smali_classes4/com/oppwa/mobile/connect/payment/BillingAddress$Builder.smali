.class public Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;
.super Ljava/lang/Object;
.source "BillingAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppwa/mobile/connect/payment/BillingAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/Boolean;

.field private h:Ljava/lang/Boolean;

.field private i:Ljava/lang/Boolean;

.field private j:Ljava/lang/Boolean;

.field private k:Ljava/lang/Boolean;

.field private l:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->k:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic d(Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->l:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic e(Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->g:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic j(Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->h:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic k(Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->i:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic l(Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->j:Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/oppwa/mobile/connect/payment/BillingAddress;
    .locals 2

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/payment/BillingAddress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppwa/mobile/connect/payment/BillingAddress;-><init>(Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;Lcom/oppwa/mobile/connect/payment/BillingAddress$a;)V

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public setCityRequired(Ljava/lang/Boolean;)Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->i:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setCountry(Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public setCountryRequired(Ljava/lang/Boolean;)Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->g:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setPostCode(Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public setPostCodeRequired(Ljava/lang/Boolean;)Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->j:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setState(Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setStateRequired(Ljava/lang/Boolean;)Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->h:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setStreet1(Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public setStreet1Required(Ljava/lang/Boolean;)Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->k:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setStreet2(Ljava/lang/String;)Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->f:Ljava/lang/String;

    return-object p0
.end method

.method public setStreet2Required(Ljava/lang/Boolean;)Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/payment/BillingAddress$Builder;->l:Ljava/lang/Boolean;

    return-object p0
.end method
