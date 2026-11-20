.class public final enum Lim/zego/zim/enums/ZIMConversationPinnedFilter;
.super Ljava/lang/Enum;
.source "ZIMConversationPinnedFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lim/zego/zim/enums/ZIMConversationPinnedFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lim/zego/zim/enums/ZIMConversationPinnedFilter;

.field public static final enum ALL:Lim/zego/zim/enums/ZIMConversationPinnedFilter;

.field public static final enum ONLY_PINNED:Lim/zego/zim/enums/ZIMConversationPinnedFilter;

.field public static final enum ONLY_UNPINNED:Lim/zego/zim/enums/ZIMConversationPinnedFilter;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lim/zego/zim/enums/ZIMConversationPinnedFilter;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lim/zego/zim/enums/ZIMConversationPinnedFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lim/zego/zim/enums/ZIMConversationPinnedFilter;->ALL:Lim/zego/zim/enums/ZIMConversationPinnedFilter;

    .line 5
    new-instance v1, Lim/zego/zim/enums/ZIMConversationPinnedFilter;

    const-string v2, "ONLY_PINNED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lim/zego/zim/enums/ZIMConversationPinnedFilter;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lim/zego/zim/enums/ZIMConversationPinnedFilter;->ONLY_PINNED:Lim/zego/zim/enums/ZIMConversationPinnedFilter;

    .line 6
    new-instance v2, Lim/zego/zim/enums/ZIMConversationPinnedFilter;

    const-string v3, "ONLY_UNPINNED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lim/zego/zim/enums/ZIMConversationPinnedFilter;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lim/zego/zim/enums/ZIMConversationPinnedFilter;->ONLY_UNPINNED:Lim/zego/zim/enums/ZIMConversationPinnedFilter;

    .line 3
    filled-new-array {v0, v1, v2}, [Lim/zego/zim/enums/ZIMConversationPinnedFilter;

    move-result-object v0

    sput-object v0, Lim/zego/zim/enums/ZIMConversationPinnedFilter;->$VALUES:[Lim/zego/zim/enums/ZIMConversationPinnedFilter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lim/zego/zim/enums/ZIMConversationPinnedFilter;->value:I

    return-void
.end method

.method public static getZIMConversationPinnedFilter(I)Lim/zego/zim/enums/ZIMConversationPinnedFilter;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17
    :try_start_0
    sget-object v0, Lim/zego/zim/enums/ZIMConversationPinnedFilter;->ALL:Lim/zego/zim/enums/ZIMConversationPinnedFilter;

    iget v1, v0, Lim/zego/zim/enums/ZIMConversationPinnedFilter;->value:I

    if-ne v1, p0, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    sget-object v1, Lim/zego/zim/enums/ZIMConversationPinnedFilter;->ONLY_PINNED:Lim/zego/zim/enums/ZIMConversationPinnedFilter;

    iget v2, v1, Lim/zego/zim/enums/ZIMConversationPinnedFilter;->value:I

    if-ne v2, p0, :cond_1

    return-object v1

    .line 25
    :cond_1
    sget-object v1, Lim/zego/zim/enums/ZIMConversationPinnedFilter;->ONLY_UNPINNED:Lim/zego/zim/enums/ZIMConversationPinnedFilter;

    iget v2, v1, Lim/zego/zim/enums/ZIMConversationPinnedFilter;->value:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, p0, :cond_2

    return-object v1

    :cond_2
    :goto_0
    return-object v0

    .line 30
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "The enumeration cannot be found"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lim/zego/zim/enums/ZIMConversationPinnedFilter;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 3
    const-class v0, Lim/zego/zim/enums/ZIMConversationPinnedFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lim/zego/zim/enums/ZIMConversationPinnedFilter;

    return-object p0
.end method

.method public static values()[Lim/zego/zim/enums/ZIMConversationPinnedFilter;
    .locals 1

    .line 3
    sget-object v0, Lim/zego/zim/enums/ZIMConversationPinnedFilter;->$VALUES:[Lim/zego/zim/enums/ZIMConversationPinnedFilter;

    invoke-virtual {v0}, [Lim/zego/zim/enums/ZIMConversationPinnedFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lim/zego/zim/enums/ZIMConversationPinnedFilter;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 12
    iget v0, p0, Lim/zego/zim/enums/ZIMConversationPinnedFilter;->value:I

    return v0
.end method
