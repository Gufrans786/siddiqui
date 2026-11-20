.class public final enum Lim/zego/zim/enums/ZIMMessageRevokeStatus;
.super Ljava/lang/Enum;
.source "ZIMMessageRevokeStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lim/zego/zim/enums/ZIMMessageRevokeStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lim/zego/zim/enums/ZIMMessageRevokeStatus;

.field public static final enum AUDIT_REJECT_REVOKE:Lim/zego/zim/enums/ZIMMessageRevokeStatus;

.field public static final enum GROUP_ADMIN_REVOKE:Lim/zego/zim/enums/ZIMMessageRevokeStatus;

.field public static final enum GROUP_OWNER_REVOKE:Lim/zego/zim/enums/ZIMMessageRevokeStatus;

.field public static final enum SELF_REVOKE:Lim/zego/zim/enums/ZIMMessageRevokeStatus;

.field public static final enum SERVER_API_REVOKE:Lim/zego/zim/enums/ZIMMessageRevokeStatus;

.field public static final enum SYSTEM_REVOKE:Lim/zego/zim/enums/ZIMMessageRevokeStatus;

.field public static final enum UNKNOWN:Lim/zego/zim/enums/ZIMMessageRevokeStatus;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 4
    new-instance v0, Lim/zego/zim/enums/ZIMMessageRevokeStatus;

    const/4 v1, -0x1

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lim/zego/zim/enums/ZIMMessageRevokeStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lim/zego/zim/enums/ZIMMessageRevokeStatus;->UNKNOWN:Lim/zego/zim/enums/ZIMMessageRevokeStatus;

    .line 5
    new-instance v1, Lim/zego/zim/enums/ZIMMessageRevokeStatus;

    const-string v2, "SELF_REVOKE"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lim/zego/zim/enums/ZIMMessageRevokeStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lim/zego/zim/enums/ZIMMessageRevokeStatus;->SELF_REVOKE:Lim/zego/zim/enums/ZIMMessageRevokeStatus;

    .line 6
    new-instance v2, Lim/zego/zim/enums/ZIMMessageRevokeStatus;

    const-string v3, "SYSTEM_REVOKE"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v5, v4}, Lim/zego/zim/enums/ZIMMessageRevokeStatus;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lim/zego/zim/enums/ZIMMessageRevokeStatus;->SYSTEM_REVOKE:Lim/zego/zim/enums/ZIMMessageRevokeStatus;

    .line 7
    new-instance v3, Lim/zego/zim/enums/ZIMMessageRevokeStatus;

    const-string v4, "SERVER_API_REVOKE"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v6, v5}, Lim/zego/zim/enums/ZIMMessageRevokeStatus;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lim/zego/zim/enums/ZIMMessageRevokeStatus;->SERVER_API_REVOKE:Lim/zego/zim/enums/ZIMMessageRevokeStatus;

    .line 8
    new-instance v4, Lim/zego/zim/enums/ZIMMessageRevokeStatus;

    const-string v5, "GROUP_ADMIN_REVOKE"

    const/4 v7, 0x4

    invoke-direct {v4, v5, v7, v6}, Lim/zego/zim/enums/ZIMMessageRevokeStatus;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lim/zego/zim/enums/ZIMMessageRevokeStatus;->GROUP_ADMIN_REVOKE:Lim/zego/zim/enums/ZIMMessageRevokeStatus;

    .line 9
    new-instance v5, Lim/zego/zim/enums/ZIMMessageRevokeStatus;

    const-string v6, "GROUP_OWNER_REVOKE"

    const/4 v8, 0x5

    invoke-direct {v5, v6, v8, v7}, Lim/zego/zim/enums/ZIMMessageRevokeStatus;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lim/zego/zim/enums/ZIMMessageRevokeStatus;->GROUP_OWNER_REVOKE:Lim/zego/zim/enums/ZIMMessageRevokeStatus;

    .line 10
    new-instance v6, Lim/zego/zim/enums/ZIMMessageRevokeStatus;

    const-string v7, "AUDIT_REJECT_REVOKE"

    const/4 v9, 0x6

    invoke-direct {v6, v7, v9, v8}, Lim/zego/zim/enums/ZIMMessageRevokeStatus;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lim/zego/zim/enums/ZIMMessageRevokeStatus;->AUDIT_REJECT_REVOKE:Lim/zego/zim/enums/ZIMMessageRevokeStatus;

    .line 3
    filled-new-array/range {v0 .. v6}, [Lim/zego/zim/enums/ZIMMessageRevokeStatus;

    move-result-object v0

    sput-object v0, Lim/zego/zim/enums/ZIMMessageRevokeStatus;->$VALUES:[Lim/zego/zim/enums/ZIMMessageRevokeStatus;

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

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lim/zego/zim/enums/ZIMMessageRevokeStatus;->value:I

    return-void
.end method

.method public static getZIMMessageRevokeStatus(I)Lim/zego/zim/enums/ZIMMessageRevokeStatus;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 21
    :try_start_0
    sget-object v0, Lim/zego/zim/enums/ZIMMessageRevokeStatus;->UNKNOWN:Lim/zego/zim/enums/ZIMMessageRevokeStatus;

    iget v1, v0, Lim/zego/zim/enums/ZIMMessageRevokeStatus;->value:I

    if-ne v1, p0, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    sget-object v1, Lim/zego/zim/enums/ZIMMessageRevokeStatus;->SELF_REVOKE:Lim/zego/zim/enums/ZIMMessageRevokeStatus;

    iget v2, v1, Lim/zego/zim/enums/ZIMMessageRevokeStatus;->value:I

    if-ne v2, p0, :cond_1

    return-object v1

    .line 29
    :cond_1
    sget-object v1, Lim/zego/zim/enums/ZIMMessageRevokeStatus;->SYSTEM_REVOKE:Lim/zego/zim/enums/ZIMMessageRevokeStatus;

    iget v2, v1, Lim/zego/zim/enums/ZIMMessageRevokeStatus;->value:I

    if-ne v2, p0, :cond_2

    return-object v1

    .line 33
    :cond_2
    sget-object v1, Lim/zego/zim/enums/ZIMMessageRevokeStatus;->SERVER_API_REVOKE:Lim/zego/zim/enums/ZIMMessageRevokeStatus;

    iget v2, v1, Lim/zego/zim/enums/ZIMMessageRevokeStatus;->value:I

    if-ne v2, p0, :cond_3

    return-object v1

    .line 37
    :cond_3
    sget-object v1, Lim/zego/zim/enums/ZIMMessageRevokeStatus;->GROUP_ADMIN_REVOKE:Lim/zego/zim/enums/ZIMMessageRevokeStatus;

    iget v2, v1, Lim/zego/zim/enums/ZIMMessageRevokeStatus;->value:I

    if-ne v2, p0, :cond_4

    return-object v1

    .line 41
    :cond_4
    sget-object v1, Lim/zego/zim/enums/ZIMMessageRevokeStatus;->GROUP_OWNER_REVOKE:Lim/zego/zim/enums/ZIMMessageRevokeStatus;

    iget v2, v1, Lim/zego/zim/enums/ZIMMessageRevokeStatus;->value:I

    if-ne v2, p0, :cond_5

    return-object v1

    .line 45
    :cond_5
    sget-object v1, Lim/zego/zim/enums/ZIMMessageRevokeStatus;->AUDIT_REJECT_REVOKE:Lim/zego/zim/enums/ZIMMessageRevokeStatus;

    iget v2, v1, Lim/zego/zim/enums/ZIMMessageRevokeStatus;->value:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, p0, :cond_6

    return-object v1

    :cond_6
    :goto_0
    return-object v0

    .line 49
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "The enumeration cannot be found"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lim/zego/zim/enums/ZIMMessageRevokeStatus;
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
    const-class v0, Lim/zego/zim/enums/ZIMMessageRevokeStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lim/zego/zim/enums/ZIMMessageRevokeStatus;

    return-object p0
.end method

.method public static values()[Lim/zego/zim/enums/ZIMMessageRevokeStatus;
    .locals 1

    .line 3
    sget-object v0, Lim/zego/zim/enums/ZIMMessageRevokeStatus;->$VALUES:[Lim/zego/zim/enums/ZIMMessageRevokeStatus;

    invoke-virtual {v0}, [Lim/zego/zim/enums/ZIMMessageRevokeStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lim/zego/zim/enums/ZIMMessageRevokeStatus;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 16
    iget v0, p0, Lim/zego/zim/enums/ZIMMessageRevokeStatus;->value:I

    return v0
.end method
