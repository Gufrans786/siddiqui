.class Lim/zego/zim/internal/generated/ZIMBridge$140;
.super Ljava/lang/Object;
.source "ZIMBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/zego/zim/internal/generated/ZIMBridge;->onExperimentalEventReceived(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/zego/zim/internal/generated/ZIMBridge;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$handle:J


# direct methods
.method constructor <init>(Lim/zego/zim/internal/generated/ZIMBridge;JLjava/lang/String;)V
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
            "val$content"
        }
    .end annotation

    .line 2987
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMBridge$140;->this$0:Lim/zego/zim/internal/generated/ZIMBridge;

    iput-wide p2, p0, Lim/zego/zim/internal/generated/ZIMBridge$140;->val$handle:J

    iput-object p4, p0, Lim/zego/zim/internal/generated/ZIMBridge$140;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2990
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMBridge$140;->val$handle:J

    invoke-static {v0, v1}, Lim/zego/zim/internal/ZIMImpl;->getInstance(J)Lim/zego/zim/internal/ZIMImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2992
    iget-object v1, v0, Lim/zego/zim/internal/ZIMImpl;->eventHandler:Lim/zego/zim/callback/ZIMEventHandler;

    if-eqz v1, :cond_0

    .line 2994
    iget-object v2, p0, Lim/zego/zim/internal/generated/ZIMBridge$140;->val$content:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lim/zego/zim/callback/ZIMEventHandler;->onExperimentalEventReceived(Lim/zego/zim/ZIM;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
