.class Lcom/oppwa/mobile/connect/checkout/dialog/a;
.super Lcom/oppwa/mobile/connect/utils/BaseTask;
.source "AlipayTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oppwa/mobile/connect/utils/BaseTask<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String; = "com.oppwa.mobile.connect.checkout.dialog.a"


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/oppwa/mobile/connect/provider/Transaction;

.field private final c:Lcom/oppwa/mobile/connect/checkout/dialog/b;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/oppwa/mobile/connect/provider/Transaction;Lcom/oppwa/mobile/connect/checkout/dialog/b;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/oppwa/mobile/connect/utils/BaseTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a;->a:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a;->b:Lcom/oppwa/mobile/connect/provider/Transaction;

    .line 4
    iput-object p3, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a;->c:Lcom/oppwa/mobile/connect/checkout/dialog/b;

    .line 5
    iput-object p4, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lcom/alipay/sdk/app/PayTask;

    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    .line 3
    iget-object v1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a;->d:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/sdk/app/PayTask;->pay(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 4
    invoke-super {p0, p1}, Lcom/oppwa/mobile/connect/utils/BaseTask;->onPostExecute(Ljava/lang/Object;)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resultStatus={"

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(.*?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 11
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "6001"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a;->c:Lcom/oppwa/mobile/connect/checkout/dialog/b;

    invoke-interface {p1}, Lcom/oppwa/mobile/connect/checkout/dialog/b;->onAlipayCanceled()V

    return-void

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a;->c:Lcom/oppwa/mobile/connect/checkout/dialog/b;

    iget-object v0, p0, Lcom/oppwa/mobile/connect/checkout/dialog/a;->b:Lcom/oppwa/mobile/connect/provider/Transaction;

    invoke-interface {p1, v0}, Lcom/oppwa/mobile/connect/checkout/dialog/b;->onAlipayCompleted(Lcom/oppwa/mobile/connect/provider/Transaction;)V

    return-void
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/checkout/dialog/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/checkout/dialog/a;->e:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/oppwa/mobile/connect/checkout/dialog/a;->a(Ljava/lang/String;)V

    return-void
.end method
