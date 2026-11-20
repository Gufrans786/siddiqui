.class public Lim/zego/zim/entity/ZIMConversationQueryConfig;
.super Ljava/lang/Object;
.source "ZIMConversationQueryConfig.java"


# instance fields
.field public count:I

.field public nextConversation:Lim/zego/zim/entity/ZIMConversation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lim/zego/zim/entity/ZIMConversationQueryConfig;->nextConversation:Lim/zego/zim/entity/ZIMConversation;

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lim/zego/zim/entity/ZIMConversationQueryConfig;->count:I

    return-void
.end method
