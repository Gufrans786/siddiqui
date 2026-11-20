.class Lcom/oppwa/mobile/connect/threeds/a$a;
.super Ljava/lang/Object;
.source "ChallengeCallbackAdapter.java"

# interfaces
.implements Lcom/oppwa/mobile/connect/threeds/ChallengeCallback$CompletionEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppwa/mobile/connect/threeds/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/oppwa/mobile/connect/threeds/a$a;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/oppwa/mobile/connect/threeds/a$a;->b:Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;

    return-void
.end method


# virtual methods
.method public getTransactionId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/threeds/a$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionStatus()Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/threeds/a$a;->b:Lcom/oppwa/mobile/connect/threeds/constant/TransactionStatus;

    return-object v0
.end method
