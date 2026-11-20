.class Lim/zego/zim/internal/generated/ZIMBridge$103;
.super Ljava/lang/Object;
.source "ZIMBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/zego/zim/internal/generated/ZIMBridge;->onCallingInvitationSent(JLjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenCallingInvitationSentInfo;Lim/zego/zim/internal/generated/ZIMGenError;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/zego/zim/internal/generated/ZIMBridge;

.field final synthetic val$callId:Ljava/lang/String;

.field final synthetic val$errorInfo:Lim/zego/zim/internal/generated/ZIMGenError;

.field final synthetic val$handle:J

.field final synthetic val$info:Lim/zego/zim/internal/generated/ZIMGenCallingInvitationSentInfo;

.field final synthetic val$sequence:I


# direct methods
.method constructor <init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;Lim/zego/zim/internal/generated/ZIMGenCallingInvitationSentInfo;Lim/zego/zim/internal/generated/ZIMGenError;)V
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
            "val$sequence",
            "val$callId",
            "val$info",
            "val$errorInfo"
        }
    .end annotation

    .line 2247
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMBridge$103;->this$0:Lim/zego/zim/internal/generated/ZIMBridge;

    iput-wide p2, p0, Lim/zego/zim/internal/generated/ZIMBridge$103;->val$handle:J

    iput p4, p0, Lim/zego/zim/internal/generated/ZIMBridge$103;->val$sequence:I

    iput-object p5, p0, Lim/zego/zim/internal/generated/ZIMBridge$103;->val$callId:Ljava/lang/String;

    iput-object p6, p0, Lim/zego/zim/internal/generated/ZIMBridge$103;->val$info:Lim/zego/zim/internal/generated/ZIMGenCallingInvitationSentInfo;

    iput-object p7, p0, Lim/zego/zim/internal/generated/ZIMBridge$103;->val$errorInfo:Lim/zego/zim/internal/generated/ZIMGenError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2250
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMBridge$103;->val$handle:J

    invoke-static {v0, v1}, Lim/zego/zim/internal/ZIMImpl;->getInstance(J)Lim/zego/zim/internal/ZIMImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2254
    :cond_0
    iget-object v1, v0, Lim/zego/zim/internal/ZIMImpl;->callingInvitationSentCallback:Ljava/util/HashMap;

    iget v2, p0, Lim/zego/zim/internal/generated/ZIMBridge$103;->val$sequence:I

    .line 2255
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/zego/zim/callback/ZIMCallingInvitationSentCallback;

    if-eqz v1, :cond_1

    .line 2257
    iget-object v2, p0, Lim/zego/zim/internal/generated/ZIMBridge$103;->val$callId:Ljava/lang/String;

    iget-object v3, p0, Lim/zego/zim/internal/generated/ZIMBridge$103;->val$info:Lim/zego/zim/internal/generated/ZIMGenCallingInvitationSentInfo;

    .line 2258
    invoke-static {v3}, Lim/zego/zim/internal/generated/ZIMCovert;->getCallingInvitationSentInfo(Lim/zego/zim/internal/generated/ZIMGenCallingInvitationSentInfo;)Lim/zego/zim/entity/ZIMCallingInvitationSentInfo;

    move-result-object v3

    iget-object v4, p0, Lim/zego/zim/internal/generated/ZIMBridge$103;->val$errorInfo:Lim/zego/zim/internal/generated/ZIMGenError;

    .line 2259
    invoke-static {v4}, Lim/zego/zim/internal/generated/ZIMCovert;->getZimError(Lim/zego/zim/internal/generated/ZIMGenError;)Lim/zego/zim/entity/ZIMError;

    move-result-object v4

    .line 2257
    invoke-interface {v1, v2, v3, v4}, Lim/zego/zim/callback/ZIMCallingInvitationSentCallback;->onCallingInvitationSent(Ljava/lang/String;Lim/zego/zim/entity/ZIMCallingInvitationSentInfo;Lim/zego/zim/entity/ZIMError;)V

    .line 2261
    :cond_1
    iget-object v0, v0, Lim/zego/zim/internal/ZIMImpl;->callingInvitationSentCallback:Ljava/util/HashMap;

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMBridge$103;->val$sequence:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
