.class Lim/zego/zim/internal/generated/ZIMBridge$29;
.super Ljava/lang/Object;
.source "ZIMBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/zego/zim/internal/generated/ZIMBridge;->onMessageRepliedInfoChanged(JLjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/zego/zim/internal/generated/ZIMBridge;

.field final synthetic val$handle:J

.field final synthetic val$messages:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lim/zego/zim/internal/generated/ZIMBridge;JLjava/util/ArrayList;)V
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
            "val$messages"
        }
    .end annotation

    .line 609
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMBridge$29;->this$0:Lim/zego/zim/internal/generated/ZIMBridge;

    iput-wide p2, p0, Lim/zego/zim/internal/generated/ZIMBridge$29;->val$handle:J

    iput-object p4, p0, Lim/zego/zim/internal/generated/ZIMBridge$29;->val$messages:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 612
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMBridge$29;->val$handle:J

    invoke-static {v0, v1}, Lim/zego/zim/internal/ZIMImpl;->getInstance(J)Lim/zego/zim/internal/ZIMImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 614
    iget-object v1, v0, Lim/zego/zim/internal/ZIMImpl;->eventHandler:Lim/zego/zim/callback/ZIMEventHandler;

    if-nez v1, :cond_0

    goto :goto_0

    .line 618
    :cond_0
    iget-object v2, p0, Lim/zego/zim/internal/generated/ZIMBridge$29;->val$messages:Ljava/util/ArrayList;

    .line 619
    invoke-static {v2}, Lim/zego/zim/internal/generated/ZIMCovert;->getZIMMessageList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 618
    invoke-virtual {v1, v0, v2}, Lim/zego/zim/callback/ZIMEventHandler;->onMessageRepliedInfoChanged(Lim/zego/zim/ZIM;Ljava/util/ArrayList;)V

    :cond_1
    :goto_0
    return-void
.end method
