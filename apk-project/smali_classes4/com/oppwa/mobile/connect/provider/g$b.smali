.class Lcom/oppwa/mobile/connect/provider/g$b;
.super Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$Callback;
.source "ThreeDSManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppwa/mobile/connect/provider/g;->a(Ljava/util/List;Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/CountDownLatch;

.field final synthetic b:Lcom/oppwa/mobile/connect/provider/g;


# direct methods
.method constructor <init>(Lcom/oppwa/mobile/connect/provider/g;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/provider/g$b;->b:Lcom/oppwa/mobile/connect/provider/g;

    iput-object p2, p0, Lcom/oppwa/mobile/connect/provider/g$b;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;[Ljava/lang/StackTraceElement;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$Callback;->onError(Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    .line 3
    iget-object p2, p0, Lcom/oppwa/mobile/connect/provider/g$b;->b:Lcom/oppwa/mobile/connect/provider/g;

    sget-object v0, Lcom/oppwa/mobile/connect/provider/g$c;->a:Lcom/oppwa/mobile/connect/provider/g$c;

    invoke-static {p2, v0}, Lcom/oppwa/mobile/connect/provider/g;->a(Lcom/oppwa/mobile/connect/provider/g;Lcom/oppwa/mobile/connect/provider/g$c;)Lcom/oppwa/mobile/connect/provider/g$c;

    .line 4
    iget-object p2, p0, Lcom/oppwa/mobile/connect/provider/g$b;->b:Lcom/oppwa/mobile/connect/provider/g;

    invoke-static {p2, p1}, Lcom/oppwa/mobile/connect/provider/g;->b(Lcom/oppwa/mobile/connect/provider/g;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/oppwa/mobile/connect/provider/g$b;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onInitialized()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$Callback;->onInitialized()V

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/g$b;->b:Lcom/oppwa/mobile/connect/provider/g;

    sget-object v1, Lcom/oppwa/mobile/connect/provider/g$c;->c:Lcom/oppwa/mobile/connect/provider/g$c;

    invoke-static {v0, v1}, Lcom/oppwa/mobile/connect/provider/g;->a(Lcom/oppwa/mobile/connect/provider/g;Lcom/oppwa/mobile/connect/provider/g$c;)Lcom/oppwa/mobile/connect/provider/g$c;

    .line 4
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/g$b;->b:Lcom/oppwa/mobile/connect/provider/g;

    const-string v1, "Successfully initialized"

    invoke-static {v0, v1}, Lcom/oppwa/mobile/connect/provider/g;->a(Lcom/oppwa/mobile/connect/provider/g;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/g$b;->b:Lcom/oppwa/mobile/connect/provider/g;

    invoke-static {v0}, Lcom/oppwa/mobile/connect/provider/g;->b(Lcom/oppwa/mobile/connect/provider/g;)V

    .line 7
    iget-object v0, p0, Lcom/oppwa/mobile/connect/provider/g$b;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
