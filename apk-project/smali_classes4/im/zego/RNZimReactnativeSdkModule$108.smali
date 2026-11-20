.class Lim/zego/RNZimReactnativeSdkModule$108;
.super Ljava/lang/Object;
.source "RNZimReactnativeSdkModule.java"

# interfaces
.implements Lim/zego/zim/callback/ZIMGroupInviteApplicationRejectedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/zego/RNZimReactnativeSdkModule;->rejectGroupInviteApplication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
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

    .line 5239
    iput-object p1, p0, Lim/zego/RNZimReactnativeSdkModule$108;->this$0:Lim/zego/RNZimReactnativeSdkModule;

    iput-object p2, p0, Lim/zego/RNZimReactnativeSdkModule$108;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupInviteApplicationRejected(Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/entity/ZIMError;)V
    .locals 2

    .line 5242
    iget-object v0, p3, Lim/zego/zim/entity/ZIMError;->code:Lim/zego/zim/enums/ZIMErrorCode;

    sget-object v1, Lim/zego/zim/enums/ZIMErrorCode;->SUCCESS:Lim/zego/zim/enums/ZIMErrorCode;

    if-ne v0, v1, :cond_0

    .line 5243
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p3

    .line 5244
    const-string v0, "groupID"

    invoke-interface {p3, v0, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5245
    const-string p1, "inviterUserID"

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5246
    iget-object p1, p0, Lim/zego/RNZimReactnativeSdkModule$108;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {p1, p3}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 5248
    :cond_0
    iget-object p1, p0, Lim/zego/RNZimReactnativeSdkModule$108;->val$promise:Lcom/facebook/react/bridge/Promise;

    iget-object p2, p3, Lim/zego/zim/entity/ZIMError;->code:Lim/zego/zim/enums/ZIMErrorCode;

    invoke-virtual {p2}, Lim/zego/zim/enums/ZIMErrorCode;->value()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p3, Lim/zego/zim/entity/ZIMError;->message:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
