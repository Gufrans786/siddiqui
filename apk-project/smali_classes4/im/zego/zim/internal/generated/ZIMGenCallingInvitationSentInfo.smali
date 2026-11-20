.class final Lim/zego/zim/internal/generated/ZIMGenCallingInvitationSentInfo;
.super Ljava/lang/Object;
.source "ZIMGenCallingInvitationSentInfo.java"


# instance fields
.field ErrorInvitees:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenErrorUserInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
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
            "Lim/zego/zim/internal/generated/ZIMGenErrorUserInfo;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallingInvitationSentInfo;->ErrorInvitees:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getErrorInvitees()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenErrorUserInfo;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenCallingInvitationSentInfo;->ErrorInvitees:Ljava/util/ArrayList;

    return-object v0
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
            "Lim/zego/zim/internal/generated/ZIMGenErrorUserInfo;",
            ">;)V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenCallingInvitationSentInfo;->ErrorInvitees:Ljava/util/ArrayList;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenCallingInvitationSentInfo{ErrorInvitees="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenCallingInvitationSentInfo;->ErrorInvitees:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
