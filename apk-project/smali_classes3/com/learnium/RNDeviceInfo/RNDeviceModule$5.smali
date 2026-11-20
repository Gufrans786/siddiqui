.class Lcom/learnium/RNDeviceInfo/RNDeviceModule$5;
.super Ljava/lang/Object;
.source "RNDeviceModule.java"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/learnium/RNDeviceInfo/RNDeviceModule;->getAppSetId(Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/OutcomeReceiver<",
        "Landroid/adservices/appsetid/AppSetId;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/learnium/RNDeviceInfo/RNDeviceModule;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lcom/learnium/RNDeviceInfo/RNDeviceModule;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1137
    iput-object p1, p0, Lcom/learnium/RNDeviceInfo/RNDeviceModule$5;->this$0:Lcom/learnium/RNDeviceInfo/RNDeviceModule;

    iput-object p2, p0, Lcom/learnium/RNDeviceInfo/RNDeviceModule$5;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 1146
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RNDI: AppSetId was a failure: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1147
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 1149
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    .line 1150
    const-string v0, "id"

    const-string v1, "unknown"

    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    const-string v0, "scope"

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 1152
    iget-object v0, p0, Lcom/learnium/RNDeviceInfo/RNDeviceModule$5;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1137
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/learnium/RNDeviceInfo/RNDeviceModule$5;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onResult(Landroid/adservices/appsetid/AppSetId;)V
    .locals 3

    .line 1139
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "RNDI: AppSetId success."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1140
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 1141
    const-string v1, "id"

    invoke-virtual {p1}, Landroid/adservices/appsetid/AppSetId;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    const-string v1, "scope"

    invoke-virtual {p1}, Landroid/adservices/appsetid/AppSetId;->getScope()I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 1143
    iget-object p1, p0, Lcom/learnium/RNDeviceInfo/RNDeviceModule$5;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 1137
    check-cast p1, Landroid/adservices/appsetid/AppSetId;

    invoke-virtual {p0, p1}, Lcom/learnium/RNDeviceInfo/RNDeviceModule$5;->onResult(Landroid/adservices/appsetid/AppSetId;)V

    return-void
.end method
