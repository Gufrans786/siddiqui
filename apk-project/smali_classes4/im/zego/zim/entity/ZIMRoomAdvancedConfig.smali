.class public Lim/zego/zim/entity/ZIMRoomAdvancedConfig;
.super Ljava/lang/Object;
.source "ZIMRoomAdvancedConfig.java"


# instance fields
.field public roomAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public roomDestroyDelayTime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lim/zego/zim/entity/ZIMRoomAdvancedConfig;->roomAttributes:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lim/zego/zim/entity/ZIMRoomAdvancedConfig;->roomDestroyDelayTime:I

    return-void
.end method
