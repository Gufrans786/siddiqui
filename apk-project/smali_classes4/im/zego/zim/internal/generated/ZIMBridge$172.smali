.class Lim/zego/zim/internal/generated/ZIMBridge$172;
.super Ljava/lang/Object;
.source "ZIMBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/zego/zim/internal/generated/ZIMBridge;->onGroupApplicationUpdated(JLjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/zego/zim/internal/generated/ZIMBridge;

.field final synthetic val$applicationList:Ljava/util/ArrayList;

.field final synthetic val$handle:J


# direct methods
.method constructor <init>(Lim/zego/zim/internal/generated/ZIMBridge;JLjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$handle",
            "val$applicationList"
        }
    .end annotation

    .line 3619
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMBridge$172;->this$0:Lim/zego/zim/internal/generated/ZIMBridge;

    iput-wide p2, p0, Lim/zego/zim/internal/generated/ZIMBridge$172;->val$handle:J

    iput-object p4, p0, Lim/zego/zim/internal/generated/ZIMBridge$172;->val$applicationList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3622
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMBridge$172;->val$handle:J

    invoke-static {v0, v1}, Lim/zego/zim/internal/ZIMImpl;->getInstance(J)Lim/zego/zim/internal/ZIMImpl;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3626
    :cond_0
    iget-object v1, v0, Lim/zego/zim/internal/ZIMImpl;->eventHandler:Lim/zego/zim/callback/ZIMEventHandler;

    if-nez v1, :cond_1

    :goto_0
    return-void

    .line 3630
    :cond_1
    iget-object v2, p0, Lim/zego/zim/internal/generated/ZIMBridge$172;->val$applicationList:Ljava/util/ArrayList;

    .line 3631
    invoke-static {v2}, Lim/zego/zim/internal/generated/ZIMCovert;->getZIMGenGroupApplicationInfoArrayList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3630
    invoke-virtual {v1, v0, v2}, Lim/zego/zim/callback/ZIMEventHandler;->onGroupApplicationUpdated(Lim/zego/zim/ZIM;Ljava/util/ArrayList;)V

    return-void
.end method
