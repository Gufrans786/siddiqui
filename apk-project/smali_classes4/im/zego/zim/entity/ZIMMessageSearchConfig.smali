.class public Lim/zego/zim/entity/ZIMMessageSearchConfig;
.super Ljava/lang/Object;
.source "ZIMMessageSearchConfig.java"


# instance fields
.field public count:I

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

.field public nextMessage:Lim/zego/zim/entity/ZIMMessage;

.field public order:Lim/zego/zim/enums/ZIMMessageOrder;

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


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/zego/zim/entity/ZIMMessageSearchConfig;->keywords:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/zego/zim/entity/ZIMMessageSearchConfig;->messageTypes:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/zego/zim/entity/ZIMMessageSearchConfig;->senderUserIDs:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/zego/zim/entity/ZIMMessageSearchConfig;->subMessageTypes:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lim/zego/zim/entity/ZIMMessageSearchConfig;->startTime:J

    .line 26
    iput-wide v0, p0, Lim/zego/zim/entity/ZIMMessageSearchConfig;->endTime:J

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 33
    iget v0, p0, Lim/zego/zim/entity/ZIMMessageSearchConfig;->count:I

    return v0
.end method

.method public getEndTime()J
    .locals 2

    .line 61
    iget-wide v0, p0, Lim/zego/zim/entity/ZIMMessageSearchConfig;->endTime:J

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

    .line 41
    iget-object v0, p0, Lim/zego/zim/entity/ZIMMessageSearchConfig;->keywords:Ljava/util/ArrayList;

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

    .line 45
    iget-object v0, p0, Lim/zego/zim/entity/ZIMMessageSearchConfig;->messageTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNextMessage()Lim/zego/zim/entity/ZIMMessage;
    .locals 1

    .line 29
    iget-object v0, p0, Lim/zego/zim/entity/ZIMMessageSearchConfig;->nextMessage:Lim/zego/zim/entity/ZIMMessage;

    return-object v0
.end method

.method public getOrder()Lim/zego/zim/enums/ZIMMessageOrder;
    .locals 1

    .line 37
    iget-object v0, p0, Lim/zego/zim/entity/ZIMMessageSearchConfig;->order:Lim/zego/zim/enums/ZIMMessageOrder;

    return-object v0
.end method

.method public getSenderUserIDs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lim/zego/zim/entity/ZIMMessageSearchConfig;->senderUserIDs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lim/zego/zim/entity/ZIMMessageSearchConfig;->startTime:J

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

    .line 65
    iget-object v0, p0, Lim/zego/zim/entity/ZIMMessageSearchConfig;->subMessageTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    .line 35
    iput p1, p0, Lim/zego/zim/entity/ZIMMessageSearchConfig;->count:I

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

    .line 63
    iput-wide p1, p0, Lim/zego/zim/entity/ZIMMessageSearchConfig;->endTime:J

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

    .line 43
    iput-object p1, p0, Lim/zego/zim/entity/ZIMMessageSearchConfig;->keywords:Ljava/util/ArrayList;

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

    .line 48
    iput-object p1, p0, Lim/zego/zim/entity/ZIMMessageSearchConfig;->messageTypes:Ljava/util/ArrayList;

    return-void
.end method

.method public setNextMessage(Lim/zego/zim/entity/ZIMMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nextMessage"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lim/zego/zim/entity/ZIMMessageSearchConfig;->nextMessage:Lim/zego/zim/entity/ZIMMessage;

    return-void
.end method

.method public setOrder(Lim/zego/zim/enums/ZIMMessageOrder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "order"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lim/zego/zim/entity/ZIMMessageSearchConfig;->order:Lim/zego/zim/enums/ZIMMessageOrder;

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

    .line 54
    iput-object p1, p0, Lim/zego/zim/entity/ZIMMessageSearchConfig;->senderUserIDs:Ljava/util/ArrayList;

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

    .line 59
    iput-wide p1, p0, Lim/zego/zim/entity/ZIMMessageSearchConfig;->startTime:J

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

    .line 68
    iput-object p1, p0, Lim/zego/zim/entity/ZIMMessageSearchConfig;->subMessageTypes:Ljava/util/ArrayList;

    return-void
.end method
