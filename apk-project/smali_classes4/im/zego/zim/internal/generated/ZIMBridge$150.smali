.class Lim/zego/zim/internal/generated/ZIMBridge$150;
.super Ljava/lang/Object;
.source "ZIMBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/zego/zim/internal/generated/ZIMBridge;->onPeerMessageReceived(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenMessageReceivedInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/zego/zim/internal/generated/ZIMBridge;

.field final synthetic val$fromUserId:Ljava/lang/String;

.field final synthetic val$handle:J

.field final synthetic val$info:Lim/zego/zim/internal/generated/ZIMGenMessageReceivedInfo;

.field final synthetic val$messageList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lim/zego/zim/internal/generated/ZIMBridge;JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenMessageReceivedInfo;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$handle",
            "val$messageList",
            "val$info",
            "val$fromUserId"
        }
    .end annotation

    .line 3173
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMBridge$150;->this$0:Lim/zego/zim/internal/generated/ZIMBridge;

    iput-wide p2, p0, Lim/zego/zim/internal/generated/ZIMBridge$150;->val$handle:J

    iput-object p4, p0, Lim/zego/zim/internal/generated/ZIMBridge$150;->val$messageList:Ljava/util/ArrayList;

    iput-object p5, p0, Lim/zego/zim/internal/generated/ZIMBridge$150;->val$info:Lim/zego/zim/internal/generated/ZIMGenMessageReceivedInfo;

    iput-object p6, p0, Lim/zego/zim/internal/generated/ZIMBridge$150;->val$fromUserId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 3176
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMBridge$150;->val$handle:J

    invoke-static {v0, v1}, Lim/zego/zim/internal/ZIMImpl;->getInstance(J)Lim/zego/zim/internal/ZIMImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3178
    iget-object v1, v0, Lim/zego/zim/internal/ZIMImpl;->eventHandler:Lim/zego/zim/callback/ZIMEventHandler;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3182
    :cond_0
    iget-object v2, p0, Lim/zego/zim/internal/generated/ZIMBridge$150;->val$messageList:Ljava/util/ArrayList;

    invoke-static {v2}, Lim/zego/zim/internal/generated/ZIMCovert;->getZIMMessageList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3183
    new-instance v3, Lim/zego/zim/entity/ZIMMessageReceivedInfo;

    invoke-direct {v3}, Lim/zego/zim/entity/ZIMMessageReceivedInfo;-><init>()V

    .line 3184
    iget-object v4, p0, Lim/zego/zim/internal/generated/ZIMBridge$150;->val$info:Lim/zego/zim/internal/generated/ZIMGenMessageReceivedInfo;

    invoke-virtual {v4}, Lim/zego/zim/internal/generated/ZIMGenMessageReceivedInfo;->getIsOfflineMessage()Z

    move-result v4

    iput-boolean v4, v3, Lim/zego/zim/entity/ZIMMessageReceivedInfo;->isOfflineMessage:Z

    .line 3185
    iget-object v4, p0, Lim/zego/zim/internal/generated/ZIMBridge$150;->val$fromUserId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3, v4}, Lim/zego/zim/callback/ZIMEventHandler;->onPeerMessageReceived(Lim/zego/zim/ZIM;Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMMessageReceivedInfo;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
