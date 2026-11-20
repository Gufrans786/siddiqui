.class Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$b;
.super Lcom/oppwa/mobile/connect/threeds/BaseTask;
.source "OppThreeDSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oppwa/mobile/connect/threeds/BaseTask<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;


# direct methods
.method private constructor <init>(Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$b;->a:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

    invoke-direct {p0}, Lcom/oppwa/mobile/connect/threeds/BaseTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$b;-><init>(Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;)V

    return-void
.end method

.method private a(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oppwa/mobile/connect/threeds/SchemeConfig;",
            ">;)Z"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$b;->a:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

    invoke-static {v0}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->f(Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;)Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oppwa/mobile/connect/threeds/b;->a(Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;Ljava/util/List;)Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;

    move-result-object v3

    .line 15
    iget-object p1, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$b;->a:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

    invoke-static {p1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->g(Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;)Lcom/nsoftware/ipworks3ds/sdk/ThreeDS2Service;

    move-result-object v1

    iget-object p1, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$b;->a:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

    .line 16
    invoke-static {p1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->a(Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;)Landroid/content/Context;

    move-result-object v2

    iget-object p1, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$b;->a:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

    .line 18
    invoke-static {p1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->f(Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;)Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->getLocale()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$b;->a:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

    .line 19
    invoke-static {p1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->f(Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;)Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSConfig;->getUiCustomization()Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;

    move-result-object v5

    new-instance v6, Lcom/oppwa/mobile/connect/threeds/c;

    iget-object p1, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$b;->a:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

    .line 20
    invoke-static {p1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->a(Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$b;->a:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

    invoke-static {v0}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->d(Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;)Lcom/oppwa/mobile/connect/threeds/constant/TransactionMode;

    move-result-object v0

    invoke-direct {v6, p1, v0}, Lcom/oppwa/mobile/connect/threeds/c;-><init>(Landroid/content/Context;Lcom/oppwa/mobile/connect/threeds/constant/TransactionMode;)V

    const/4 v7, 0x0

    .line 21
    invoke-interface/range {v1 .. v7}, Lcom/nsoftware/ipworks3ds/sdk/ThreeDS2Service;->initialize(Landroid/content/Context;Lcom/nsoftware/ipworks3ds/sdk/ConfigParameters;Ljava/lang/String;Lcom/nsoftware/ipworks3ds/sdk/customization/UiCustomization;Lcom/nsoftware/ipworks3ds/sdk/ClientEventListener;Lcom/nsoftware/ipworks3ds/sdk/SecurityEventListener;)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nsoftware/ipworks3ds/sdk/exception/SDKRuntimeException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$b;->a:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

    invoke-static {v0}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->c(Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;)Lcom/oppwa/mobile/connect/threeds/h;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$b;->a:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

    invoke-static {v1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->a(Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$b;->a:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

    invoke-static {v2}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->b(Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oppwa/mobile/connect/threeds/h;->a(Landroid/content/Context;Ljava/util/List;)Z

    .line 3
    iget-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$b;->a:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

    invoke-static {v0}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->c(Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;)Lcom/oppwa/mobile/connect/threeds/h;

    move-result-object v0

    iget-object v1, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$b;->a:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

    .line 4
    invoke-static {v1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->d(Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;)Lcom/oppwa/mobile/connect/threeds/constant/TransactionMode;

    move-result-object v1

    iget-object v2, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$b;->a:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

    invoke-static {v2}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->b(Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;)Ljava/util/List;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/oppwa/mobile/connect/threeds/h;->a(Lcom/oppwa/mobile/connect/threeds/constant/TransactionMode;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$b;->a(Ljava/util/List;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 1

    .line 8
    invoke-super {p0, p1}, Lcom/oppwa/mobile/connect/threeds/BaseTask;->onPostExecute(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$b;->a:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->a(Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;Z)Z

    .line 12
    iget-object p1, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$b;->a:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

    invoke-static {p1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->e(Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;)Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 13
    iget-object p1, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$b;->a:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

    invoke-static {p1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->e(Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;)Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$Callback;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$Callback;->onInitialized()V

    :cond_0
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
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$b;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$b;->a:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

    invoke-static {v0}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->e(Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;)Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$b;->a:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

    invoke-static {v1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->e(Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;)Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$Callback;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$Callback;->onError(Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$b;->a:Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;

    invoke-static {v0}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;->a(Lcom/oppwa/mobile/connect/threeds/OppThreeDSService;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while initializing OppThreeDSService: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oppwa/mobile/connect/threeds/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/oppwa/mobile/connect/threeds/OppThreeDSService$b;->a(Ljava/lang/Boolean;)V

    return-void
.end method
