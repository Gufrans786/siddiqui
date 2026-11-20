.class Lim/zego/zim/internal/generated/ZIMBridge$130;
.super Ljava/lang/Object;
.source "ZIMBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/zego/zim/internal/generated/ZIMBridge;->onFriendApplicationListChange(JILjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/zego/zim/internal/generated/ZIMBridge;

.field final synthetic val$action:I

.field final synthetic val$friendApplicationList:Ljava/util/ArrayList;

.field final synthetic val$handle:J


# direct methods
.method constructor <init>(Lim/zego/zim/internal/generated/ZIMBridge;JLjava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$handle",
            "val$friendApplicationList",
            "val$action"
        }
    .end annotation

    .line 2799
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMBridge$130;->this$0:Lim/zego/zim/internal/generated/ZIMBridge;

    iput-wide p2, p0, Lim/zego/zim/internal/generated/ZIMBridge$130;->val$handle:J

    iput-object p4, p0, Lim/zego/zim/internal/generated/ZIMBridge$130;->val$friendApplicationList:Ljava/util/ArrayList;

    iput p5, p0, Lim/zego/zim/internal/generated/ZIMBridge$130;->val$action:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2802
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMBridge$130;->val$handle:J

    invoke-static {v0, v1}, Lim/zego/zim/internal/ZIMImpl;->getInstance(J)Lim/zego/zim/internal/ZIMImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2804
    iget-object v1, v0, Lim/zego/zim/internal/ZIMImpl;->eventHandler:Lim/zego/zim/callback/ZIMEventHandler;

    if-eqz v1, :cond_0

    .line 2806
    iget-object v2, p0, Lim/zego/zim/internal/generated/ZIMBridge$130;->val$friendApplicationList:Ljava/util/ArrayList;

    .line 2808
    invoke-static {v2}, Lim/zego/zim/internal/generated/ZIMCovert;->getZIMGenFriendApplicationInfoArrayList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lim/zego/zim/internal/generated/ZIMBridge$130;->val$action:I

    .line 2811
    invoke-static {v3}, Lim/zego/zim/enums/ZIMFriendApplicationListChangeAction;->getZIMFriendApplicationListChangeAction(I)Lim/zego/zim/enums/ZIMFriendApplicationListChangeAction;

    move-result-object v3

    .line 2806
    invoke-virtual {v1, v0, v2, v3}, Lim/zego/zim/callback/ZIMEventHandler;->onFriendApplicationListChanged(Lim/zego/zim/ZIM;Ljava/util/ArrayList;Lim/zego/zim/enums/ZIMFriendApplicationListChangeAction;)V

    :cond_0
    return-void
.end method
