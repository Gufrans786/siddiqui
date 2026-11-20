.class final Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$CompatWorkItem;
.super Ljava/lang/Object;
.source "ZPNsService.java"

# interfaces
.implements Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$GenericWorkItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CompatWorkItem"
.end annotation


# instance fields
.field final mIntent:Landroid/content/Intent;

.field final mStartId:I

.field final synthetic this$0:Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;


# direct methods
.method constructor <init>(Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;Landroid/content/Intent;I)V
    .locals 0

    .line 349
    iput-object p1, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$CompatWorkItem;->this$0:Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    iput-object p2, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$CompatWorkItem;->mIntent:Landroid/content/Intent;

    .line 351
    iput p3, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$CompatWorkItem;->mStartId:I

    return-void
.end method


# virtual methods
.method public complete()V
    .locals 2

    .line 362
    iget-object v0, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$CompatWorkItem;->this$0:Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;

    iget v1, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$CompatWorkItem;->mStartId:I

    invoke-virtual {v0, v1}, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;->stopSelf(I)V

    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 356
    iget-object v0, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$CompatWorkItem;->mIntent:Landroid/content/Intent;

    return-object v0
.end method
