.class Lim/zego/zim/internal/util/Background$2;
.super Ljava/lang/Object;
.source "ZIMBackgroundUtil.java"

# interfaces
.implements Lim/zego/zim/internal/util/Background$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/zego/zim/internal/util/Background;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lim/zego/zim/internal/util/Background$Listener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 139
    invoke-interface {p1}, Lim/zego/zim/internal/util/Background$Listener;->onBecameBackground()V

    return-void
.end method
