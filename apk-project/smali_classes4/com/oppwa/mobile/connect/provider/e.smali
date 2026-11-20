.class Lcom/oppwa/mobile/connect/provider/e;
.super Ljava/lang/Object;
.source "OppwaMobile.java"


# static fields
.field private static b:Lcom/oppwa/mobile/connect/provider/e;


# instance fields
.field private a:Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Lcom/oppwa/mobile/connect/provider/e;
    .locals 1

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/provider/e;->b:Lcom/oppwa/mobile/connect/provider/e;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/oppwa/mobile/connect/provider/e;

    invoke-direct {v0}, Lcom/oppwa/mobile/connect/provider/e;-><init>()V

    sput-object v0, Lcom/oppwa/mobile/connect/provider/e;->b:Lcom/oppwa/mobile/connect/provider/e;

    .line 5
    :cond_0
    sget-object v0, Lcom/oppwa/mobile/connect/provider/e;->b:Lcom/oppwa/mobile/connect/provider/e;

    return-object v0
.end method


# virtual methods
.method a(Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/oppwa/mobile/connect/provider/e;->a:Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;

    return-void
.end method

.method b()Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/e;->a:Lcom/oppwa/mobile/connect/provider/OppPaymentProvider;

    return-object v0
.end method
