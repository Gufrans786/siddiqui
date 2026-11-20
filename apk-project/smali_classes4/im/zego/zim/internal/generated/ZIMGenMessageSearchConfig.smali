.class final Lim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;
.super Ljava/lang/Object;
.source "ZIMGenMessageSearchConfig.java"


# instance fields
.field Count:I

.field EndTime:J

.field IsNullFromJava:Z

.field Keywords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field MessageTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field NextMessage:Lim/zego/zim/internal/generated/ZIMGenMessage;

.field Order:I

.field SenderUserIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field StartTime:J

.field SubMessageTypes:Ljava/util/ArrayList;
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
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lim/zego/zim/internal/generated/ZIMGenMessage;IILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;JJZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nextMessage",
            "count",
            "order",
            "keywords",
            "messageTypes",
            "subMessageTypes",
            "senderUserIDs",
            "startTime",
            "endTime",
            "isNullFromJava"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            "II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;JJZ)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;->NextMessage:Lim/zego/zim/internal/generated/ZIMGenMessage;

    .line 38
    iput p2, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;->Count:I

    .line 39
    iput p3, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;->Order:I

    .line 40
    iput-object p4, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;->Keywords:Ljava/util/ArrayList;

    .line 41
    iput-object p5, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;->MessageTypes:Ljava/util/ArrayList;

    .line 42
    iput-object p6, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;->SubMessageTypes:Ljava/util/ArrayList;

    .line 43
    iput-object p7, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;->SenderUserIDs:Ljava/util/ArrayList;

    .line 44
    iput-wide p8, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;->StartTime:J

    .line 45
    iput-wide p10, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;->EndTime:J

    .line 46
    iput-boolean p12, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 52
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;->Count:I

    return v0
.end method

.method public getEndTime()J
    .locals 2

    .line 79
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;->EndTime:J

    return-wide v0
.end method

.method public getIsNullFromJava()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;->IsNullFromJava:Z

    return v0
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

    .line 58
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;->Keywords:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMessageTypes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;->MessageTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNextMessage()Lim/zego/zim/internal/generated/ZIMGenMessage;
    .locals 1

    .line 49
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;->NextMessage:Lim/zego/zim/internal/generated/ZIMGenMessage;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .line 55
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;->Order:I

    return v0
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

    .line 71
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;->SenderUserIDs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .line 76
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;->StartTime:J

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

    .line 66
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;->SubMessageTypes:Ljava/util/ArrayList;

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

    .line 53
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;->Count:I

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

    .line 80
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;->EndTime:J

    return-void
.end method

.method public setIsNullFromJava(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isNullFromJava"
        }
    .end annotation

    .line 83
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;->IsNullFromJava:Z

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

    .line 59
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;->Keywords:Ljava/util/ArrayList;

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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;->MessageTypes:Ljava/util/ArrayList;

    return-void
.end method

.method public setNextMessage(Lim/zego/zim/internal/generated/ZIMGenMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nextMessage"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;->NextMessage:Lim/zego/zim/internal/generated/ZIMGenMessage;

    return-void
.end method

.method public setOrder(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "order"
        }
    .end annotation

    .line 56
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;->Order:I

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

    .line 73
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;->SenderUserIDs:Ljava/util/ArrayList;

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

    .line 77
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;->StartTime:J

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
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;->SubMessageTypes:Ljava/util/ArrayList;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenMessageSearchConfig{NextMessage="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;->NextMessage:Lim/zego/zim/internal/generated/ZIMGenMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;->Count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Order="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;->Order:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Keywords="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;->Keywords:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",MessageTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;->MessageTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",SubMessageTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;->SubMessageTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",SenderUserIDs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;->SenderUserIDs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",StartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;->StartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",EndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;->EndTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageSearchConfig;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
