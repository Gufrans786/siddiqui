.class public final enum Lim/zego/zim/enums/ZIMTipsMessageEvent;
.super Ljava/lang/Enum;
.source "ZIMTipsMessageEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lim/zego/zim/enums/ZIMTipsMessageEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lim/zego/zim/enums/ZIMTipsMessageEvent;

.field public static final enum GROUP_CREATED:Lim/zego/zim/enums/ZIMTipsMessageEvent;

.field public static final enum GROUP_DISMISSED:Lim/zego/zim/enums/ZIMTipsMessageEvent;

.field public static final enum GROUP_INFO_CHANGED:Lim/zego/zim/enums/ZIMTipsMessageEvent;

.field public static final enum GROUP_INVITED:Lim/zego/zim/enums/ZIMTipsMessageEvent;

.field public static final enum GROUP_JOINED:Lim/zego/zim/enums/ZIMTipsMessageEvent;

.field public static final enum GROUP_KICKED_OUT:Lim/zego/zim/enums/ZIMTipsMessageEvent;

.field public static final enum GROUP_LEFT:Lim/zego/zim/enums/ZIMTipsMessageEvent;

.field public static final enum GROUP_MEMBER_INFO_CHANGED:Lim/zego/zim/enums/ZIMTipsMessageEvent;

.field public static final enum GROUP_MESSAGE_PINNED:Lim/zego/zim/enums/ZIMTipsMessageEvent;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 4
    new-instance v0, Lim/zego/zim/enums/ZIMTipsMessageEvent;

    const-string v1, "GROUP_CREATED"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lim/zego/zim/enums/ZIMTipsMessageEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lim/zego/zim/enums/ZIMTipsMessageEvent;->GROUP_CREATED:Lim/zego/zim/enums/ZIMTipsMessageEvent;

    .line 6
    new-instance v1, Lim/zego/zim/enums/ZIMTipsMessageEvent;

    const-string v2, "GROUP_DISMISSED"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lim/zego/zim/enums/ZIMTipsMessageEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lim/zego/zim/enums/ZIMTipsMessageEvent;->GROUP_DISMISSED:Lim/zego/zim/enums/ZIMTipsMessageEvent;

    .line 8
    new-instance v2, Lim/zego/zim/enums/ZIMTipsMessageEvent;

    const-string v3, "GROUP_JOINED"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lim/zego/zim/enums/ZIMTipsMessageEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lim/zego/zim/enums/ZIMTipsMessageEvent;->GROUP_JOINED:Lim/zego/zim/enums/ZIMTipsMessageEvent;

    .line 10
    new-instance v3, Lim/zego/zim/enums/ZIMTipsMessageEvent;

    const-string v4, "GROUP_INVITED"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lim/zego/zim/enums/ZIMTipsMessageEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lim/zego/zim/enums/ZIMTipsMessageEvent;->GROUP_INVITED:Lim/zego/zim/enums/ZIMTipsMessageEvent;

    .line 12
    new-instance v4, Lim/zego/zim/enums/ZIMTipsMessageEvent;

    const-string v5, "GROUP_LEFT"

    const/4 v7, 0x5

    invoke-direct {v4, v5, v6, v7}, Lim/zego/zim/enums/ZIMTipsMessageEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lim/zego/zim/enums/ZIMTipsMessageEvent;->GROUP_LEFT:Lim/zego/zim/enums/ZIMTipsMessageEvent;

    .line 14
    new-instance v5, Lim/zego/zim/enums/ZIMTipsMessageEvent;

    const-string v6, "GROUP_KICKED_OUT"

    const/4 v8, 0x6

    invoke-direct {v5, v6, v7, v8}, Lim/zego/zim/enums/ZIMTipsMessageEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lim/zego/zim/enums/ZIMTipsMessageEvent;->GROUP_KICKED_OUT:Lim/zego/zim/enums/ZIMTipsMessageEvent;

    .line 16
    new-instance v6, Lim/zego/zim/enums/ZIMTipsMessageEvent;

    const-string v7, "GROUP_INFO_CHANGED"

    const/4 v9, 0x7

    invoke-direct {v6, v7, v8, v9}, Lim/zego/zim/enums/ZIMTipsMessageEvent;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lim/zego/zim/enums/ZIMTipsMessageEvent;->GROUP_INFO_CHANGED:Lim/zego/zim/enums/ZIMTipsMessageEvent;

    .line 18
    new-instance v7, Lim/zego/zim/enums/ZIMTipsMessageEvent;

    const-string v8, "GROUP_MEMBER_INFO_CHANGED"

    const/16 v10, 0x8

    invoke-direct {v7, v8, v9, v10}, Lim/zego/zim/enums/ZIMTipsMessageEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lim/zego/zim/enums/ZIMTipsMessageEvent;->GROUP_MEMBER_INFO_CHANGED:Lim/zego/zim/enums/ZIMTipsMessageEvent;

    .line 20
    new-instance v8, Lim/zego/zim/enums/ZIMTipsMessageEvent;

    const-string v9, "GROUP_MESSAGE_PINNED"

    const/16 v11, 0x9

    invoke-direct {v8, v9, v10, v11}, Lim/zego/zim/enums/ZIMTipsMessageEvent;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lim/zego/zim/enums/ZIMTipsMessageEvent;->GROUP_MESSAGE_PINNED:Lim/zego/zim/enums/ZIMTipsMessageEvent;

    .line 3
    filled-new-array/range {v0 .. v8}, [Lim/zego/zim/enums/ZIMTipsMessageEvent;

    move-result-object v0

    sput-object v0, Lim/zego/zim/enums/ZIMTipsMessageEvent;->$VALUES:[Lim/zego/zim/enums/ZIMTipsMessageEvent;

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

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lim/zego/zim/enums/ZIMTipsMessageEvent;->value:I

    return-void
.end method

.method public static getZIMTipsMessageEvent(I)Lim/zego/zim/enums/ZIMTipsMessageEvent;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 31
    :try_start_0
    sget-object v0, Lim/zego/zim/enums/ZIMTipsMessageEvent;->GROUP_CREATED:Lim/zego/zim/enums/ZIMTipsMessageEvent;

    iget v1, v0, Lim/zego/zim/enums/ZIMTipsMessageEvent;->value:I

    if-ne v1, p0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    sget-object v1, Lim/zego/zim/enums/ZIMTipsMessageEvent;->GROUP_DISMISSED:Lim/zego/zim/enums/ZIMTipsMessageEvent;

    iget v2, v1, Lim/zego/zim/enums/ZIMTipsMessageEvent;->value:I

    if-ne v2, p0, :cond_1

    return-object v1

    .line 37
    :cond_1
    sget-object v1, Lim/zego/zim/enums/ZIMTipsMessageEvent;->GROUP_JOINED:Lim/zego/zim/enums/ZIMTipsMessageEvent;

    iget v2, v1, Lim/zego/zim/enums/ZIMTipsMessageEvent;->value:I

    if-ne v2, p0, :cond_2

    return-object v1

    .line 40
    :cond_2
    sget-object v1, Lim/zego/zim/enums/ZIMTipsMessageEvent;->GROUP_INVITED:Lim/zego/zim/enums/ZIMTipsMessageEvent;

    iget v2, v1, Lim/zego/zim/enums/ZIMTipsMessageEvent;->value:I

    if-ne v2, p0, :cond_3

    return-object v1

    .line 43
    :cond_3
    sget-object v1, Lim/zego/zim/enums/ZIMTipsMessageEvent;->GROUP_LEFT:Lim/zego/zim/enums/ZIMTipsMessageEvent;

    iget v2, v1, Lim/zego/zim/enums/ZIMTipsMessageEvent;->value:I

    if-ne v2, p0, :cond_4

    return-object v1

    .line 46
    :cond_4
    sget-object v1, Lim/zego/zim/enums/ZIMTipsMessageEvent;->GROUP_KICKED_OUT:Lim/zego/zim/enums/ZIMTipsMessageEvent;

    iget v2, v1, Lim/zego/zim/enums/ZIMTipsMessageEvent;->value:I

    if-ne v2, p0, :cond_5

    return-object v1

    .line 49
    :cond_5
    sget-object v1, Lim/zego/zim/enums/ZIMTipsMessageEvent;->GROUP_INFO_CHANGED:Lim/zego/zim/enums/ZIMTipsMessageEvent;

    iget v2, v1, Lim/zego/zim/enums/ZIMTipsMessageEvent;->value:I

    if-ne v2, p0, :cond_6

    return-object v1

    .line 52
    :cond_6
    sget-object v1, Lim/zego/zim/enums/ZIMTipsMessageEvent;->GROUP_MEMBER_INFO_CHANGED:Lim/zego/zim/enums/ZIMTipsMessageEvent;

    iget v2, v1, Lim/zego/zim/enums/ZIMTipsMessageEvent;->value:I

    if-ne v2, p0, :cond_7

    return-object v1

    .line 55
    :cond_7
    sget-object v1, Lim/zego/zim/enums/ZIMTipsMessageEvent;->GROUP_MESSAGE_PINNED:Lim/zego/zim/enums/ZIMTipsMessageEvent;

    iget v2, v1, Lim/zego/zim/enums/ZIMTipsMessageEvent;->value:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, p0, :cond_8

    return-object v1

    :cond_8
    :goto_0
    return-object v0

    .line 60
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "The enumeration cannot be found"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lim/zego/zim/enums/ZIMTipsMessageEvent;
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
    const-class v0, Lim/zego/zim/enums/ZIMTipsMessageEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lim/zego/zim/enums/ZIMTipsMessageEvent;

    return-object p0
.end method

.method public static values()[Lim/zego/zim/enums/ZIMTipsMessageEvent;
    .locals 1

    .line 3
    sget-object v0, Lim/zego/zim/enums/ZIMTipsMessageEvent;->$VALUES:[Lim/zego/zim/enums/ZIMTipsMessageEvent;

    invoke-virtual {v0}, [Lim/zego/zim/enums/ZIMTipsMessageEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lim/zego/zim/enums/ZIMTipsMessageEvent;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 26
    iget v0, p0, Lim/zego/zim/enums/ZIMTipsMessageEvent;->value:I

    return v0
.end method
