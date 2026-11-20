.class final Lcom/oppwa/mobile/connect/threeds/c;
.super Ljava/lang/Object;
.source "DefaultClientEventListener.java"

# interfaces
.implements Lcom/nsoftware/ipworks3ds/sdk/ClientEventListener;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/oppwa/mobile/connect/threeds/constant/TransactionMode;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oppwa/mobile/connect/threeds/constant/TransactionMode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/oppwa/mobile/connect/threeds/c;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/oppwa/mobile/connect/threeds/c;->b:Lcom/oppwa/mobile/connect/threeds/constant/TransactionMode;

    return-void
.end method


# virtual methods
.method public fireDataPacketIn([B)V
    .locals 0

    return-void
.end method

.method public fireDataPacketOut([B)V
    .locals 0

    return-void
.end method

.method public fireLog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p1, "CRes"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/oppwa/mobile/connect/threeds/c;->a:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " - "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/oppwa/mobile/connect/threeds/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    const-string p1, "SW"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-static {p2}, Lcom/oppwa/mobile/connect/threeds/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p3, p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 6
    const-string p2, "%s - %s (%s)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object p2, p0, Lcom/oppwa/mobile/connect/threeds/c;->a:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/oppwa/mobile/connect/threeds/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public fireSSLServerAuthentication([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/oppwa/mobile/connect/threeds/c;->b:Lcom/oppwa/mobile/connect/threeds/constant/TransactionMode;

    sget-object p2, Lcom/oppwa/mobile/connect/threeds/constant/TransactionMode;->TEST:Lcom/oppwa/mobile/connect/threeds/constant/TransactionMode;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 2
    aput-boolean p2, p5, p1

    :cond_0
    return-void
.end method

.method public fireSSLStatus(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
