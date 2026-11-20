.class final Lim/zego/zim/internal/generated/ZIMGenCallInvitationSentInfo;
.super Ljava/lang/Object;
.source "ZIMGenCallInvitationSentInfo.java"


# instance fields
.field ErrorInvitees:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenCallUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field ErrorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenErrorUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field Timeout:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeout",
            "errorInvitees",
            "errorList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenCallUserInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenErrorUserInfo;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationSentInfo;->Timeout:I

    .line 21
    iput-object p2, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationSentInfo;->ErrorInvitees:Ljava/util/ArrayList;

    .line 22
    iput-object p3, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationSentInfo;->ErrorList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getErrorInvitees()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenCallUserInfo;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationSentInfo;->ErrorInvitees:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getErrorList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenErrorUserInfo;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationSentInfo;->ErrorList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .line 25
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationSentInfo;->Timeout:I

    return v0
.end method

.method public setErrorInvitees(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorInvitees"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenCallUserInfo;",
            ">;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationSentInfo;->ErrorInvitees:Ljava/util/ArrayList;

    return-void
.end method

.method public setErrorList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenErrorUserInfo;",
            ">;)V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationSentInfo;->ErrorList:Ljava/util/ArrayList;

    return-void
.end method

.method public setTimeout(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeout"
        }
    .end annotation

    .line 26
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationSentInfo;->Timeout:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenCallInvitationSentInfo{Timeout="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationSentInfo;->Timeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ErrorInvitees="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationSentInfo;->ErrorInvitees:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ErrorList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenCallInvitationSentInfo;->ErrorList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
