.class Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$1;
.super Ljava/lang/Object;
.source "ZPNsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->onHandleWork(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$zpNsService:Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;


# direct methods
.method constructor <init>(Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 552
    iput-object p1, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$1;->this$0:Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;

    iput-object p2, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$1;->val$zpNsService:Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;

    iput-object p3, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 555
    iget-object v0, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$1;->val$zpNsService:Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;

    iget-object v1, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$1;->val$intent:Landroid/content/Intent;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->onStartCommand(Landroid/content/Intent;II)I

    return-void
.end method
