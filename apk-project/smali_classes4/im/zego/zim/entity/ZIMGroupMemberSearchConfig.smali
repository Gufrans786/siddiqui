.class public Lim/zego/zim/entity/ZIMGroupMemberSearchConfig;
.super Ljava/lang/Object;
.source "ZIMGroupMemberSearchConfig.java"


# instance fields
.field public count:I

.field public isAlsoMatchGroupMemberNickname:Z

.field public keywords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public nextFlag:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lim/zego/zim/entity/ZIMGroupMemberSearchConfig;->nextFlag:I

    .line 21
    iput v0, p0, Lim/zego/zim/entity/ZIMGroupMemberSearchConfig;->count:I

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lim/zego/zim/entity/ZIMGroupMemberSearchConfig;->keywords:Ljava/util/ArrayList;

    .line 23
    iput-boolean v0, p0, Lim/zego/zim/entity/ZIMGroupMemberSearchConfig;->isAlsoMatchGroupMemberNickname:Z

    return-void
.end method
