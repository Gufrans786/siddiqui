.class public Lim/zego/zim/entity/ZIMConversationSearchConfig;
.super Ljava/lang/Object;
.source "ZIMConversationSearchConfig.java"


# instance fields
.field public conversationMessageCount:I

.field public endTime:J

.field public keywords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public messageTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/enums/ZIMMessageType;",
            ">;"
        }
    .end annotation
.end field

.field public mode:Lim/zego/zim/enums/ZIMConversationSearchMode;

.field public nextFlag:I

.field public senderUserIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public startTime:J

.field public subMessageTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public totalConversationCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/zego/zim/entity/ZIMConversationSearchConfig;->keywords:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/zego/zim/entity/ZIMConversationSearchConfig;->messageTypes:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/zego/zim/entity/ZIMConversationSearchConfig;->subMessageTypes:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/zego/zim/entity/ZIMConversationSearchConfig;->senderUserIDs:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lim/zego/zim/entity/ZIMConversationSearchConfig;->startTime:J

    .line 26
    iput-wide v0, p0, Lim/zego/zim/entity/ZIMConversationSearchConfig;->endTime:J

    .line 27
    sget-object v0, Lim/zego/zim/enums/ZIMConversationSearchMode;->MATCH_MESSAGE:Lim/zego/zim/enums/ZIMConversationSearchMode;

    iput-object v0, p0, Lim/zego/zim/entity/ZIMConversationSearchConfig;->mode:Lim/zego/zim/enums/ZIMConversationSearchMode;

    return-void
.end method


# virtual methods
.method public getConversationMessageCount()I
    .locals 1

    .line 35
    iget v0, p0, Lim/zego/zim/entity/ZIMConversationSearchConfig;->conversationMessageCount:I

    return v0
.end method

.method public getEndTime()J
    .locals 2

    .line 64
    iget-wide v0, p0, Lim/zego/zim/entity/ZIMConversationSearchConfig;->endTime:J

    return-wide v0
.end method

.method public getKeywords()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lim/zego/zim/entity/ZIMConversationSearchConfig;->keywords:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMessageTypes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/enums/ZIMMessageType;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lim/zego/zim/entity/ZIMConversationSearchConfig;->messageTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMode()Lim/zego/zim/enums/ZIMConversationSearchMode;
    .locals 1

    .line 41
    iget-object v0, p0, Lim/zego/zim/entity/ZIMConversationSearchConfig;->mode:Lim/zego/zim/enums/ZIMConversationSearchMode;

    return-object v0
.end method

.method public getSenderUserIDs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lim/zego/zim/entity/ZIMConversationSearchConfig;->senderUserIDs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .line 60
    iget-wide v0, p0, Lim/zego/zim/entity/ZIMConversationSearchConfig;->startTime:J

    return-wide v0
.end method

.method public getSubMessageTypes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lim/zego/zim/entity/ZIMConversationSearchConfig;->subMessageTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTotalConversationCount()I
    .locals 1

    .line 30
    iget v0, p0, Lim/zego/zim/entity/ZIMConversationSearchConfig;->totalConversationCount:I

    return v0
.end method

.method public setConversationMessageCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "conversationMessageCount"
        }
    .end annotation

    .line 38
    iput p1, p0, Lim/zego/zim/entity/ZIMConversationSearchConfig;->conversationMessageCount:I

    return-void
.end method

.method public setEndTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endTime"
        }
    .end annotation

    .line 66
    iput-wide p1, p0, Lim/zego/zim/entity/ZIMConversationSearchConfig;->endTime:J

    return-void
.end method

.method public setKeywords(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keywords"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lim/zego/zim/entity/ZIMConversationSearchConfig;->keywords:Ljava/util/ArrayList;

    return-void
.end method

.method public setMessageTypes(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/enums/ZIMMessageType;",
            ">;)V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lim/zego/zim/entity/ZIMConversationSearchConfig;->messageTypes:Ljava/util/ArrayList;

    return-void
.end method

.method public setMode(Lim/zego/zim/enums/ZIMConversationSearchMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lim/zego/zim/entity/ZIMConversationSearchConfig;->mode:Lim/zego/zim/enums/ZIMConversationSearchMode;

    return-void
.end method

.method public setSenderUserIDs(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "senderUserIDs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lim/zego/zim/entity/ZIMConversationSearchConfig;->senderUserIDs:Ljava/util/ArrayList;

    return-void
.end method

.method public setStartTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startTime"
        }
    .end annotation

    .line 62
    iput-wide p1, p0, Lim/zego/zim/entity/ZIMConversationSearchConfig;->startTime:J

    return-void
.end method

.method public setSubMessageTypes(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subMessageTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lim/zego/zim/entity/ZIMConversationSearchConfig;->subMessageTypes:Ljava/util/ArrayList;

    return-void
.end method

.method public setTotalConversationCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "totalConversationCount"
        }
    .end annotation

    .line 33
    iput p1, p0, Lim/zego/zim/entity/ZIMConversationSearchConfig;->totalConversationCount:I

    return-void
.end method
