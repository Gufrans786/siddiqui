.class Lim/zego/zim/internal/generated/ZIMBridge$189;
.super Ljava/lang/Object;
.source "ZIMBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/zego/zim/internal/generated/ZIMBridge;->onCallInvitationReceived(JLim/zego/zim/internal/generated/ZIMGenCallInvitationReceivedInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/zego/zim/internal/generated/ZIMBridge;

.field final synthetic val$callID:Ljava/lang/String;

.field final synthetic val$handle:J

.field final synthetic val$info:Lim/zego/zim/internal/generated/ZIMGenCallInvitationReceivedInfo;


# direct methods
.method constructor <init>(Lim/zego/zim/internal/generated/ZIMBridge;JLim/zego/zim/internal/generated/ZIMGenCallInvitationReceivedInfo;Ljava/lang/String;)V
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
            "val$info",
            "val$callID"
        }
    .end annotation

    .line 3974
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMBridge$189;->this$0:Lim/zego/zim/internal/generated/ZIMBridge;

    iput-wide p2, p0, Lim/zego/zim/internal/generated/ZIMBridge$189;->val$handle:J

    iput-object p4, p0, Lim/zego/zim/internal/generated/ZIMBridge$189;->val$info:Lim/zego/zim/internal/generated/ZIMGenCallInvitationReceivedInfo;

    iput-object p5, p0, Lim/zego/zim/internal/generated/ZIMBridge$189;->val$callID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 3977
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMBridge$189;->val$handle:J

    invoke-static {v0, v1}, Lim/zego/zim/internal/ZIMImpl;->getInstance(J)Lim/zego/zim/internal/ZIMImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3979
    iget-object v1, v0, Lim/zego/zim/internal/ZIMImpl;->eventHandler:Lim/zego/zim/callback/ZIMEventHandler;

    if-eqz v1, :cond_0

    .line 3981
    iget-object v2, p0, Lim/zego/zim/internal/generated/ZIMBridge$189;->val$info:Lim/zego/zim/internal/generated/ZIMGenCallInvitationReceivedInfo;

    .line 3982
    invoke-static {v2}, Lim/zego/zim/internal/generated/ZIMCovert;->getCallInvitationReceivedInfo(Lim/zego/zim/internal/generated/ZIMGenCallInvitationReceivedInfo;)Lim/zego/zim/entity/ZIMCallInvitationReceivedInfo;

    move-result-object v2

    iget-object v3, p0, Lim/zego/zim/internal/generated/ZIMBridge$189;->val$callID:Ljava/lang/String;

    .line 3981
    invoke-virtual {v1, v0, v2, v3}, Lim/zego/zim/callback/ZIMEventHandler;->onCallInvitationReceived(Lim/zego/zim/ZIM;Lim/zego/zim/entity/ZIMCallInvitationReceivedInfo;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
