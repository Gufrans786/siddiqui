.class Lim/zego/zim/internal/generated/ZIMBridge$145;
.super Ljava/lang/Object;
.source "ZIMBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/zego/zim/internal/generated/ZIMBridge;->onConversationSyncStateChanged(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/zego/zim/internal/generated/ZIMBridge;

.field final synthetic val$handle:J

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lim/zego/zim/internal/generated/ZIMBridge;JI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$handle",
            "val$state"
        }
    .end annotation

    .line 3077
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMBridge$145;->this$0:Lim/zego/zim/internal/generated/ZIMBridge;

    iput-wide p2, p0, Lim/zego/zim/internal/generated/ZIMBridge$145;->val$handle:J

    iput p4, p0, Lim/zego/zim/internal/generated/ZIMBridge$145;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3080
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMBridge$145;->val$handle:J

    invoke-static {v0, v1}, Lim/zego/zim/internal/ZIMImpl;->getInstance(J)Lim/zego/zim/internal/ZIMImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3082
    iget-object v1, v0, Lim/zego/zim/internal/ZIMImpl;->eventHandler:Lim/zego/zim/callback/ZIMEventHandler;

    if-eqz v1, :cond_0

    .line 3084
    iget v2, p0, Lim/zego/zim/internal/generated/ZIMBridge$145;->val$state:I

    .line 3085
    invoke-static {v2}, Lim/zego/zim/enums/ZIMConversationSyncState;->getZIMConversationSyncState(I)Lim/zego/zim/enums/ZIMConversationSyncState;

    move-result-object v2

    .line 3084
    invoke-virtual {v1, v0, v2}, Lim/zego/zim/callback/ZIMEventHandler;->onConversationSyncStateChanged(Lim/zego/zim/ZIM;Lim/zego/zim/enums/ZIMConversationSyncState;)V

    :cond_0
    return-void
.end method
