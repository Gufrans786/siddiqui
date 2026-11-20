.class Lim/zego/RNZimReactnativeSdkModule$40;
.super Ljava/lang/Object;
.source "RNZimReactnativeSdkModule.java"

# interfaces
.implements Lim/zego/zim/callback/ZIMMessageExportedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/zego/RNZimReactnativeSdkModule;->exportLocalMessages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/zego/RNZimReactnativeSdkModule;

.field final synthetic val$_handle:Ljava/lang/String;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2615
    iput-object p1, p0, Lim/zego/RNZimReactnativeSdkModule$40;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    iput-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$40;->val$promise:Lcom/facebook/react/bridge/Promise;

    iput-object p3, p0, Lim/zego/RNZimReactnativeSdkModule$40;->val$_handle:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageExported(Lim/zego/zim/entity/ZIMError;)V
    .locals 2

    .line 2618
    iget-object v0, p1, Lim/zego/zim/entity/ZIMError;->code:Lim/zego/zim/enums/ZIMErrorCode;

    sget-object v1, Lim/zego/zim/enums/ZIMErrorCode;->SUCCESS:Lim/zego/zim/enums/ZIMErrorCode;

    if-ne v0, v1, :cond_0

    .line 2619
    iget-object p1, p0, Lim/zego/RNZimReactnativeSdkModule$40;->val$promise:Lcom/facebook/react/bridge/Promise;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 2621
    :cond_0
    iget-object v0, p0, Lim/zego/RNZimReactnativeSdkModule$40;->val$promise:Lcom/facebook/react/bridge/Promise;

    iget-object v1, p1, Lim/zego/zim/entity/ZIMError;->code:Lim/zego/zim/enums/ZIMErrorCode;

    invoke-virtual {v1}, Lim/zego/zim/enums/ZIMErrorCode;->value()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lim/zego/zim/entity/ZIMError;->message:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onMessageExportingProgress(JJ)V
    .locals 3

    .line 2627
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 2628
    const-string v1, "handle"

    iget-object v2, p0, Lim/zego/RNZimReactnativeSdkModule$40;->val$_handle:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2630
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    long-to-double p1, p1

    .line 2631
    invoke-interface {v1, p1, p2}, Lcom/facebook/react/bridge/WritableArray;->pushDouble(D)V

    long-to-double p1, p3

    .line 2632
    invoke-interface {v1, p1, p2}, Lcom/facebook/react/bridge/WritableArray;->pushDouble(D)V

    .line 2633
    const-string p1, "data"

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 2635
    iget-object p1, p0, Lim/zego/RNZimReactnativeSdkModule$40;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    const-string p2, "messagePortProgress"

    invoke-static {p1, p2, v0}, Lim/zego/RNZimReactnativeSdkModule;->-$$Nest$msendAPIEvent(Lim/zego/RNZimReactnativeSdkModule;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method
