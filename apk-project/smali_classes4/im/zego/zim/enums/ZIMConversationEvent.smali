.class public final enum Lim/zego/zim/enums/ZIMConversationEvent;
.super Ljava/lang/Enum;
.source "ZIMConversationEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lim/zego/zim/enums/ZIMConversationEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lim/zego/zim/enums/ZIMConversationEvent;

.field public static final enum ADDED:Lim/zego/zim/enums/ZIMConversationEvent;

.field public static final enum DELETED:Lim/zego/zim/enums/ZIMConversationEvent;

.field public static final enum DISABLED:Lim/zego/zim/enums/ZIMConversationEvent;

.field public static final enum UNKNOWN:Lim/zego/zim/enums/ZIMConversationEvent;

.field public static final enum UPDATED:Lim/zego/zim/enums/ZIMConversationEvent;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 4
    new-instance v0, Lim/zego/zim/enums/ZIMConversationEvent;

    const/4 v1, -0x1

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lim/zego/zim/enums/ZIMConversationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lim/zego/zim/enums/ZIMConversationEvent;->UNKNOWN:Lim/zego/zim/enums/ZIMConversationEvent;

    .line 5
    new-instance v1, Lim/zego/zim/enums/ZIMConversationEvent;

    const-string v2, "ADDED"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lim/zego/zim/enums/ZIMConversationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lim/zego/zim/enums/ZIMConversationEvent;->ADDED:Lim/zego/zim/enums/ZIMConversationEvent;

    .line 6
    new-instance v2, Lim/zego/zim/enums/ZIMConversationEvent;

    const-string v3, "UPDATED"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v5, v4}, Lim/zego/zim/enums/ZIMConversationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lim/zego/zim/enums/ZIMConversationEvent;->UPDATED:Lim/zego/zim/enums/ZIMConversationEvent;

    .line 7
    new-instance v3, Lim/zego/zim/enums/ZIMConversationEvent;

    const-string v4, "DISABLED"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v6, v5}, Lim/zego/zim/enums/ZIMConversationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lim/zego/zim/enums/ZIMConversationEvent;->DISABLED:Lim/zego/zim/enums/ZIMConversationEvent;

    .line 8
    new-instance v4, Lim/zego/zim/enums/ZIMConversationEvent;

    const-string v5, "DELETED"

    const/4 v7, 0x4

    invoke-direct {v4, v5, v7, v6}, Lim/zego/zim/enums/ZIMConversationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lim/zego/zim/enums/ZIMConversationEvent;->DELETED:Lim/zego/zim/enums/ZIMConversationEvent;

    .line 3
    filled-new-array {v0, v1, v2, v3, v4}, [Lim/zego/zim/enums/ZIMConversationEvent;

    move-result-object v0

    sput-object v0, Lim/zego/zim/enums/ZIMConversationEvent;->$VALUES:[Lim/zego/zim/enums/ZIMConversationEvent;

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

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lim/zego/zim/enums/ZIMConversationEvent;->value:I

    return-void
.end method

.method public static getZIMConversationEvent(I)Lim/zego/zim/enums/ZIMConversationEvent;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 19
    :try_start_0
    sget-object v0, Lim/zego/zim/enums/ZIMConversationEvent;->ADDED:Lim/zego/zim/enums/ZIMConversationEvent;

    iget v1, v0, Lim/zego/zim/enums/ZIMConversationEvent;->value:I

    if-ne v1, p0, :cond_0

    return-object v0

    .line 23
    :cond_0
    sget-object v0, Lim/zego/zim/enums/ZIMConversationEvent;->UPDATED:Lim/zego/zim/enums/ZIMConversationEvent;

    iget v1, v0, Lim/zego/zim/enums/ZIMConversationEvent;->value:I

    if-ne v1, p0, :cond_1

    return-object v0

    .line 27
    :cond_1
    sget-object v0, Lim/zego/zim/enums/ZIMConversationEvent;->DISABLED:Lim/zego/zim/enums/ZIMConversationEvent;

    iget v1, v0, Lim/zego/zim/enums/ZIMConversationEvent;->value:I

    if-ne v1, p0, :cond_2

    return-object v0

    .line 31
    :cond_2
    sget-object v0, Lim/zego/zim/enums/ZIMConversationEvent;->DELETED:Lim/zego/zim/enums/ZIMConversationEvent;

    iget v1, v0, Lim/zego/zim/enums/ZIMConversationEvent;->value:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p0, :cond_3

    return-object v0

    .line 38
    :cond_3
    sget-object p0, Lim/zego/zim/enums/ZIMConversationEvent;->UNKNOWN:Lim/zego/zim/enums/ZIMConversationEvent;

    return-object p0

    .line 36
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "The enumeration cannot be found"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lim/zego/zim/enums/ZIMConversationEvent;
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
    const-class v0, Lim/zego/zim/enums/ZIMConversationEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lim/zego/zim/enums/ZIMConversationEvent;

    return-object p0
.end method

.method public static values()[Lim/zego/zim/enums/ZIMConversationEvent;
    .locals 1

    .line 3
    sget-object v0, Lim/zego/zim/enums/ZIMConversationEvent;->$VALUES:[Lim/zego/zim/enums/ZIMConversationEvent;

    invoke-virtual {v0}, [Lim/zego/zim/enums/ZIMConversationEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lim/zego/zim/enums/ZIMConversationEvent;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 14
    iget v0, p0, Lim/zego/zim/enums/ZIMConversationEvent;->value:I

    return v0
.end method
