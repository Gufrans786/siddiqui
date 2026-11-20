.class public Lim/zego/zim/entity/ZIMFriendApplicationAcceptConfig;
.super Ljava/lang/Object;
.source "ZIMFriendApplicationAcceptConfig.java"


# instance fields
.field public friendAlias:Ljava/lang/String;

.field public friendAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public pushConfig:Lim/zego/zim/entity/ZIMPushConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lim/zego/zim/entity/ZIMFriendApplicationAcceptConfig;->friendAlias:Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lim/zego/zim/entity/ZIMFriendApplicationAcceptConfig;->friendAttributes:Ljava/util/HashMap;

    return-void
.end method
