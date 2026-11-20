.class Lim/zego/zim/internal/generated/ZIMBridge$39;
.super Ljava/lang/Object;
.source "ZIMBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/zego/zim/internal/generated/ZIMBridge;->onMultipleMediaUploadingProgress(JLim/zego/zim/internal/generated/ZIMGenMessage;JJIJJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/zego/zim/internal/generated/ZIMBridge;

.field final synthetic val$currentFileSize:J

.field final synthetic val$currentIndexFileSize:J

.field final synthetic val$genMessage:Lim/zego/zim/internal/generated/ZIMGenMessage;

.field final synthetic val$handle:J

.field final synthetic val$messageInfoIndex:I

.field final synthetic val$sequence:I

.field final synthetic val$totalFileSize:J

.field final synthetic val$totalIndexFileSize:J


# direct methods
.method constructor <init>(Lim/zego/zim/internal/generated/ZIMBridge;JILim/zego/zim/internal/generated/ZIMGenMessage;JJIJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
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
            "val$genMessage",
            "val$currentFileSize",
            "val$totalFileSize",
            "val$messageInfoIndex",
            "val$currentIndexFileSize",
            "val$totalIndexFileSize"
        }
    .end annotation

    .line 857
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMBridge$39;->this$0:Lim/zego/zim/internal/generated/ZIMBridge;

    iput-wide p2, p0, Lim/zego/zim/internal/generated/ZIMBridge$39;->val$handle:J

    iput p4, p0, Lim/zego/zim/internal/generated/ZIMBridge$39;->val$sequence:I

    iput-object p5, p0, Lim/zego/zim/internal/generated/ZIMBridge$39;->val$genMessage:Lim/zego/zim/internal/generated/ZIMGenMessage;

    iput-wide p6, p0, Lim/zego/zim/internal/generated/ZIMBridge$39;->val$currentFileSize:J

    iput-wide p8, p0, Lim/zego/zim/internal/generated/ZIMBridge$39;->val$totalFileSize:J

    iput p10, p0, Lim/zego/zim/internal/generated/ZIMBridge$39;->val$messageInfoIndex:I

    iput-wide p11, p0, Lim/zego/zim/internal/generated/ZIMBridge$39;->val$currentIndexFileSize:J

    iput-wide p13, p0, Lim/zego/zim/internal/generated/ZIMBridge$39;->val$totalIndexFileSize:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 860
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMBridge$39;->val$handle:J

    invoke-static {v0, v1}, Lim/zego/zim/internal/ZIMImpl;->getInstance(J)Lim/zego/zim/internal/ZIMImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 862
    iget-object v1, v0, Lim/zego/zim/internal/ZIMImpl;->sentFullCallbackHashMap:Ljava/util/HashMap;

    iget v2, p0, Lim/zego/zim/internal/generated/ZIMBridge$39;->val$sequence:I

    .line 863
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lim/zego/zim/callback/ZIMMessageSentFullCallback;

    if-eqz v2, :cond_0

    .line 865
    iget-object v0, v0, Lim/zego/zim/internal/ZIMImpl;->messageObjMap:Ljava/util/HashMap;

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMBridge$39;->val$sequence:I

    .line 867
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/zego/zim/entity/ZIMMessage;

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMBridge$39;->val$genMessage:Lim/zego/zim/internal/generated/ZIMGenMessage;

    .line 866
    invoke-static {v0, v1}, Lim/zego/zim/internal/generated/ZIMCovert;->getZIMMessage(Lim/zego/zim/entity/ZIMMessage;Lim/zego/zim/internal/generated/ZIMGenMessage;)Lim/zego/zim/entity/ZIMMessage;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lim/zego/zim/entity/ZIMMultipleMessage;

    iget-wide v4, p0, Lim/zego/zim/internal/generated/ZIMBridge$39;->val$currentFileSize:J

    iget-wide v6, p0, Lim/zego/zim/internal/generated/ZIMBridge$39;->val$totalFileSize:J

    iget v8, p0, Lim/zego/zim/internal/generated/ZIMBridge$39;->val$messageInfoIndex:I

    iget-wide v9, p0, Lim/zego/zim/internal/generated/ZIMBridge$39;->val$currentIndexFileSize:J

    iget-wide v11, p0, Lim/zego/zim/internal/generated/ZIMBridge$39;->val$totalIndexFileSize:J

    .line 865
    invoke-interface/range {v2 .. v12}, Lim/zego/zim/callback/ZIMMessageSentFullCallback;->onMultipleMediaUploadingProgress(Lim/zego/zim/entity/ZIMMultipleMessage;JJIJJ)V

    :cond_0
    return-void
.end method
