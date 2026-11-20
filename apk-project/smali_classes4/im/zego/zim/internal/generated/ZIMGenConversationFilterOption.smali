.class final Lim/zego/zim/internal/generated/ZIMGenConversationFilterOption;
.super Ljava/lang/Object;
.source "ZIMGenConversationFilterOption.java"


# instance fields
.field ConversationTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field IsNullFromJava:Z

.field IsOnlyUnreadConversation:Z

.field Marks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field PinnedFilter:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;ZIZ)V
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
            "marks",
            "conversationTypes",
            "isOnlyUnreadConversation",
            "pinnedFilter",
            "isNullFromJava"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;ZIZ)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationFilterOption;->Marks:Ljava/util/ArrayList;

    .line 27
    iput-object p2, p0, Lim/zego/zim/internal/generated/ZIMGenConversationFilterOption;->ConversationTypes:Ljava/util/ArrayList;

    .line 28
    iput-boolean p3, p0, Lim/zego/zim/internal/generated/ZIMGenConversationFilterOption;->IsOnlyUnreadConversation:Z

    .line 29
    iput p4, p0, Lim/zego/zim/internal/generated/ZIMGenConversationFilterOption;->PinnedFilter:I

    .line 30
    iput-boolean p5, p0, Lim/zego/zim/internal/generated/ZIMGenConversationFilterOption;->IsNullFromJava:Z

    return-void
.end method


# virtual methods
.method public getConversationTypes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversationFilterOption;->ConversationTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIsNullFromJava()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversationFilterOption;->IsNullFromJava:Z

    return v0
.end method

.method public getIsOnlyUnreadConversation()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversationFilterOption;->IsOnlyUnreadConversation:Z

    return v0
.end method

.method public getMarks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversationFilterOption;->Marks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPinnedFilter()I
    .locals 1

    .line 46
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenConversationFilterOption;->PinnedFilter:I

    return v0
.end method

.method public setConversationTypes(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "conversationTypes"
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

    .line 38
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationFilterOption;->ConversationTypes:Ljava/util/ArrayList;

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

    .line 50
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationFilterOption;->IsNullFromJava:Z

    return-void
.end method

.method public setIsOnlyUnreadConversation(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOnlyUnreadConversation"
        }
    .end annotation

    .line 43
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationFilterOption;->IsOnlyUnreadConversation:Z

    return-void
.end method

.method public setMarks(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "marks"
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

    .line 34
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationFilterOption;->Marks:Ljava/util/ArrayList;

    return-void
.end method

.method public setPinnedFilter(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pinnedFilter"
        }
    .end annotation

    .line 47
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationFilterOption;->PinnedFilter:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenConversationFilterOption{Marks="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationFilterOption;->Marks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ConversationTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationFilterOption;->ConversationTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsOnlyUnreadConversation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationFilterOption;->IsOnlyUnreadConversation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",PinnedFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationFilterOption;->PinnedFilter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsNullFromJava="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenConversationFilterOption;->IsNullFromJava:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
