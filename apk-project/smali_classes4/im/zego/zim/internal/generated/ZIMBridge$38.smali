.class Lim/zego/zim/internal/generated/ZIMBridge$38;
.super Ljava/lang/Object;
.source "ZIMBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/zego/zim/internal/generated/ZIMBridge;->onMediaUploadingProgress(JLim/zego/zim/internal/generated/ZIMGenMessage;JJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/zego/zim/internal/generated/ZIMBridge;

.field final synthetic val$currentFileSize:J

.field final synthetic val$genMediaMessage:Lim/zego/zim/internal/generated/ZIMGenMessage;

.field final synthetic val$handle:J

.field final synthetic val$sequence:I

.field final synthetic val$totalFileSize:J


# direct methods
.method constructor <init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenMessage;JJ)V
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
            "val$genMediaMessage",
            "val$currentFileSize",
            "val$totalFileSize"
        }
    .end annotation

    .line 827
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMBridge$38;->this$0:Lim/zego/zim/internal/generated/ZIMBridge;

    iput-wide p2, p0, Lim/zego/zim/internal/generated/ZIMBridge$38;->val$handle:J

    iput p4, p0, Lim/zego/zim/internal/generated/ZIMBridge$38;->val$sequence:I

    iput-object p5, p0, Lim/zego/zim/internal/generated/ZIMBridge$38;->val$genMediaMessage:Lim/zego/zim/internal/generated/ZIMGenMessage;

    iput-wide p6, p0, Lim/zego/zim/internal/generated/ZIMBridge$38;->val$currentFileSize:J

    iput-wide p8, p0, Lim/zego/zim/internal/generated/ZIMBridge$38;->val$totalFileSize:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 830
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMBridge$38;->val$handle:J

    invoke-static {v0, v1}, Lim/zego/zim/internal/ZIMImpl;->getInstance(J)Lim/zego/zim/internal/ZIMImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 832
    iget-object v1, v0, Lim/zego/zim/internal/ZIMImpl;->mediaMessageSentCallbacks:Ljava/util/HashMap;

    iget v2, p0, Lim/zego/zim/internal/generated/ZIMBridge$38;->val$sequence:I

    .line 833
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lim/zego/zim/callback/ZIMMediaMessageSentCallback;

    .line 834
    iget-object v1, v0, Lim/zego/zim/internal/ZIMImpl;->sentFullCallbackHashMap:Ljava/util/HashMap;

    iget v3, p0, Lim/zego/zim/internal/generated/ZIMBridge$38;->val$sequence:I

    .line 835
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lim/zego/zim/callback/ZIMMessageSentFullCallback;

    if-eqz v2, :cond_0

    .line 837
    iget-object v0, v0, Lim/zego/zim/internal/ZIMImpl;->messageObjMap:Ljava/util/HashMap;

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMBridge$38;->val$sequence:I

    .line 839
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/zego/zim/entity/ZIMMessage;

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMBridge$38;->val$genMediaMessage:Lim/zego/zim/internal/generated/ZIMGenMessage;

    .line 838
    invoke-static {v0, v1}, Lim/zego/zim/internal/generated/ZIMCovert;->getZIMMessage(Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/internal/generated/ZIMGenMessage;)Lim/zego/zim/entity/ZIMMessage;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lim/zego/zim/entity/ZIMMediaMessage;

    iget-wide v4, p0, Lim/zego/zim/internal/generated/ZIMBridge$38;->val$currentFileSize:J

    iget-wide v6, p0, Lim/zego/zim/internal/generated/ZIMBridge$38;->val$totalFileSize:J

    .line 837
    invoke-interface/range {v2 .. v7}, Lim/zego/zim/callback/ZIMMediaMessageSentCallback;->onMediaUploadingProgress(Lim/zego/zim/entity/ZIMMediaMessage;JJ)V

    return-void

    :cond_0
    if-eqz v3, :cond_1

    .line 842
    iget-object v0, v0, Lim/zego/zim/internal/ZIMImpl;->messageObjMap:Ljava/util/HashMap;

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMBridge$38;->val$sequence:I

    .line 844
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/zego/zim/entity/ZIMMessage;

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMBridge$38;->val$genMediaMessage:Lim/zego/zim/internal/generated/ZIMGenMessage;

    .line 843
    invoke-static {v0, v1}, Lim/zego/zim/internal/generated/ZIMCovert;->getZIMMessage(Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/internal/generated/ZIMGenMessage;)Lim/zego/zim/entity/ZIMMessage;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lim/zego/zim/entity/ZIMMediaMessage;

    iget-wide v5, p0, Lim/zego/zim/internal/generated/ZIMBridge$38;->val$currentFileSize:J

    iget-wide v7, p0, Lim/zego/zim/internal/generated/ZIMBridge$38;->val$totalFileSize:J

    .line 842
    invoke-interface/range {v3 .. v8}, Lim/zego/zim/callback/ZIMMessageSentFullCallback;->onMediaUploadingProgress(Lim/zego/zim/entity/ZIMMediaMessage;JJ)V

    :cond_1
    return-void
.end method
