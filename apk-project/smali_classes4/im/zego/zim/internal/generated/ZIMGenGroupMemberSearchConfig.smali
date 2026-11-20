.class final Lim/zego/zim/internal/generated/ZIMGenGroupMemberSearchConfig;
.super Ljava/lang/Object;
.source "ZIMGenGroupMemberSearchConfig.java"


# instance fields
.field Count:I

.field IsAlsoMatchGroupMemberNickname:Z

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

.field NextFlag:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/util/ArrayList;ZZ)V
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
            "count",
            "nextFlag",
            "keywords",
            "isAlsoMatchGroupMemberNickname",
            "isNullFromJava"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberSearchConfig;->Count:I

    .line 26
    iput p2, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberSearchConfig;->NextFlag:I

    .line 27
    iput-object p3, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberSearchConfig;->Keywords:Ljava/util/ArrayList;

    .line 28
    iput-boolean p4, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberSearchConfig;->IsAlsoMatchGroupMemberNickname:Z

    .line 29
    iput-boolean p5, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberSearchConfig;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 32
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberSearchConfig;->Count:I

    return v0
.end method

.method public getIsAlsoMatchGroupMemberNickname()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberSearchConfig;->IsAlsoMatchGroupMemberNickname:Z

    return v0
.end method

.method public getIsNullFromJava()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberSearchConfig;->IsNullFromJava:Z

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

    .line 38
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberSearchConfig;->Keywords:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNextFlag()I
    .locals 1

    .line 35
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberSearchConfig;->NextFlag:I

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
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberSearchConfig;->Count:I

    return-void
.end method

.method public setIsAlsoMatchGroupMemberNickname(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isAlsoMatchGroupMemberNickname"
        }
    .end annotation

    .line 43
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberSearchConfig;->IsAlsoMatchGroupMemberNickname:Z

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

    .line 47
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberSearchConfig;->IsNullFromJava:Z

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

    .line 39
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberSearchConfig;->Keywords:Ljava/util/ArrayList;

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

    .line 36
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberSearchConfig;->NextFlag:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenGroupMemberSearchConfig{Count="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberSearchConfig;->Count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",NextFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberSearchConfig;->NextFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Keywords="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberSearchConfig;->Keywords:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsAlsoMatchGroupMemberNickname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberSearchConfig;->IsAlsoMatchGroupMemberNickname:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenGroupMemberSearchConfig;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
