.class Lim/zego/zim/internal/generated/ZIMBridge$41;
.super Ljava/lang/Object;
.source "ZIMBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/zego/zim/internal/generated/ZIMBridge;->onMessageReceiptsInfoQueried(JLjava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/zego/zim/internal/generated/ZIMBridge;

.field final synthetic val$errorInfo:Lim/zego/zim/internal/generated/ZIMGenError;

.field final synthetic val$errorMessageIds:Ljava/util/ArrayList;

.field final synthetic val$handle:J

.field final synthetic val$infos:Ljava/util/ArrayList;

.field final synthetic val$sequence:I


# direct methods
.method constructor <init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;)V
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
            "val$infos",
            "val$errorMessageIds",
            "val$errorInfo"
        }
    .end annotation

    .line 903
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMBridge$41;->this$0:Lim/zego/zim/internal/generated/ZIMBridge;

    iput-wide p2, p0, Lim/zego/zim/internal/generated/ZIMBridge$41;->val$handle:J

    iput p4, p0, Lim/zego/zim/internal/generated/ZIMBridge$41;->val$sequence:I

    iput-object p5, p0, Lim/zego/zim/internal/generated/ZIMBridge$41;->val$infos:Ljava/util/ArrayList;

    iput-object p6, p0, Lim/zego/zim/internal/generated/ZIMBridge$41;->val$errorMessageIds:Ljava/util/ArrayList;

    iput-object p7, p0, Lim/zego/zim/internal/generated/ZIMBridge$41;->val$errorInfo:Lim/zego/zim/internal/generated/ZIMGenError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 906
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMBridge$41;->val$handle:J

    invoke-static {v0, v1}, Lim/zego/zim/internal/ZIMImpl;->getInstance(J)Lim/zego/zim/internal/ZIMImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 908
    iget-object v1, v0, Lim/zego/zim/internal/ZIMImpl;->messageReceiptsInfoQueriedCallback:Ljava/util/HashMap;

    iget v2, p0, Lim/zego/zim/internal/generated/ZIMBridge$41;->val$sequence:I

    .line 909
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/zego/zim/callback/ZIMMessageReceiptsInfoQueriedCallback;

    if-eqz v1, :cond_0

    .line 911
    iget-object v2, p0, Lim/zego/zim/internal/generated/ZIMBridge$41;->val$infos:Ljava/util/ArrayList;

    .line 912
    invoke-static {v2}, Lim/zego/zim/internal/generated/ZIMCovert;->getMessageReceiptInfos(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lim/zego/zim/internal/generated/ZIMBridge$41;->val$errorMessageIds:Ljava/util/ArrayList;

    iget-object v4, p0, Lim/zego/zim/internal/generated/ZIMBridge$41;->val$errorInfo:Lim/zego/zim/internal/generated/ZIMGenError;

    .line 913
    invoke-static {v4}, Lim/zego/zim/internal/generated/ZIMCovert;->getZimError(Lim/zego/zim/internal/generated/ZIMGenError;)Lim/zego/zim/entity/ZIMError;

    move-result-object v4

    .line 911
    invoke-interface {v1, v2, v3, v4}, Lim/zego/zim/callback/ZIMMessageReceiptsInfoQueriedCallback;->onMessageReceiptsInfoQueried(Ljava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMError;)V

    .line 915
    :cond_0
    iget-object v0, v0, Lim/zego/zim/internal/ZIMImpl;->messageReceiptsReadCallback:Ljava/util/HashMap;

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMBridge$41;->val$sequence:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
