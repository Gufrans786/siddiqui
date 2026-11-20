.class public Lcom/oppwa/mobile/connect/exception/PaymentException;
.super Ljava/lang/Exception;
.source "PaymentException.java"


# instance fields
.field private final a:Lcom/oppwa/mobile/connect/exception/PaymentError;


# direct methods
.method public constructor <init>(Lcom/oppwa/mobile/connect/exception/PaymentError;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getErrorCode()Lcom/oppwa/mobile/connect/exception/ErrorCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/oppwa/mobile/connect/exception/PaymentException;->a:Lcom/oppwa/mobile/connect/exception/PaymentError;

    return-void
.end method

.method public constructor <init>(Lcom/oppwa/mobile/connect/exception/PaymentError;Ljava/lang/Throwable;)V
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getErrorCode()Lcom/oppwa/mobile/connect/exception/ErrorCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/exception/PaymentError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    iput-object p1, p0, Lcom/oppwa/mobile/connect/exception/PaymentException;->a:Lcom/oppwa/mobile/connect/exception/PaymentError;

    return-void
.end method


# virtual methods
.method public getError()Lcom/oppwa/mobile/connect/exception/PaymentError;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/exception/PaymentException;->a:Lcom/oppwa/mobile/connect/exception/PaymentError;

    return-object v0
.end method
