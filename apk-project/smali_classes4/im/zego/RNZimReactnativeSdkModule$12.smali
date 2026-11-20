.class Lim/zego/RNZimReactnativeSdkModule$12;
.super Ljava/lang/Object;
.source "RNZimReactnativeSdkModule.java"

# interfaces
.implements Lim/zego/zim/callback/ZIMUserOfflinePushRuleUpdatedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/zego/RNZimReactnativeSdkModule;->updateUserOfflinePushRule(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/zego/RNZimReactnativeSdkModule;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lim/zego/RNZimReactnativeSdkModule;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1386
    iput-object p1, p0, Lim/zego/RNZimReactnativeSdkModule$12;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    iput-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$12;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserOfflinePushRuleInfoUpdated(Lim/zego/zim/entity/ZIMUserOfflinePushRule;Lim/zego/zim/entity/ZIMError;)V
    .locals 2

    .line 1392
    iget-object v0, p2, Lim/zego/zim/entity/ZIMError;->code:Lim/zego/zim/enums/ZIMErrorCode;

    sget-object v1, Lim/zego/zim/enums/ZIMErrorCode;->SUCCESS:Lim/zego/zim/enums/ZIMErrorCode;

    if-ne v0, v1, :cond_0

    .line 1393
    iget-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$12;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-static {p1}, Lim/zego/RNZIMConverter;->convertUserRule(Lim/zego/zim/entity/ZIMUserOfflinePushRule;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 1395
    :cond_0
    iget-object p1, p0, Lim/zego/RNZimReactnativeSdkModule$12;->val$promise:Lcom/facebook/react/bridge/Promise;

    iget-object v0, p2, Lim/zego/zim/entity/ZIMError;->code:Lim/zego/zim/enums/ZIMErrorCode;

    invoke-virtual {v0}, Lim/zego/zim/enums/ZIMErrorCode;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object p2, p2, Lim/zego/zim/entity/ZIMError;->message:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
