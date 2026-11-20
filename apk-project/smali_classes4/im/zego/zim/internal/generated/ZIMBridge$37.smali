.class Lim/zego/zim/internal/generated/ZIMBridge$37;
.super Ljava/lang/Object;
.source "ZIMBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/zego/zim/internal/generated/ZIMBridge;->onMessageSent(JLim/zego/zim/internal/generated/ZIMGenError;Lim/zego/zim/internal/generated/ZIMGenMessage;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/zego/zim/internal/generated/ZIMBridge;

.field final synthetic val$errorInfo:Lim/zego/zim/internal/generated/ZIMGenError;

.field final synthetic val$handle:J

.field final synthetic val$message:Lim/zego/zim/internal/generated/ZIMGenMessage;

.field final synthetic val$sequence:I


# direct methods
.method constructor <init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenMessage;Lim/zego/zim/internal/generated/ZIMGenError;)V
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
            "val$sequence",
            "val$message",
            "val$errorInfo"
        }
    .end annotation

    .line 790
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMBridge$37;->this$0:Lim/zego/zim/internal/generated/ZIMBridge;

    iput-wide p2, p0, Lim/zego/zim/internal/generated/ZIMBridge$37;->val$handle:J

    iput p4, p0, Lim/zego/zim/internal/generated/ZIMBridge$37;->val$sequence:I

    iput-object p5, p0, Lim/zego/zim/internal/generated/ZIMBridge$37;->val$message:Lim/zego/zim/internal/generated/ZIMGenMessage;

    iput-object p6, p0, Lim/zego/zim/internal/generated/ZIMBridge$37;->val$errorInfo:Lim/zego/zim/internal/generated/ZIMGenError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 793
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMBridge$37;->val$handle:J

    invoke-static {v0, v1}, Lim/zego/zim/internal/ZIMImpl;->getInstance(J)Lim/zego/zim/internal/ZIMImpl;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 795
    iget-object v1, v0, Lim/zego/zim/internal/ZIMImpl;->messageSentCallbacks:Ljava/util/HashMap;

    iget v2, p0, Lim/zego/zim/internal/generated/ZIMBridge$37;->val$sequence:I

    .line 796
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/zego/zim/callback/ZIMMessageSentCallback;

    .line 797
    iget-object v2, v0, Lim/zego/zim/internal/ZIMImpl;->mediaMessageSentCallbacks:Ljava/util/HashMap;

    iget v3, p0, Lim/zego/zim/internal/generated/ZIMBridge$37;->val$sequence:I

    .line 798
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/zego/zim/callback/ZIMMediaMessageSentCallback;

    .line 799
    iget-object v3, v0, Lim/zego/zim/internal/ZIMImpl;->sentFullCallbackHashMap:Ljava/util/HashMap;

    iget v4, p0, Lim/zego/zim/internal/generated/ZIMBridge$37;->val$sequence:I

    .line 800
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lim/zego/zim/callback/ZIMMessageSentFullCallback;

    if-eqz v1, :cond_0

    .line 802
    iget-object v2, v0, Lim/zego/zim/internal/ZIMImpl;->messageObjMap:Ljava/util/HashMap;

    iget v3, p0, Lim/zego/zim/internal/generated/ZIMBridge$37;->val$sequence:I

    .line 803
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/zego/zim/entity/ZIMMessage;

    iget-object v3, p0, Lim/zego/zim/internal/generated/ZIMBridge$37;->val$message:Lim/zego/zim/internal/generated/ZIMGenMessage;

    invoke-static {v2, v3}, Lim/zego/zim/internal/generated/ZIMCovert;->getZIMMessage(Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/internal/generated/ZIMGenMessage;)Lim/zego/zim/entity/ZIMMessage;

    move-result-object v2

    iget-object v3, p0, Lim/zego/zim/internal/generated/ZIMBridge$37;->val$errorInfo:Lim/zego/zim/internal/generated/ZIMGenError;

    .line 804
    invoke-static {v3}, Lim/zego/zim/internal/generated/ZIMCovert;->getZimError(Lim/zego/zim/internal/generated/ZIMGenError;)Lim/zego/zim/entity/ZIMError;

    move-result-object v3

    .line 802
    invoke-interface {v1, v2, v3}, Lim/zego/zim/callback/ZIMMessageSentCallback;->onMessageSent(Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/entity/ZIMError;)V

    .line 805
    iget-object v1, v0, Lim/zego/zim/internal/ZIMImpl;->messageSentCallbacks:Ljava/util/HashMap;

    iget v2, p0, Lim/zego/zim/internal/generated/ZIMBridge$37;->val$sequence:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 807
    iget-object v1, v0, Lim/zego/zim/internal/ZIMImpl;->messageObjMap:Ljava/util/HashMap;

    iget v3, p0, Lim/zego/zim/internal/generated/ZIMBridge$37;->val$sequence:I

    .line 809
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/zego/zim/entity/ZIMMessage;

    iget-object v3, p0, Lim/zego/zim/internal/generated/ZIMBridge$37;->val$message:Lim/zego/zim/internal/generated/ZIMGenMessage;

    .line 808
    invoke-static {v1, v3}, Lim/zego/zim/internal/generated/ZIMCovert;->getZIMMessage(Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/internal/generated/ZIMGenMessage;)Lim/zego/zim/entity/ZIMMessage;

    move-result-object v1

    check-cast v1, Lim/zego/zim/entity/ZIMMediaMessage;

    iget-object v3, p0, Lim/zego/zim/internal/generated/ZIMBridge$37;->val$errorInfo:Lim/zego/zim/internal/generated/ZIMGenError;

    .line 810
    invoke-static {v3}, Lim/zego/zim/internal/generated/ZIMCovert;->getZimError(Lim/zego/zim/internal/generated/ZIMGenError;)Lim/zego/zim/entity/ZIMError;

    move-result-object v3

    .line 807
    invoke-interface {v2, v1, v3}, Lim/zego/zim/callback/ZIMMediaMessageSentCallback;->onMessageSent(Lim/zego/zim/entity/ZIMMediaMessage;Lim/zego/zim/entity/ZIMError;)V

    .line 811
    iget-object v1, v0, Lim/zego/zim/internal/ZIMImpl;->mediaMessageSentCallbacks:Ljava/util/HashMap;

    iget v2, p0, Lim/zego/zim/internal/generated/ZIMBridge$37;->val$sequence:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 813
    iget-object v1, v0, Lim/zego/zim/internal/ZIMImpl;->messageObjMap:Ljava/util/HashMap;

    iget v2, p0, Lim/zego/zim/internal/generated/ZIMBridge$37;->val$sequence:I

    .line 814
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/zego/zim/entity/ZIMMessage;

    iget-object v2, p0, Lim/zego/zim/internal/generated/ZIMBridge$37;->val$message:Lim/zego/zim/internal/generated/ZIMGenMessage;

    invoke-static {v1, v2}, Lim/zego/zim/internal/generated/ZIMCovert;->getZIMMessage(Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/internal/generated/ZIMGenMessage;)Lim/zego/zim/entity/ZIMMessage;

    move-result-object v1

    iget-object v2, p0, Lim/zego/zim/internal/generated/ZIMBridge$37;->val$errorInfo:Lim/zego/zim/internal/generated/ZIMGenError;

    .line 815
    invoke-static {v2}, Lim/zego/zim/internal/generated/ZIMCovert;->getZimError(Lim/zego/zim/internal/generated/ZIMGenError;)Lim/zego/zim/entity/ZIMError;

    move-result-object v2

    .line 813
    invoke-interface {v3, v1, v2}, Lim/zego/zim/callback/ZIMMessageSentFullCallback;->onMessageSent(Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/entity/ZIMError;)V

    .line 816
    iget-object v1, v0, Lim/zego/zim/internal/ZIMImpl;->sentFullCallbackHashMap:Ljava/util/HashMap;

    iget v2, p0, Lim/zego/zim/internal/generated/ZIMBridge$37;->val$sequence:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    :cond_2
    :goto_0
    iget-object v0, v0, Lim/zego/zim/internal/ZIMImpl;->messageObjMap:Ljava/util/HashMap;

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMBridge$37;->val$sequence:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method
