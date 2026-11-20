.class final Lim/zego/zim/internal/generated/ZIMGenFriendAddConfig;
.super Ljava/lang/Object;
.source "ZIMGenFriendAddConfig.java"


# instance fields
.field Alias:Ljava/lang/String;

.field Attributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field IsNullFromJava:Z

.field Wording:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "wording",
            "alias",
            "attributes",
            "isNullFromJava"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenFriendAddConfig;->Wording:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lim/zego/zim/internal/generated/ZIMGenFriendAddConfig;->Alias:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lim/zego/zim/internal/generated/ZIMGenFriendAddConfig;->Attributes:Ljava/util/HashMap;

    .line 25
    iput-boolean p4, p0, Lim/zego/zim/internal/generated/ZIMGenFriendAddConfig;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getAlias()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenFriendAddConfig;->Alias:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributes()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenFriendAddConfig;->Attributes:Ljava/util/HashMap;

    return-object v0
.end method

.method public getIsNullFromJava()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenFriendAddConfig;->IsNullFromJava:Z

    return v0
.end method

.method public getWording()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenFriendAddConfig;->Wording:Ljava/lang/String;

    return-object v0
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alias"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenFriendAddConfig;->Alias:Ljava/lang/String;

    return-void
.end method

.method public setAttributes(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attributes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenFriendAddConfig;->Attributes:Ljava/util/HashMap;

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

    .line 38
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenFriendAddConfig;->IsNullFromJava:Z

    return-void
.end method

.method public setWording(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wording"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenFriendAddConfig;->Wording:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenFriendAddConfig{Wording="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenFriendAddConfig;->Wording:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Alias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenFriendAddConfig;->Alias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Attributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenFriendAddConfig;->Attributes:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenFriendAddConfig;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
