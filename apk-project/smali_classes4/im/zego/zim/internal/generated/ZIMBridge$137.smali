.class Lim/zego/zim/internal/generated/ZIMBridge$137;
.super Ljava/lang/Object;
.source "ZIMBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/zego/zim/internal/generated/ZIMBridge;->onConnectionStateChanged(JIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/zego/zim/internal/generated/ZIMBridge;

.field final synthetic val$event:I

.field final synthetic val$extendedData:Ljava/lang/String;

.field final synthetic val$handle:J

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lim/zego/zim/internal/generated/ZIMBridge;JIILjava/lang/String;)V
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
            "val$state",
            "val$event",
            "val$extendedData"
        }
    .end annotation

    .line 2936
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMBridge$137;->this$0:Lim/zego/zim/internal/generated/ZIMBridge;

    iput-wide p2, p0, Lim/zego/zim/internal/generated/ZIMBridge$137;->val$handle:J

    iput p4, p0, Lim/zego/zim/internal/generated/ZIMBridge$137;->val$state:I

    iput p5, p0, Lim/zego/zim/internal/generated/ZIMBridge$137;->val$event:I

    iput-object p6, p0, Lim/zego/zim/internal/generated/ZIMBridge$137;->val$extendedData:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2939
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMBridge$137;->val$handle:J

    invoke-static {v0, v1}, Lim/zego/zim/internal/ZIMImpl;->getInstance(J)Lim/zego/zim/internal/ZIMImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2941
    iget-object v1, v0, Lim/zego/zim/internal/ZIMImpl;->eventHandler:Lim/zego/zim/callback/ZIMEventHandler;

    if-eqz v1, :cond_0

    .line 2943
    iget v2, p0, Lim/zego/zim/internal/generated/ZIMBridge$137;->val$state:I

    .line 2944
    invoke-static {v2}, Lim/zego/zim/enums/ZIMConnectionState;->getZIMConnectionState(I)Lim/zego/zim/enums/ZIMConnectionState;

    move-result-object v2

    iget v3, p0, Lim/zego/zim/internal/generated/ZIMBridge$137;->val$event:I

    .line 2945
    invoke-static {v3}, Lim/zego/zim/enums/ZIMConnectionEvent;->getZIMConnectionEvent(I)Lim/zego/zim/enums/ZIMConnectionEvent;

    move-result-object v3

    iget-object v4, p0, Lim/zego/zim/internal/generated/ZIMBridge$137;->val$extendedData:Ljava/lang/String;

    .line 2946
    invoke-static {v4}, Lim/zego/zim/internal/generated/ZIMCovert;->getJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 2943
    invoke-virtual {v1, v0, v2, v3, v4}, Lim/zego/zim/callback/ZIMEventHandler;->onConnectionStateChanged(Lim/zego/zim/ZIM;Lim/zego/zim/enums/ZIMConnectionState;Lim/zego/zim/enums/ZIMConnectionEvent;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method
