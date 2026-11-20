.class public Lim/zego/zim/entity/ZIMFriendDeleteConfig;
.super Ljava/lang/Object;
.source "ZIMFriendDeleteConfig.java"


# instance fields
.field public type:Lim/zego/zim/enums/ZIMFriendDeleteType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lim/zego/zim/enums/ZIMFriendDeleteType;->BOTH:Lim/zego/zim/enums/ZIMFriendDeleteType;

    iput-object v0, p0, Lim/zego/zim/entity/ZIMFriendDeleteConfig;->type:Lim/zego/zim/enums/ZIMFriendDeleteType;

    return-void
.end method
