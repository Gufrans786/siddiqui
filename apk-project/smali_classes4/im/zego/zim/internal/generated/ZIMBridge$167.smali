.class Lim/zego/zim/internal/generated/ZIMBridge$167;
.super Ljava/lang/Object;
.source "ZIMBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/zego/zim/internal/generated/ZIMBridge;->onGroupStateChanged(JIILim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;Lim/zego/zim/internal/generated/ZIMGenFullGroupInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/zego/zim/internal/generated/ZIMBridge;

.field final synthetic val$event:I

.field final synthetic val$groupInfo:Lim/zego/zim/internal/generated/ZIMGenFullGroupInfo;

.field final synthetic val$handle:J

.field final synthetic val$operatedInfo:Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lim/zego/zim/internal/generated/ZIMBridge;JIILim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;Lim/zego/zim/internal/generated/ZIMGenFullGroupInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$handle",
            "val$state",
            "val$event",
            "val$operatedInfo",
            "val$groupInfo"
        }
    .end annotation

    .line 3509
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMBridge$167;->this$0:Lim/zego/zim/internal/generated/ZIMBridge;

    iput-wide p2, p0, Lim/zego/zim/internal/generated/ZIMBridge$167;->val$handle:J

    iput p4, p0, Lim/zego/zim/internal/generated/ZIMBridge$167;->val$state:I

    iput p5, p0, Lim/zego/zim/internal/generated/ZIMBridge$167;->val$event:I

    iput-object p6, p0, Lim/zego/zim/internal/generated/ZIMBridge$167;->val$operatedInfo:Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;

    iput-object p7, p0, Lim/zego/zim/internal/generated/ZIMBridge$167;->val$groupInfo:Lim/zego/zim/internal/generated/ZIMGenFullGroupInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 3512
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMBridge$167;->val$handle:J

    invoke-static {v0, v1}, Lim/zego/zim/internal/ZIMImpl;->getInstance(J)Lim/zego/zim/internal/ZIMImpl;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3514
    iget-object v2, v3, Lim/zego/zim/internal/ZIMImpl;->eventHandler:Lim/zego/zim/callback/ZIMEventHandler;

    if-nez v2, :cond_0

    goto :goto_0

    .line 3518
    :cond_0
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMBridge$167;->val$state:I

    .line 3519
    invoke-static {v0}, Lim/zego/zim/enums/ZIMGroupState;->getZIMGroupState(I)Lim/zego/zim/enums/ZIMGroupState;

    move-result-object v4

    iget v0, p0, Lim/zego/zim/internal/generated/ZIMBridge$167;->val$event:I

    .line 3520
    invoke-static {v0}, Lim/zego/zim/enums/ZIMGroupEvent;->getZIMGroupEvent(I)Lim/zego/zim/enums/ZIMGroupEvent;

    move-result-object v5

    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMBridge$167;->val$operatedInfo:Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;

    .line 3521
    invoke-static {v0}, Lim/zego/zim/internal/generated/ZIMCovert;->getGroupOperatedInfo(Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;)Lim/zego/zim/entity/ZIMGroupOperatedInfo;

    move-result-object v6

    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMBridge$167;->val$groupInfo:Lim/zego/zim/internal/generated/ZIMGenFullGroupInfo;

    .line 3522
    invoke-static {v0}, Lim/zego/zim/internal/generated/ZIMCovert;->getFullGroupInfo(Lim/zego/zim/internal/generated/ZIMGenFullGroupInfo;)Lim/zego/zim/entity/ZIMGroupFullInfo;

    move-result-object v7

    .line 3518
    invoke-virtual/range {v2 .. v7}, Lim/zego/zim/callback/ZIMEventHandler;->onGroupStateChanged(Lim/zego/zim/ZIM;Lim/zego/zim/enums/ZIMGroupState;Lim/zego/zim/enums/ZIMGroupEvent;Lim/zego/zim/entity/ZIMGroupOperatedInfo;Lim/zego/zim/entity/ZIMGroupFullInfo;)V

    :cond_1
    :goto_0
    return-void
.end method
