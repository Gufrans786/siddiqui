.class Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler$4;
.super Ljava/lang/Object;
.source "ZPNsPluginEventHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;->onRegistered(Landroid/content/Context;Lim/zego/zpns/entity/ZPNsRegisterMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$resultMap:Lcom/facebook/react/bridge/WritableMap;


# direct methods
.method constructor <init>(Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;Landroid/content/Context;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 310
    iput-object p1, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler$4;->this$0:Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;

    iput-object p2, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler$4;->val$resultMap:Lcom/facebook/react/bridge/WritableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 313
    iget-object v0, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler$4;->this$0:Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;

    iget-object v1, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler$4;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler$4;->val$resultMap:Lcom/facebook/react/bridge/WritableMap;

    const-string v3, "registered"

    invoke-static {v0, v1, v2, v3}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;->-$$Nest$msendEvent(Lim/zego/zpns_reactnative_sdk/internal/ZPNsPluginEventHandler;Landroid/content/Context;Lcom/facebook/react/bridge/WritableMap;Ljava/lang/String;)V

    return-void
.end method
