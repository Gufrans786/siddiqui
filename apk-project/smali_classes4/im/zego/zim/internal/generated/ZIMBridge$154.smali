.class Lim/zego/zim/internal/generated/ZIMBridge$154;
.super Ljava/lang/Object;
.source "ZIMBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/zego/zim/internal/generated/ZIMBridge;->onGroupMessageReceived(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenMessageReceivedInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/zego/zim/internal/generated/ZIMBridge;

.field final synthetic val$fromGroupID:Ljava/lang/String;

.field final synthetic val$handle:J

.field final synthetic val$info:Lim/zego/zim/internal/generated/ZIMGenMessageReceivedInfo;

.field final synthetic val$messageList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lim/zego/zim/internal/generated/ZIMBridge;JLim/zego/zim/internal/generated/ZIMGenMessageReceivedInfo;Ljava/util/ArrayList;Ljava/lang/String;)V
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
            "val$info",
            "val$messageList",
            "val$fromGroupID"
        }
    .end annotation

    .line 3253
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMBridge$154;->this$0:Lim/zego/zim/internal/generated/ZIMBridge;

    iput-wide p2, p0, Lim/zego/zim/internal/generated/ZIMBridge$154;->val$handle:J

    iput-object p4, p0, Lim/zego/zim/internal/generated/ZIMBridge$154;->val$info:Lim/zego/zim/internal/generated/ZIMGenMessageReceivedInfo;

    iput-object p5, p0, Lim/zego/zim/internal/generated/ZIMBridge$154;->val$messageList:Ljava/util/ArrayList;

    iput-object p6, p0, Lim/zego/zim/internal/generated/ZIMBridge$154;->val$fromGroupID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 3256
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMBridge$154;->val$handle:J

    invoke-static {v0, v1}, Lim/zego/zim/internal/ZIMImpl;->getInstance(J)Lim/zego/zim/internal/ZIMImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3258
    iget-object v1, v0, Lim/zego/zim/internal/ZIMImpl;->eventHandler:Lim/zego/zim/callback/ZIMEventHandler;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3262
    :cond_0
    new-instance v2, Lim/zego/zim/entity/ZIMMessageReceivedInfo;

    invoke-direct {v2}, Lim/zego/zim/entity/ZIMMessageReceivedInfo;-><init>()V

    .line 3263
    iget-object v3, p0, Lim/zego/zim/internal/generated/ZIMBridge$154;->val$info:Lim/zego/zim/internal/generated/ZIMGenMessageReceivedInfo;

    invoke-virtual {v3}, Lim/zego/zim/internal/generated/ZIMGenMessageReceivedInfo;->getIsOfflineMessage()Z

    move-result v3

    iput-boolean v3, v2, Lim/zego/zim/entity/ZIMMessageReceivedInfo;->isOfflineMessage:Z

    .line 3264
    iget-object v3, p0, Lim/zego/zim/internal/generated/ZIMBridge$154;->val$messageList:Ljava/util/ArrayList;

    .line 3265
    invoke-static {v3}, Lim/zego/zim/internal/generated/ZIMCovert;->getZIMMessageList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lim/zego/zim/internal/generated/ZIMBridge$154;->val$fromGroupID:Ljava/lang/String;

    .line 3264
    invoke-virtual {v1, v0, v3, v2, v4}, Lim/zego/zim/callback/ZIMEventHandler;->onGroupMessageReceived(Lim/zego/zim/ZIM;Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMMessageReceivedInfo;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
