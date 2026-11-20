.class final Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;
.super Ljava/lang/Object;
.source "ZIMGenConversationSearchConfig.java"


# instance fields
.field ConversationMessageCount:I

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

.field Mode:I

.field NextFlag:I

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

.field TotalConversationCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;JJZ)V
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
            0x0,
            0x0
        }
        names = {
            "conversationMessageCount",
            "nextFlag",
            "totalConversationCount",
            "mode",
            "keywords",
            "subMessageTypes",
            "messageTypes",
            "senderUserIDs",
            "startTime",
            "endTime",
            "isNullFromJava"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
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

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;->ConversationMessageCount:I

    .line 42
    iput p2, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;->NextFlag:I

    .line 43
    iput p3, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;->TotalConversationCount:I

    .line 44
    iput p4, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;->Mode:I

    .line 45
    iput-object p5, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;->Keywords:Ljava/util/ArrayList;

    .line 46
    iput-object p6, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;->SubMessageTypes:Ljava/util/ArrayList;

    .line 47
    iput-object p7, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;->MessageTypes:Ljava/util/ArrayList;

    .line 48
    iput-object p8, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;->SenderUserIDs:Ljava/util/ArrayList;

    .line 49
    iput-wide p9, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;->StartTime:J

    .line 50
    iput-wide p11, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;->EndTime:J

    .line 51
    iput-boolean p13, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getConversationMessageCount()I
    .locals 1

    .line 54
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;->ConversationMessageCount:I

    return v0
.end method

.method public getEndTime()J
    .locals 2

    .line 91
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;->EndTime:J

    return-wide v0
.end method

.method public getIsNullFromJava()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;->IsNullFromJava:Z

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

    .line 70
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;->Keywords:Ljava/util/ArrayList;

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

    .line 78
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;->MessageTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .line 67
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;->Mode:I

    return v0
.end method

.method public getNextFlag()I
    .locals 1

    .line 59
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;->NextFlag:I

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

    .line 83
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;->SenderUserIDs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .line 88
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;->StartTime:J

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

    .line 73
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;->SubMessageTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTotalConversationCount()I
    .locals 1

    .line 62
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;->TotalConversationCount:I

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

    .line 56
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;->ConversationMessageCount:I

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

    .line 92
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;->EndTime:J

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

    .line 95
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;->IsNullFromJava:Z

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

    .line 71
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;->Keywords:Ljava/util/ArrayList;

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

    .line 80
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;->MessageTypes:Ljava/util/ArrayList;

    return-void
.end method

.method public setMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 68
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;->Mode:I

    return-void
.end method

.method public setNextFlag(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nextFlag"
        }
    .end annotation

    .line 60
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;->NextFlag:I

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

    .line 85
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;->SenderUserIDs:Ljava/util/ArrayList;

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

    .line 89
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;->StartTime:J

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

    .line 75
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;->SubMessageTypes:Ljava/util/ArrayList;

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

    .line 64
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;->TotalConversationCount:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenConversationSearchConfig{ConversationMessageCount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;->ConversationMessageCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",NextFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;->NextFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",TotalConversationCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;->TotalConversationCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;->Mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Keywords="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;->Keywords:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",SubMessageTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;->SubMessageTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",MessageTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;->MessageTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",SenderUserIDs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;->SenderUserIDs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",StartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;->StartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",EndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;->EndTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationSearchConfig;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
