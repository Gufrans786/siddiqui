.class Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$ComponentNameWithWakeful;
.super Ljava/lang/Object;
.source "ZPNsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/zego/zpns_reactnative_sdk/internal/ZPNsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ComponentNameWithWakeful"
.end annotation


# instance fields
.field private componentName:Landroid/content/ComponentName;

.field private useWakefulService:Z


# direct methods
.method constructor <init>(Landroid/content/ComponentName;Z)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$ComponentNameWithWakeful;->componentName:Landroid/content/ComponentName;

    .line 77
    iput-boolean p2, p0, Lim/zego/zpns_reactnative_sdk/internal/ZPNsService$ComponentNameWithWakeful;->useWakefulService:Z

    return-void
.end method
