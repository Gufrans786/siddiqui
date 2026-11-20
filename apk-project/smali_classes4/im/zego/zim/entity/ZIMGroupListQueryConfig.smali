.class public Lim/zego/zim/entity/ZIMGroupListQueryConfig;
.super Ljava/lang/Object;
.source "ZIMGroupListQueryConfig.java"


# instance fields
.field public nextFlag:J

.field public userIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/zego/zim/entity/ZIMGroupListQueryConfig;->userIDs:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    .line 14
    iput-wide v0, p0, Lim/zego/zim/entity/ZIMGroupListQueryConfig;->nextFlag:J

    return-void
.end method
