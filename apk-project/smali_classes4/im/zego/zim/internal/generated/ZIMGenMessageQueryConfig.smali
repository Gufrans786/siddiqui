.class final Lim/zego/zim/internal/generated/ZIMGenMessageQueryConfig;
.super Ljava/lang/Object;
.source "ZIMGenMessageQueryConfig.java"


# instance fields
.field Count:I

.field IsNullFromJava:Z

.field IsPreferQueryFromServer:Z

.field NextMessage:Lim/zego/zim/internal/generated/ZIMGenMessage;

.field Reverse:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lim/zego/zim/internal/generated/ZIMGenMessage;IZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nextMessage",
            "count",
            "reverse",
            "isPreferQueryFromServer",
            "isNullFromJava"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageQueryConfig;->NextMessage:Lim/zego/zim/internal/generated/ZIMGenMessage;

    .line 23
    iput p2, p0, Lim/zego/zim/internal/generated/ZIMGenMessageQueryConfig;->Count:I

    .line 24
    iput-boolean p3, p0, Lim/zego/zim/internal/generated/ZIMGenMessageQueryConfig;->Reverse:Z

    .line 25
    iput-boolean p4, p0, Lim/zego/zim/internal/generated/ZIMGenMessageQueryConfig;->IsPreferQueryFromServer:Z

    .line 26
    iput-boolean p5, p0, Lim/zego/zim/internal/generated/ZIMGenMessageQueryConfig;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 32
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageQueryConfig;->Count:I

    return v0
.end method

.method public getIsNullFromJava()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageQueryConfig;->IsNullFromJava:Z

    return v0
.end method

.method public getIsPreferQueryFromServer()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageQueryConfig;->IsPreferQueryFromServer:Z

    return v0
.end method

.method public getNextMessage()Lim/zego/zim/internal/generated/ZIMGenMessage;
    .locals 1

    .line 29
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageQueryConfig;->NextMessage:Lim/zego/zim/internal/generated/ZIMGenMessage;

    return-object v0
.end method

.method public getReverse()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessageQueryConfig;->Reverse:Z

    return v0
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

    .line 33
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageQueryConfig;->Count:I

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

    .line 44
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageQueryConfig;->IsNullFromJava:Z

    return-void
.end method

.method public setIsPreferQueryFromServer(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isPreferQueryFromServer"
        }
    .end annotation

    .line 40
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageQueryConfig;->IsPreferQueryFromServer:Z

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

    .line 30
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageQueryConfig;->NextMessage:Lim/zego/zim/internal/generated/ZIMGenMessage;

    return-void
.end method

.method public setReverse(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reverse"
        }
    .end annotation

    .line 36
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageQueryConfig;->Reverse:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenMessageQueryConfig{NextMessage="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageQueryConfig;->NextMessage:Lim/zego/zim/internal/generated/ZIMGenMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageQueryConfig;->Count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Reverse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageQueryConfig;->Reverse:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsPreferQueryFromServer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageQueryConfig;->IsPreferQueryFromServer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessageQueryConfig;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
