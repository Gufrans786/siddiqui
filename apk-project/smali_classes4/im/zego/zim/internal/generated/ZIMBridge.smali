.class public Lim/zego/zim/internal/generated/ZIMBridge;
.super Ljava/lang/Object;
.source "ZIMBridge.java"

# interfaces
.implements Lim/zego/zim/internal/generated/ZIMGenCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lim/zego/zim/internal/generated/ZIMGenMethod;->setCallbacks(Lim/zego/zim/internal/generated/ZIMGenCallbacks;)V

    return-void
.end method


# virtual methods
.method public onAllRoomLeft(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "roomIdList",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 1593
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$73;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$73;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBlacklistChanged(JILjava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "action",
            "userList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenUserInfo;",
            ">;)V"
        }
    .end annotation

    .line 2779
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$129;

    move-object v2, p0

    move-wide v3, p1

    move v6, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lim/zego/zim/internal/generated/ZIMBridge$129;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLjava/util/ArrayList;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBlacklistChecked(JZLim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "isUserInBlacklist",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 2683
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$124;

    move-object v2, p0

    move-wide v3, p1

    move v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$124;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JIZLim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBlacklistQueried(JLjava/util/ArrayList;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "blacklist",
            "nextFlag",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenUserInfo;",
            ">;I",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 2663
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$123;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$123;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/util/ArrayList;ILim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBlacklistUsersAdded(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "userInfoList",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenErrorUserInfo;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 2621
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$121;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$121;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBlacklistUsersRemoved(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "userInfoList",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenErrorUserInfo;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 2641
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$122;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$122;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBroadcastMessageReceived(JLim/zego/zim/internal/generated/ZIMGenMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "message"
        }
    .end annotation

    .line 3273
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$155;

    invoke-direct {v1, p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMBridge$155;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLim/zego/zim/internal/generated/ZIMGenMessage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCallAcceptanceSent(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "callId",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 2351
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$108;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$108;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCallCancelSent(JLjava/lang/String;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "callId",
            "errorInvitees",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 2331
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$107;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$107;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCallEndSent(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenCallEndedSentInfo;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "callId",
            "info",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 2269
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$104;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$104;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenCallEndedSentInfo;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCallInvitationAccepted(JLim/zego/zim/internal/generated/ZIMGenCallInvitationAcceptedInfo;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "info",
            "callID"
        }
    .end annotation

    .line 4010
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$191;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lim/zego/zim/internal/generated/ZIMBridge$191;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLim/zego/zim/internal/generated/ZIMGenCallInvitationAcceptedInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCallInvitationCancelled(JLim/zego/zim/internal/generated/ZIMGenCallInvitationCancelledInfo;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "info",
            "callID"
        }
    .end annotation

    .line 3992
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$190;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lim/zego/zim/internal/generated/ZIMBridge$190;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLim/zego/zim/internal/generated/ZIMGenCallInvitationCancelledInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCallInvitationCreated(JLim/zego/zim/internal/generated/ZIMGenCallInvitationCreatedInfo;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "info",
            "callID"
        }
    .end annotation

    .line 4124
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$197;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lim/zego/zim/internal/generated/ZIMBridge$197;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLim/zego/zim/internal/generated/ZIMGenCallInvitationCreatedInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCallInvitationEnded(JLim/zego/zim/internal/generated/ZIMGenCallInvitationEndedInfo;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "info",
            "callID"
        }
    .end annotation

    .line 4142
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$198;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lim/zego/zim/internal/generated/ZIMBridge$198;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLim/zego/zim/internal/generated/ZIMGenCallInvitationEndedInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCallInvitationReceived(JLim/zego/zim/internal/generated/ZIMGenCallInvitationReceivedInfo;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "info",
            "callID"
        }
    .end annotation

    .line 3974
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$189;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lim/zego/zim/internal/generated/ZIMBridge$189;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLim/zego/zim/internal/generated/ZIMGenCallInvitationReceivedInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCallInvitationRejected(JLim/zego/zim/internal/generated/ZIMGenCallInvitationRejectedInfo;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "info",
            "callID"
        }
    .end annotation

    .line 4028
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$192;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lim/zego/zim/internal/generated/ZIMBridge$192;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLim/zego/zim/internal/generated/ZIMGenCallInvitationRejectedInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCallInvitationSent(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenCallInvitationSentInfo;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "callId",
            "info",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 2225
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$102;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$102;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenCallInvitationSentInfo;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCallInvitationTimeout(JLim/zego/zim/internal/generated/ZIMGenCallInvitationTimeoutInfo;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "info",
            "callID"
        }
    .end annotation

    .line 4046
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$193;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lim/zego/zim/internal/generated/ZIMBridge$193;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLim/zego/zim/internal/generated/ZIMGenCallInvitationTimeoutInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCallInviteesAnsweredTimeout(JLjava/util/ArrayList;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "invitees",
            "callID"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 4090
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$195;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lim/zego/zim/internal/generated/ZIMBridge$195;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLjava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCallJoinSent(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenCallJoinSentInfo;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "callId",
            "genInfo",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 2289
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$105;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$105;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenCallJoinSentInfo;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCallListQueried(JLjava/util/ArrayList;JLim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "callInfos",
            "nextFlag",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenCallInfo;",
            ">;J",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 4068
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$194;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-wide v7, p4

    move-object/from16 v9, p6

    move/from16 v5, p7

    invoke-direct/range {v1 .. v9}, Lim/zego/zim/internal/generated/ZIMBridge$194;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/util/ArrayList;JLim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCallQuitSent(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenCallQuitSentInfo;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "callId",
            "genInfo",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 2310
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$106;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$106;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenCallQuitSentInfo;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCallRejectionSent(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "callId",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 2370
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$109;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$109;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCallUserStateChanged(JLim/zego/zim/internal/generated/ZIMGenCallUserStateChangeInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "info"
        }
    .end annotation

    .line 4106
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$196;

    invoke-direct {v1, p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMBridge$196;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLim/zego/zim/internal/generated/ZIMGenCallUserStateChangeInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCallingInvitationSent(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenCallingInvitationSentInfo;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "callId",
            "info",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 2247
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$103;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$103;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenCallingInvitationSentInfo;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCombineMessageDetailQueried(JLim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "genMessage",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 1132
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$52;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$52;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onConnectionStateChanged(JIILjava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "state",
            "event",
            "extendedData"
        }
    .end annotation

    .line 2936
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$137;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$137;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onConversationChanged(JLjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "conversationChangeInfoList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenConversationChangeInfo;",
            ">;)V"
        }
    .end annotation

    .line 3058
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$144;

    invoke-direct {v1, p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMBridge$144;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onConversationDeleted(JLjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "conversationId",
            "conversationType",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 446
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$21;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$21;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onConversationDraftSet(JLjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "conversationId",
            "conversationType",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 711
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$34;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$34;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onConversationListQueried(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "conversationList",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenConversation;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 362
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$17;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$17;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onConversationMarkSet(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "failedInfos",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenConversationBaseInfo;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 734
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$35;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$35;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onConversationMessageReceiptChanged(JLjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "infos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessageReceiptInfo;",
            ">;)V"
        }
    .end annotation

    .line 3134
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$148;

    invoke-direct {v1, p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMBridge$148;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onConversationMessageReceiptReadSent(JLjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "conversationId",
            "conversationType",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 689
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$33;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$33;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onConversationMessagesAllDeleted(JLim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 1010
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$46;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lim/zego/zim/internal/generated/ZIMBridge$46;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onConversationNotificationStatusSet(JLjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "conversationId",
            "conversationType",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 666
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$32;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$32;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onConversationPinnedListQueried(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "conversationList",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenConversation;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 404
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$19;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$19;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onConversationPinnedStateUpdate(JLjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "conversationID",
            "type",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 425
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$20;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$20;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onConversationQueried(JLim/zego/zim/internal/generated/ZIMGenConversation;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "conversation",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 383
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$18;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$18;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenConversation;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onConversationSyncStateChanged(JI)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "state"
        }
    .end annotation

    .line 3077
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$145;

    invoke-direct {v1, p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMBridge$145;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onConversationTotalUnreadCountQueried(JILim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "unreadCount",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 486
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$23;

    move-object v2, p0

    move-wide v3, p1

    move v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$23;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JIILim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onConversationTotalUnreadMessageCountCleared(JLim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 506
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$24;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lim/zego/zim/internal/generated/ZIMBridge$24;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onConversationTotalUnreadMessageCountUpdated(JI)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "totalUnreadMessageCount"
        }
    .end annotation

    .line 3115
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$147;

    invoke-direct {v1, p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMBridge$147;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onConversationUnreadMessageCountCleared(JLjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "conversationId",
            "conversationType",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 527
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$25;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$25;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onConversationsAllDeleted(JLim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 467
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$22;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lim/zego/zim/internal/generated/ZIMBridge$22;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onConversationsAllDeletedEvent(JLim/zego/zim/internal/generated/ZIMGenConversationsAllDeletedInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "info"
        }
    .end annotation

    .line 3095
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$146;

    invoke-direct {v1, p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMBridge$146;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLim/zego/zim/internal/generated/ZIMGenConversationsAllDeletedInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onConversationsSearched(JLjava/util/ArrayList;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "globalMessageInfoList",
            "nextFlag",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenConversationSearchInfo;",
            ">;I",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 1231
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$56;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$56;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/util/ArrayList;ILim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(JLim/zego/zim/internal/generated/ZIMGenError;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "errorInfo"
        }
    .end annotation

    .line 2955
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$138;

    invoke-direct {v1, p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMBridge$138;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEventGroupAliasUpdated(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupAlias",
            "operatedUserID",
            "groupID"
        }
    .end annotation

    .line 3832
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$182;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$182;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEventGroupAvatarUrlUpdated(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupAvatarUrl",
            "operatedInfo",
            "groupID"
        }
    .end annotation

    .line 3850
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$183;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$183;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEventGroupNameUpdated(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupName",
            "operatedInfo",
            "groupID"
        }
    .end annotation

    .line 3813
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$181;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$181;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEventGroupNoticeUpdated(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupNotice",
            "operatedInfo",
            "groupID"
        }
    .end annotation

    .line 3870
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$184;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$184;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEventMessageDeleted(JLim/zego/zim/internal/generated/ZIMGenMessageDeletedInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "deletedInfo"
        }
    .end annotation

    .line 3313
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$157;

    invoke-direct {v1, p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMBridge$157;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLim/zego/zim/internal/generated/ZIMGenMessageDeletedInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onExperimentalAPICalled(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "result",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 75
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$4;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$4;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onExperimentalEventReceived(JLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "content"
        }
    .end annotation

    .line 2987
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$140;

    invoke-direct {v1, p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMBridge$140;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFileCacheCleared(JLim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 2896
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$135;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lim/zego/zim/internal/generated/ZIMBridge$135;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFileCacheQueried(JLim/zego/zim/internal/generated/ZIMGenFileCacheInfo;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "fileCacheInfo",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 2916
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$136;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$136;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenFileCacheInfo;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFriendAdded(JLim/zego/zim/internal/generated/ZIMGenFriendInfo;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "friendInfo",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 2389
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$110;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$110;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenFriendInfo;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFriendAliasUpdated(JLim/zego/zim/internal/generated/ZIMGenFriendInfo;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "friendInfo",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 2475
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$114;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$114;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenFriendInfo;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFriendApplicationAccepted(JLim/zego/zim/internal/generated/ZIMGenFriendInfo;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "friendInfo",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 2538
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$117;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$117;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenFriendInfo;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFriendApplicationListChange(JILjava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "action",
            "friendApplicationList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenFriendApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .line 2799
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$130;

    move-object v2, p0

    move-wide v3, p1

    move v6, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lim/zego/zim/internal/generated/ZIMBridge$130;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLjava/util/ArrayList;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFriendApplicationListQueried(JLjava/util/ArrayList;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "infoArrayList",
            "nextFlag",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenFriendApplicationInfo;",
            ">;I",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 2600
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$120;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$120;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/util/ArrayList;ILim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFriendApplicationRejected(JLim/zego/zim/internal/generated/ZIMGenUserInfo;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "zimUserInfo",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 2558
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$118;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$118;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenUserInfo;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFriendApplicationSent(JLim/zego/zim/internal/generated/ZIMGenFriendApplicationInfo;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "application",
            "genError",
            "sequence"
        }
    .end annotation

    .line 2409
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$111;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$111;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenFriendApplicationInfo;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFriendApplicationUpdated(JLjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "friendApplicationList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenFriendApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .line 2761
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$128;

    invoke-direct {v1, p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMBridge$128;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFriendAttributesUpdated(JLim/zego/zim/internal/generated/ZIMGenFriendInfo;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "friendInfo",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 2495
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$115;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$115;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenFriendInfo;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFriendChecked(JLjava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "friendRelationInfoList",
            "errorUserList",
            "genError",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenFriendRelationInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenErrorUserInfo;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 2453
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$113;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$113;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFriendInfoUpdated(JLjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "friendInfoList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenFriendInfo;",
            ">;)V"
        }
    .end annotation

    .line 2723
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$126;

    invoke-direct {v1, p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMBridge$126;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFriendInfosQueried(JLjava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "friendInfoList",
            "errorUserList",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenFriendInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenErrorUserInfo;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 2516
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$116;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$116;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFriendListChanged(JILjava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "action",
            "friendInfoList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenFriendInfo;",
            ">;)V"
        }
    .end annotation

    .line 2741
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$127;

    move-object v2, p0

    move-wide v3, p1

    move v6, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lim/zego/zim/internal/generated/ZIMBridge$127;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLjava/util/ArrayList;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFriendListQueried(JLjava/util/ArrayList;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "friendInfoList",
            "nextFlag",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenFriendInfo;",
            ">;I",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 2578
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$119;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$119;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/util/ArrayList;ILim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFriendsDeleted(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "errorUserList",
            "genError",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenErrorUserInfo;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 2430
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$112;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$112;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFriendsSearched(JLjava/util/ArrayList;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "friendInfoList",
            "nextFlag",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenFriendInfo;",
            ">;I",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 2703
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$125;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$125;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/util/ArrayList;ILim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGroupAliasUpdated(JLjava/lang/String;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupId",
            "groupAlias",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 1853
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$85;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$85;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGroupApplicationListChanged(JLjava/util/ArrayList;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "applicationList",
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenGroupApplicationInfo;",
            ">;I)V"
        }
    .end annotation

    .line 3597
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$171;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lim/zego/zim/internal/generated/ZIMBridge$171;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLjava/util/ArrayList;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGroupApplicationListQueried(JLjava/util/ArrayList;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "applicationList",
            "nextFlag",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenGroupApplicationInfo;",
            ">;I",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 3791
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$180;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$180;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/util/ArrayList;ILim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGroupApplicationUpdated(JLjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "applicationList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenGroupApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .line 3619
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$172;

    invoke-direct {v1, p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMBridge$172;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGroupAttributesOperated(JLjava/lang/String;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupId",
            "errorKeys",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 1984
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$91;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$91;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGroupAttributesQueried(JLjava/lang/String;Ljava/util/HashMap;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "group",
            "groupAttributes",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 2006
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$92;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$92;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Ljava/util/HashMap;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGroupAttributesUpdated(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "infos",
            "operatedInfo",
            "groupID"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenGroupAttributesUpdateInfo;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3891
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$185;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$185;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGroupAvatarUrlUpdated(JLjava/lang/String;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupId",
            "groupAvatarUrl",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 1832
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$84;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$84;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGroupBeInviteModeUpdated(JLjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupID",
            "mode",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 3531
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$168;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$168;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGroupCreated(JLim/zego/zim/internal/generated/ZIMGenFullGroupInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupInfo",
            "userList",
            "errorUserList",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lim/zego/zim/internal/generated/ZIMGenFullGroupInfo;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenErrorUserInfo;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 1662
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$76;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    move/from16 v5, p7

    invoke-direct/range {v1 .. v9}, Lim/zego/zim/internal/generated/ZIMBridge$76;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenFullGroupInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGroupDismissed(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupId",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 1684
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$77;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$77;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGroupInfoQueried(JLim/zego/zim/internal/generated/ZIMGenFullGroupInfo;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupInfo",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 1962
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$90;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$90;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenFullGroupInfo;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGroupInviteApplicationsAccepted(JLim/zego/zim/internal/generated/ZIMGenFullGroupInfo;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupInfo",
            "inviterUserID",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 3768
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$179;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$179;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenFullGroupInfo;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGroupInviteApplicationsRejected(JLjava/lang/String;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupID",
            "inviterUserID",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 3746
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$178;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$178;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGroupInviteApplicationsSent(JLjava/lang/String;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupID",
            "errorUserList",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenErrorUserInfo;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 3724
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$177;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$177;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGroupInviteModeUpdated(JLjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupID",
            "mode",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 3553
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$169;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$169;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGroupJoinApplicationAccepted(JLjava/lang/String;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupID",
            "userID",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 3661
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$174;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$174;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGroupJoinApplicationRejected(JLjava/lang/String;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupID",
            "userID",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 3682
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$175;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$175;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGroupJoinApplicationSent(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupID",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 3703
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$176;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$176;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGroupJoinModeUpdated(JLjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupID",
            "mode",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 3639
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$173;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$173;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGroupJoined(JLim/zego/zim/internal/generated/ZIMGenFullGroupInfo;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupInfo",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 1704
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$78;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$78;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenFullGroupInfo;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGroupLeft(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupId",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 1724
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$79;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$79;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGroupListQueried(JLjava/util/ArrayList;JLim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupList",
            "nextFlag",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenGroup;",
            ">;J",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 2093
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$96;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-wide v7, p4

    move-object/from16 v9, p6

    move/from16 v5, p7

    invoke-direct/range {v1 .. v9}, Lim/zego/zim/internal/generated/ZIMBridge$96;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/util/ArrayList;JLim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGroupMemberCountQueried(JLjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupId",
            "count",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 2137
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$98;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$98;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGroupMemberInfoQueried(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupId",
            "userInfo",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 2071
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$95;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$95;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGroupMemberInfoUpdated(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "userList",
            "operatedInfo",
            "groupID"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3934
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$187;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$187;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGroupMemberKicked(JLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupId",
            "kickedUserIdList",
            "errorUserList",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenErrorUserInfo;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 1768
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$81;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    move/from16 v5, p7

    invoke-direct/range {v1 .. v9}, Lim/zego/zim/internal/generated/ZIMBridge$81;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGroupMemberListMuted(JLjava/lang/String;ZILjava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupID",
            "isMute",
            "duration",
            "mutedMemberIDList",
            "errorUserList",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenErrorUserInfo;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 1917
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$88;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v5, p9

    invoke-direct/range {v1 .. v11}, Lim/zego/zim/internal/generated/ZIMBridge$88;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;ZILjava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGroupMemberListQueried(JLjava/lang/String;Ljava/util/ArrayList;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupId",
            "userList",
            "nextFlag",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;",
            ">;I",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 2115
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$97;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    move-object/from16 v9, p6

    move/from16 v5, p7

    invoke-direct/range {v1 .. v9}, Lim/zego/zim/internal/generated/ZIMBridge$97;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Ljava/util/ArrayList;ILim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGroupMemberMutedListQueried(JLjava/lang/String;JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupID",
            "nextFlag",
            "userList",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 1940
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$89;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-wide v7, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v5, p8

    invoke-direct/range {v1 .. v10}, Lim/zego/zim/internal/generated/ZIMBridge$89;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGroupMemberNicknameUpdated(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupId",
            "forUserId",
            "nickName",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 2048
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$94;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    move/from16 v5, p7

    invoke-direct/range {v1 .. v9}, Lim/zego/zim/internal/generated/ZIMBridge$94;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGroupMemberRoleUpdated(JLjava/lang/String;Ljava/lang/String;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupId",
            "forUserId",
            "role",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 2027
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$93;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    move-object/from16 v9, p6

    move/from16 v5, p7

    invoke-direct/range {v1 .. v9}, Lim/zego/zim/internal/generated/ZIMBridge$93;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Ljava/lang/String;ILim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGroupMemberStateChanged(JIILjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "state",
            "event",
            "userList",
            "operatedInfo",
            "groupID"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3912
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$186;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lim/zego/zim/internal/generated/ZIMBridge$186;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JIILjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGroupMembersSearched(JLjava/lang/String;Ljava/util/ArrayList;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupId",
            "userList",
            "nextFlag",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;",
            ">;I",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 2203
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$101;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    move-object/from16 v9, p6

    move/from16 v5, p7

    invoke-direct/range {v1 .. v9}, Lim/zego/zim/internal/generated/ZIMBridge$101;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Ljava/util/ArrayList;ILim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGroupMessageReceiptMemberListQueried(JLjava/lang/String;Ljava/util/ArrayList;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupid",
            "userList",
            "nextFlag",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;",
            ">;I",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 2160
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$99;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    move-object/from16 v9, p6

    move/from16 v5, p7

    invoke-direct/range {v1 .. v9}, Lim/zego/zim/internal/generated/ZIMBridge$99;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Ljava/util/ArrayList;ILim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGroupMessageReceived(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenMessageReceivedInfo;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "messageList",
            "info",
            "fromGroupID"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenMessageReceivedInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3253
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$154;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v5, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$154;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLim/zego/zim/internal/generated/ZIMGenMessageReceivedInfo;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGroupMuteInfoUpdated(JLim/zego/zim/internal/generated/ZIMGenGroupMuteInfo;Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupMuteInfo",
            "operatedInfo",
            "groupID"
        }
    .end annotation

    .line 3954
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$188;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$188;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLim/zego/zim/internal/generated/ZIMGenGroupMuteInfo;Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGroupMuted(JLjava/lang/String;ZLim/zego/zim/internal/generated/ZIMGenGroupMuteInfo;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupID",
            "isMute",
            "info",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 1895
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$87;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    move/from16 v5, p7

    invoke-direct/range {v1 .. v9}, Lim/zego/zim/internal/generated/ZIMBridge$87;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;ZLim/zego/zim/internal/generated/ZIMGenGroupMuteInfo;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGroupNameUpdated(JLjava/lang/String;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupId",
            "groupName",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 1811
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$83;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$83;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGroupNoticeUpdated(JLjava/lang/String;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupId",
            "groupNotice",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 1874
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$86;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$86;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGroupOwnerTransferred(JLjava/lang/String;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupId",
            "toUserId",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 1790
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$82;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$82;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGroupStateChanged(JIILim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;Lim/zego/zim/internal/generated/ZIMGenFullGroupInfo;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "state",
            "event",
            "operatedInfo",
            "groupInfo"
        }
    .end annotation

    .line 3509
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$167;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$167;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JIILim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;Lim/zego/zim/internal/generated/ZIMGenFullGroupInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGroupUsersInvited(JLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupId",
            "userList",
            "errorUserList",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenGroupMemberInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenErrorUserInfo;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 1745
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$80;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    move/from16 v5, p7

    invoke-direct/range {v1 .. v9}, Lim/zego/zim/internal/generated/ZIMBridge$80;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGroupVerifyInfoUpdated(JLim/zego/zim/internal/generated/ZIMGenGroupVerifyInfo;Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "verifyInfo",
            "operatedInfo",
            "groupID"
        }
    .end annotation

    .line 3575
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$170;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$170;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLim/zego/zim/internal/generated/ZIMGenGroupVerifyInfo;Lim/zego/zim/internal/generated/ZIMGenGroupOperatedInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGroupsSearched(JLjava/util/ArrayList;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "groupSearchInfoList",
            "nextFlag",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenGroupSearchInfo;",
            ">;I",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 2181
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$100;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$100;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/util/ArrayList;ILim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLogUploaded(JLim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 38
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$2;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lim/zego/zim/internal/generated/ZIMBridge$2;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLoggedIn(JLim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 21
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$1;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lim/zego/zim/internal/generated/ZIMBridge$1;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMediaDownloaded(JLim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "message",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 1030
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$47;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$47;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMediaDownloadingProgress(JLim/zego/zim/internal/generated/ZIMGenMessage;JJI)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "message",
            "currentFileSize",
            "totalFileSize",
            "sequence"
        }
    .end annotation

    .line 1052
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$48;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    move/from16 v5, p8

    invoke-direct/range {v1 .. v10}, Lim/zego/zim/internal/generated/ZIMBridge$48;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenMessage;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMediaUploadingProgress(JLim/zego/zim/internal/generated/ZIMGenMessage;JJI)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "genMediaMessage",
            "currentFileSize",
            "totalFileSize",
            "sequence"
        }
    .end annotation

    .line 827
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$38;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    move/from16 v5, p8

    invoke-direct/range {v1 .. v10}, Lim/zego/zim/internal/generated/ZIMBridge$38;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenMessage;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMessageAttach(JLim/zego/zim/internal/generated/ZIMGenMessage;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "genMessage",
            "sequence"
        }
    .end annotation

    .line 754
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$36;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lim/zego/zim/internal/generated/ZIMBridge$36;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenMessage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMessageDeleted(JLjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "conversationID",
            "conversationType",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 989
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$45;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$45;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMessageEdited(JLim/zego/zim/internal/generated/ZIMGenError;Lim/zego/zim/internal/generated/ZIMGenMessage;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "errorInfo",
            "genMessage",
            "sequence"
        }
    .end annotation

    .line 1180
    invoke-virtual/range {p0 .. p5}, Lim/zego/zim/internal/generated/ZIMBridge;->onMessageSent(JLim/zego/zim/internal/generated/ZIMGenError;Lim/zego/zim/internal/generated/ZIMGenMessage;I)V

    return-void
.end method

.method public onMessageEditedEvent(JLjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "messageList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            ">;)V"
        }
    .end annotation

    .line 627
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$30;

    invoke-direct {v1, p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMBridge$30;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMessageExported(JLim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 2839
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$132;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lim/zego/zim/internal/generated/ZIMBridge$132;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMessageExportingProgress(JJJI)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "exportedMessageCount",
            "totalMessageCount",
            "sequence"
        }
    .end annotation

    .line 2859
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$133;

    move-object v2, p0

    move-wide v3, p1

    move-wide v6, p3

    move-wide v8, p5

    move/from16 v5, p7

    invoke-direct/range {v1 .. v9}, Lim/zego/zim/internal/generated/ZIMBridge$133;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JIJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMessageImported(JLim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 2820
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$131;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lim/zego/zim/internal/generated/ZIMBridge$131;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMessageImportingProgress(JJJI)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "importedMessageCount",
            "totalMessageCount",
            "sequence"
        }
    .end annotation

    .line 2878
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$134;

    move-object v2, p0

    move-wide v3, p1

    move-wide v6, p3

    move-wide v8, p5

    move/from16 v5, p7

    invoke-direct/range {v1 .. v9}, Lim/zego/zim/internal/generated/ZIMBridge$134;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JIJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMessageInserted(JLim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "message",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 924
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$42;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$42;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMessageLocalExtendedDataUpdated(JLim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "message",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 549
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$26;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$26;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMessagePinStatusChanged(JLjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "changeInfoList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessagePinStatusChangeInfo;",
            ">;)V"
        }
    .end annotation

    .line 3373
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$160;

    invoke-direct {v1, p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMBridge$160;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMessagePinned(JLim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 1300
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$59;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lim/zego/zim/internal/generated/ZIMBridge$59;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMessageQueried(JLjava/lang/String;ILjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "conversationID",
            "conversationType",
            "messageList",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 945
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$43;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    move/from16 v5, p7

    invoke-direct/range {v1 .. v9}, Lim/zego/zim/internal/generated/ZIMBridge$43;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;ILjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMessageReactionAdded(JLim/zego/zim/internal/generated/ZIMGenMessageReaction;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "reaction",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 1073
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$49;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$49;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenMessageReaction;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMessageReactionDeleted(JLim/zego/zim/internal/generated/ZIMGenMessageReaction;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "reaction",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 1093
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$50;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$50;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenMessageReaction;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMessageReactionUsersQueried(JLim/zego/zim/internal/generated/ZIMGenMessage;Ljava/lang/String;Ljava/util/ArrayList;JILim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "genMessage",
            "reactionType",
            "userInfos",
            "nextFlag",
            "totalCount",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessageReactionUserFullInfo;",
            ">;JI",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 1207
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$55;

    move-object v2, p0

    move-wide v3, p1

    move-object/from16 v6, p3

    move-object/from16 v8, p4

    move-object/from16 v7, p5

    move-wide/from16 v9, p6

    move/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v5, p10

    invoke-direct/range {v1 .. v12}, Lim/zego/zim/internal/generated/ZIMBridge$55;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenMessage;Ljava/util/ArrayList;Ljava/lang/String;JILim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMessageReactionsAllDeleted(JLim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 1112
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$51;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lim/zego/zim/internal/generated/ZIMBridge$51;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMessageReactionsChanged(JLjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "reactions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessageReaction;",
            ">;)V"
        }
    .end annotation

    .line 570
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$27;

    invoke-direct {v1, p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMBridge$27;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMessageReactionsChangedWithResult(JLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "reactions",
            "changeInfoList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessageReaction;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessageReactionChangeInfo;",
            ">;)V"
        }
    .end annotation

    .line 590
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$28;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lim/zego/zim/internal/generated/ZIMBridge$28;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMessageReceiptChanged(JLjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "infos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessageReceiptInfo;",
            ">;)V"
        }
    .end annotation

    .line 3333
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$158;

    invoke-direct {v1, p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMBridge$158;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMessageReceiptsInfoQueried(JLjava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "infos",
            "errorMessageIds",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessageReceiptInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 903
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$41;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$41;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMessageReceiptsReadSent(JLjava/lang/String;ILjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "conversationID",
            "conversationType",
            "errorMessageIDs",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 880
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$40;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    move/from16 v5, p7

    invoke-direct/range {v1 .. v9}, Lim/zego/zim/internal/generated/ZIMBridge$40;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;ILjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMessageRepliedCountChanged(JLjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "infos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessageRootRepliedCountInfo;",
            ">;)V"
        }
    .end annotation

    .line 646
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$31;

    invoke-direct {v1, p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMBridge$31;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMessageRepliedInfoChanged(JLjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "messages"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            ">;)V"
        }
    .end annotation

    .line 609
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$29;

    invoke-direct {v1, p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMBridge$29;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMessageRepliedListQueried(JLjava/util/ArrayList;JLim/zego/zim/internal/generated/ZIMGenMessageRootRepliedInfo;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "messageList",
            "nextFlag",
            "rootRepliedInfo",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            ">;J",
            "Lim/zego/zim/internal/generated/ZIMGenMessageRootRepliedInfo;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 1158
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$53;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-wide v7, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v5, p8

    invoke-direct/range {v1 .. v10}, Lim/zego/zim/internal/generated/ZIMBridge$53;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/util/ArrayList;JLim/zego/zim/internal/generated/ZIMGenMessageRootRepliedInfo;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMessageRevokeReceived(JLjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "messageList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            ">;)V"
        }
    .end annotation

    .line 3292
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$156;

    invoke-direct {v1, p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMBridge$156;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMessageRevoked(JLim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "message",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 968
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$44;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$44;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMessageSent(JLim/zego/zim/internal/generated/ZIMGenError;Lim/zego/zim/internal/generated/ZIMGenMessage;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "errorInfo",
            "message",
            "sequence"
        }
    .end annotation

    .line 790
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$37;

    move-object v2, p0

    move-wide v3, p1

    move-object v7, p3

    move-object v6, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$37;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMessageSentStatusChanged(JLjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "messageSentStatusChangeInfoList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessageSentStatusChangeInfo;",
            ">;)V"
        }
    .end annotation

    .line 3352
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$159;

    invoke-direct {v1, p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMBridge$159;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMessagesGlobalSearched(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "messageLists",
            "nextMessage",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 1254
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$57;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$57;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMessagesSearched(JLjava/lang/String;ILjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "conversationID",
            "conversationType",
            "messageLists",
            "nextMessage",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 1277
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$58;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v5, p8

    invoke-direct/range {v1 .. v10}, Lim/zego/zim/internal/generated/ZIMBridge$58;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;ILjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMultipleMediaUploadingProgress(JLim/zego/zim/internal/generated/ZIMGenMessage;JJIJJI)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "genMessage",
            "currentFileSize",
            "totalFileSize",
            "messageInfoIndex",
            "currentIndexFileSize",
            "totalIndexFileSize",
            "sequence"
        }
    .end annotation

    .line 857
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$39;

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move/from16 v11, p8

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move/from16 v5, p13

    invoke-direct/range {v1 .. v15}, Lim/zego/zim/internal/generated/ZIMBridge$39;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenMessage;JJIJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPeerMessageReceived(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenMessageReceivedInfo;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "messageList",
            "info",
            "fromUserId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenMessageReceivedInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3173
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$150;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$150;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenMessageReceivedInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPinnedMessageListQueried(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "messageList",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 1320
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$60;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$60;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onReceiveGroupMessage(JLjava/util/ArrayList;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "messageList",
            "fromGroupID"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3234
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$153;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lim/zego/zim/internal/generated/ZIMBridge$153;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLjava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onReceivePeerMessage(JLjava/util/ArrayList;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "messageList",
            "fromUserId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3153
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$149;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lim/zego/zim/internal/generated/ZIMBridge$149;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLjava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onReceiveRoomMessage(JLjava/util/ArrayList;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "messageList",
            "fromRoomID"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3194
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$151;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lim/zego/zim/internal/generated/ZIMBridge$151;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLjava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRoomAttributesBatchOperated(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "roomId",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 1465
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$67;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$67;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRoomAttributesBatchUpdated(JLjava/util/ArrayList;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "infos",
            "roomID"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenRoomAttributesUpdateInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3470
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$165;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lim/zego/zim/internal/generated/ZIMBridge$165;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLjava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRoomAttributesOperated(JLjava/lang/String;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "roomId",
            "errorKeys",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 1444
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$66;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$66;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRoomAttributesQueried(JLjava/lang/String;Ljava/util/HashMap;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "roomId",
            "roomAttributes",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 1487
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$68;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$68;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Ljava/util/HashMap;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRoomAttributesUpdated(JLim/zego/zim/internal/generated/ZIMGenRoomAttributesUpdateInfo;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "info",
            "roomID"
        }
    .end annotation

    .line 3451
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$164;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lim/zego/zim/internal/generated/ZIMBridge$164;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLim/zego/zim/internal/generated/ZIMGenRoomAttributesUpdateInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRoomCreated(JLim/zego/zim/internal/generated/ZIMGenFullRoomInfo;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "roomInfo",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 1341
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$61;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$61;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenFullRoomInfo;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRoomEntered(JLim/zego/zim/internal/generated/ZIMGenFullRoomInfo;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "roomInfo",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 1361
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$62;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$62;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenFullRoomInfo;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRoomJoined(JLim/zego/zim/internal/generated/ZIMGenFullRoomInfo;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "roomInfo",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 1402
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$64;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$64;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenFullRoomInfo;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRoomLeft(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "roomId",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 1574
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$72;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$72;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRoomMemberAttributesListQueried(JLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "roomId",
            "infos",
            "nextFlag",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenRoomMemberAttributesInfo;",
            ">;",
            "Ljava/lang/String;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 1554
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$71;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    move/from16 v5, p7

    invoke-direct/range {v1 .. v9}, Lim/zego/zim/internal/generated/ZIMBridge$71;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRoomMemberAttributesUpdated(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenRoomOperatedInfo;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "infos",
            "operatedInfo",
            "roomID"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenRoomMemberAttributesUpdateInfo;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenRoomOperatedInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3489
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$166;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$166;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenRoomOperatedInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRoomMemberJoined(JLjava/util/ArrayList;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "memberList",
            "roomID"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenUserInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3392
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$161;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lim/zego/zim/internal/generated/ZIMBridge$161;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLjava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRoomMemberLeft(JLjava/util/ArrayList;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "memberList",
            "roomID"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenUserInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3411
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$162;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lim/zego/zim/internal/generated/ZIMBridge$162;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLjava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRoomMemberQueried(JLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "roomId",
            "memberList",
            "nextFlag",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenUserInfo;",
            ">;",
            "Ljava/lang/String;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 1423
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$65;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    move/from16 v5, p7

    invoke-direct/range {v1 .. v9}, Lim/zego/zim/internal/generated/ZIMBridge$65;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRoomMembersAttributesOperated(JLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "roomId",
            "infos",
            "errorUserList",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenRoomMemberAttributesOperatedInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 1509
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$69;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    move/from16 v5, p7

    invoke-direct/range {v1 .. v9}, Lim/zego/zim/internal/generated/ZIMBridge$69;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRoomMembersAttributesQueried(JLjava/lang/String;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "room",
            "infos",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenRoomMemberAttributesInfo;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 1531
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$70;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$70;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRoomMembersQueried(JLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "roomID",
            "memberList",
            "errorUserList",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenRoomMemberInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenErrorUserInfo;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 1637
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$75;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    move/from16 v5, p7

    invoke-direct/range {v1 .. v9}, Lim/zego/zim/internal/generated/ZIMBridge$75;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRoomMessageReceived(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenMessageReceivedInfo;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "messageList",
            "info",
            "fromRoomID"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenMessageReceivedInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3213
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$152;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v5, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$152;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLim/zego/zim/internal/generated/ZIMGenMessageReceivedInfo;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRoomOnlineMemberCountQueried(JLjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "roomId",
            "count",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 1613
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$74;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$74;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;ILim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRoomStateChanged(JIILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "state",
            "event",
            "extendedData",
            "roomID"
        }
    .end annotation

    .line 3431
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$163;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$163;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRoomSwitched(JLim/zego/zim/internal/generated/ZIMGenFullRoomInfo;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "roomInfo",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 1381
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$63;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$63;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenFullRoomInfo;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSelfUserInfoQueried(JLim/zego/zim/internal/generated/ZIMGenSelfUserInfo;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "selfUserInfo",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 215
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$11;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$11;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenSelfUserInfo;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSendingMessageCancelled(JLim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 1185
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$54;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lim/zego/zim/internal/generated/ZIMBridge$54;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSubscribedUserStatusListQueried(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "userStatusSubscriptionList",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenUserStatusSubscription;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 261
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$13;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$13;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTokenRenewed(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "token",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 56
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$3;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$3;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTokenWillExpire(JI)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "second"
        }
    .end annotation

    .line 2971
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$139;

    invoke-direct {v1, p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMBridge$139;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUserAvatarUpdated(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "userAvatarUrl",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 113
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$6;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$6;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUserBadgeUpdated(JLim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 195
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$10;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lim/zego/zim/internal/generated/ZIMBridge$10;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUserCustomStatusUpdated(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "customStatus",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 153
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$8;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$8;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUserExtendedData(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "extendedData",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 133
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$7;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$7;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUserInfoUpdated(JLim/zego/zim/internal/generated/ZIMGenFullUserInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "info"
        }
    .end annotation

    .line 3003
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$141;

    invoke-direct {v1, p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMBridge$141;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLim/zego/zim/internal/generated/ZIMGenFullUserInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUserNameUpdated(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "userName",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 94
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$5;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$5;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUserOfflinePushRuleInfoUpdated(JLim/zego/zim/internal/generated/ZIMGenUserOfflinePushRule;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "offlinePushRule",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .line 174
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$9;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$9;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenUserOfflinePushRule;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUserRuleUpdated(JLim/zego/zim/internal/generated/ZIMGenUserRule;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "userRule"
        }
    .end annotation

    .line 3019
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$142;

    invoke-direct {v1, p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMBridge$142;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLim/zego/zim/internal/generated/ZIMGenUserRule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUserStatusUpdated(JLjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "userStatusList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenUserStatus;",
            ">;)V"
        }
    .end annotation

    .line 3036
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$143;

    invoke-direct {v1, p0, p1, p2, p3}, Lim/zego/zim/internal/generated/ZIMBridge$143;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JLjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUsersInfoQueried(JLjava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "userList",
            "errorUserList",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenFullUserInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenErrorUserInfo;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 238
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$12;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$12;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUsersStatusQueried(JLjava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "userStatusList",
            "errorUserList",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenUserStatus;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenErrorUserInfo;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 289
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$14;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lim/zego/zim/internal/generated/ZIMBridge$14;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUsersStatusSubscribed(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "errorUserList",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenErrorUserInfo;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 316
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$15;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$15;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUsersStatusUnsubscribed(JLjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "handle",
            "errorUserList",
            "errorInfo",
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenErrorUserInfo;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenError;",
            "I)V"
        }
    .end annotation

    .line 338
    sget-object v0, Lim/zego/zim/internal/ZIMImpl;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lim/zego/zim/internal/generated/ZIMBridge$16;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move-object v7, p4

    move v5, p5

    invoke-direct/range {v1 .. v7}, Lim/zego/zim/internal/generated/ZIMBridge$16;-><init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
