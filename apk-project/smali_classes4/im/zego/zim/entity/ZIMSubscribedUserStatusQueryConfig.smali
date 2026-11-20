.class public Lim/zego/zim/entity/ZIMSubscribedUserStatusQueryConfig;
.super Ljava/lang/Object;
.source "ZIMSubscribedUserStatusQueryConfig.java"


# instance fields
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
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/zego/zim/entity/ZIMSubscribedUserStatusQueryConfig;->userIDs:Ljava/util/ArrayList;

    return-void
.end method
