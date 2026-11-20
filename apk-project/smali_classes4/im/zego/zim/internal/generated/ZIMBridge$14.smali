.class Lim/zego/zim/internal/generated/ZIMBridge$14;
.super Ljava/lang/Object;
.source "ZIMBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/zego/zim/internal/generated/ZIMBridge;->onUsersStatusQueried(JLjava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/zego/zim/internal/generated/ZIMBridge;

.field final synthetic val$errorInfo:Lim/zego/zim/internal/generated/ZIMGenError;

.field final synthetic val$errorUserList:Ljava/util/ArrayList;

.field final synthetic val$handle:J

.field final synthetic val$sequence:I

.field final synthetic val$userStatusList:Ljava/util/ArrayList;


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
            "val$userStatusList",
            "val$errorUserList",
            "val$errorInfo"
        }
    .end annotation

    .line 289
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMBridge$14;->this$0:Lim/zego/zim/internal/generated/ZIMBridge;

    iput-wide p2, p0, Lim/zego/zim/internal/generated/ZIMBridge$14;->val$handle:J

    iput p4, p0, Lim/zego/zim/internal/generated/ZIMBridge$14;->val$sequence:I

    iput-object p5, p0, Lim/zego/zim/internal/generated/ZIMBridge$14;->val$userStatusList:Ljava/util/ArrayList;

    iput-object p6, p0, Lim/zego/zim/internal/generated/ZIMBridge$14;->val$errorUserList:Ljava/util/ArrayList;

    iput-object p7, p0, Lim/zego/zim/internal/generated/ZIMBridge$14;->val$errorInfo:Lim/zego/zim/internal/generated/ZIMGenError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 292
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMBridge$14;->val$handle:J

    invoke-static {v0, v1}, Lim/zego/zim/internal/ZIMImpl;->getInstance(J)Lim/zego/zim/internal/ZIMImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 296
    :cond_0
    iget-object v1, v0, Lim/zego/zim/internal/ZIMImpl;->usersStatusQueriedCallbackHashMap:Ljava/util/HashMap;

    iget v2, p0, Lim/zego/zim/internal/generated/ZIMBridge$14;->val$sequence:I

    .line 297
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/zego/zim/callback/ZIMUsersStatusQueriedCallback;

    if-eqz v1, :cond_2

    .line 300
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 301
    iget-object v3, p0, Lim/zego/zim/internal/generated/ZIMBridge$14;->val$userStatusList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lim/zego/zim/internal/generated/ZIMGenUserStatus;

    .line 302
    invoke-static {v4}, Lim/zego/zim/internal/generated/ZIMCovert;->getZIMUserStatus(Lim/zego/zim/internal/generated/ZIMGenUserStatus;)Lim/zego/zim/entity/ZIMUserStatus;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 304
    :cond_1
    iget-object v3, p0, Lim/zego/zim/internal/generated/ZIMBridge$14;->val$errorUserList:Ljava/util/ArrayList;

    .line 305
    invoke-static {v3}, Lim/zego/zim/internal/generated/ZIMCovert;->getErrorUserInfoList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lim/zego/zim/internal/generated/ZIMBridge$14;->val$errorInfo:Lim/zego/zim/internal/generated/ZIMGenError;

    .line 306
    invoke-static {v4}, Lim/zego/zim/internal/generated/ZIMCovert;->getZimError(Lim/zego/zim/internal/generated/ZIMGenError;)Lim/zego/zim/entity/ZIMError;

    move-result-object v4

    .line 304
    invoke-interface {v1, v2, v3, v4}, Lim/zego/zim/callback/ZIMUsersStatusQueriedCallback;->onUsersStatusQueried(Ljava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMError;)V

    .line 308
    :cond_2
    iget-object v0, v0, Lim/zego/zim/internal/ZIMImpl;->usersStatusQueriedCallbackHashMap:Ljava/util/HashMap;

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMBridge$14;->val$sequence:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
