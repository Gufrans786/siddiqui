.class public Lcom/payfort/fortpaymentsdk/exceptions/MerchantTokenNoExistException;
.super Ljava/lang/Exception;
.source "MerchantTokenNoExistException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 14
    const-string v0, "Merchant Token No Exist Exception"

    return-object v0
.end method
