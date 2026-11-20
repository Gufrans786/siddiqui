.class Lim/zego/zim/internal/generated/ZIMBridge$88;
.super Ljava/lang/Object;
.source "ZIMBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/zego/zim/internal/generated/ZIMBridge;->onGroupMemberListMuted(JLjava/lang/String;ZILjava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/zego/zim/internal/generated/ZIMBridge;

.field final synthetic val$duration:I

.field final synthetic val$errorInfo:Lim/zego/zim/internal/generated/ZIMGenError;

.field final synthetic val$errorUserList:Ljava/util/ArrayList;

.field final synthetic val$groupID:Ljava/lang/String;

.field final synthetic val$handle:J

.field final synthetic val$isMute:Z

.field final synthetic val$mutedMemberIDList:Ljava/util/ArrayList;

.field final synthetic val$sequence:I


# direct methods
.method constructor <init>(Lim/zego/zim/internal/generated/ZIMBridge;JILjava/lang/String;ZILjava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenError;)V
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
            "val$groupID",
            "val$isMute",
            "val$duration",
            "val$mutedMemberIDList",
            "val$errorUserList",
            "val$errorInfo"
        }
    .end annotation

    .line 1917
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMBridge$88;->this$0:Lim/zego/zim/internal/generated/ZIMBridge;

    iput-wide p2, p0, Lim/zego/zim/internal/generated/ZIMBridge$88;->val$handle:J

    iput p4, p0, Lim/zego/zim/internal/generated/ZIMBridge$88;->val$sequence:I

    iput-object p5, p0, Lim/zego/zim/internal/generated/ZIMBridge$88;->val$groupID:Ljava/lang/String;

    iput-boolean p6, p0, Lim/zego/zim/internal/generated/ZIMBridge$88;->val$isMute:Z

    iput p7, p0, Lim/zego/zim/internal/generated/ZIMBridge$88;->val$duration:I

    iput-object p8, p0, Lim/zego/zim/internal/generated/ZIMBridge$88;->val$mutedMemberIDList:Ljava/util/ArrayList;

    iput-object p9, p0, Lim/zego/zim/internal/generated/ZIMBridge$88;->val$errorUserList:Ljava/util/ArrayList;

    iput-object p10, p0, Lim/zego/zim/internal/generated/ZIMBridge$88;->val$errorInfo:Lim/zego/zim/internal/generated/ZIMGenError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1920
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMBridge$88;->val$handle:J

    invoke-static {v0, v1}, Lim/zego/zim/internal/ZIMImpl;->getInstance(J)Lim/zego/zim/internal/ZIMImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1924
    :cond_0
    iget-object v1, v0, Lim/zego/zim/internal/ZIMImpl;->groupMembersMutedCallbacks:Ljava/util/HashMap;

    iget v2, p0, Lim/zego/zim/internal/generated/ZIMBridge$88;->val$sequence:I

    .line 1925
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lim/zego/zim/callback/ZIMGroupMembersMutedCallback;

    if-eqz v2, :cond_1

    .line 1927
    iget-object v3, p0, Lim/zego/zim/internal/generated/ZIMBridge$88;->val$groupID:Ljava/lang/String;

    iget-boolean v4, p0, Lim/zego/zim/internal/generated/ZIMBridge$88;->val$isMute:Z

    iget v5, p0, Lim/zego/zim/internal/generated/ZIMBridge$88;->val$duration:I

    iget-object v6, p0, Lim/zego/zim/internal/generated/ZIMBridge$88;->val$mutedMemberIDList:Ljava/util/ArrayList;

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMBridge$88;->val$errorUserList:Ljava/util/ArrayList;

    .line 1928
    invoke-static {v1}, Lim/zego/zim/internal/generated/ZIMCovert;->getErrorUserInfoList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMBridge$88;->val$errorInfo:Lim/zego/zim/internal/generated/ZIMGenError;

    .line 1929
    invoke-static {v1}, Lim/zego/zim/internal/generated/ZIMCovert;->getZimError(Lim/zego/zim/internal/generated/ZIMGenError;)Lim/zego/zim/entity/ZIMError;

    move-result-object v8

    .line 1927
    invoke-interface/range {v2 .. v8}, Lim/zego/zim/callback/ZIMGroupMembersMutedCallback;->onGroupMembersMuted(Ljava/lang/String;ZILjava/util/ArrayList;Ljava/util/ArrayList;Lim/zego/zim/entity/ZIMError;)V

    .line 1931
    :cond_1
    iget-object v0, v0, Lim/zego/zim/internal/ZIMImpl;->groupMembersMutedCallbacks:Ljava/util/HashMap;

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMBridge$88;->val$sequence:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
