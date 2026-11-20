.class Lim/zego/zim/internal/generated/ZIMBridge$181;
.super Ljava/lang/Object;
.source "ZIMBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/zego/zim/internal/generated/ZIMBridge;->onEventGroupNameUpdated(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/zego/zim/internal/generated/ZIMBridge;

.field final synthetic val$groupID:Ljava/lang/String;

.field final synthetic val$groupName:Ljava/lang/String;

.field final synthetic val$handle:J

.field final synthetic val$operatedInfo:Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;


# direct methods
.method constructor <init>(Lim/zego/zim/internal/generated/ZIMBridge;JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;Ljava/lang/String;)V
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
            "val$groupName",
            "val$operatedInfo",
            "val$groupID"
        }
    .end annotation

    .line 3813
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMBridge$181;->this$0:Lim/zego/zim/internal/generated/ZIMBridge;

    iput-wide p2, p0, Lim/zego/zim/internal/generated/ZIMBridge$181;->val$handle:J

    iput-object p4, p0, Lim/zego/zim/internal/generated/ZIMBridge$181;->val$groupName:Ljava/lang/String;

    iput-object p5, p0, Lim/zego/zim/internal/generated/ZIMBridge$181;->val$operatedInfo:Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;

    iput-object p6, p0, Lim/zego/zim/internal/generated/ZIMBridge$181;->val$groupID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 3816
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMBridge$181;->val$handle:J

    invoke-static {v0, v1}, Lim/zego/zim/internal/ZIMImpl;->getInstance(J)Lim/zego/zim/internal/ZIMImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3818
    iget-object v1, v0, Lim/zego/zim/internal/ZIMImpl;->eventHandler:Lim/zego/zim/callback/ZIMEventHandler;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3822
    :cond_0
    iget-object v2, p0, Lim/zego/zim/internal/generated/ZIMBridge$181;->val$groupName:Ljava/lang/String;

    iget-object v3, p0, Lim/zego/zim/internal/generated/ZIMBridge$181;->val$operatedInfo:Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;

    .line 3823
    invoke-static {v3}, Lim/zego/zim/internal/generated/ZIMCovert;->getGroupOperatedInfo(Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;)Lim/zego/zim/entity/ZIMGroupOperatedInfo;

    move-result-object v3

    iget-object v4, p0, Lim/zego/zim/internal/generated/ZIMBridge$181;->val$groupID:Ljava/lang/String;

    .line 3822
    invoke-virtual {v1, v0, v2, v3, v4}, Lim/zego/zim/callback/ZIMEventHandler;->onGroupNameUpdated(Lim/zego/zim/ZIM;Ljava/lang/String;Lim/zego/zim/entity/ZIMGroupOperatedInfo;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
