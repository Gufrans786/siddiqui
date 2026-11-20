.class public final enum Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;
.super Ljava/lang/Enum;
.source "ZPNsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/zego/zpns/enums/ZPNsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PushCmdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;

.field public static final enum DEFAULT:Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;

.field public static final enum REGISTER:Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;

.field public static final enum UNREGISTER:Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 71
    new-instance v0, Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;->DEFAULT:Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;

    .line 76
    new-instance v1, Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;

    const-string v2, "REGISTER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;->REGISTER:Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;

    .line 81
    new-instance v2, Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;

    const-string v3, "UNREGISTER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;->UNREGISTER:Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;

    .line 67
    filled-new-array {v0, v1, v2}, [Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;

    move-result-object v0

    sput-object v0, Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;->$VALUES:[Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    iput p3, p0, Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;->code:I

    return-void
.end method

.method public static fromValue(I)Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 100
    sget-object p0, Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;->DEFAULT:Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;

    return-object p0

    .line 98
    :cond_0
    sget-object p0, Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;->UNREGISTER:Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;

    return-object p0

    .line 96
    :cond_1
    sget-object p0, Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;->REGISTER:Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;
    .locals 1

    .line 67
    const-class v0, Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;

    return-object p0
.end method

.method public static values()[Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;
    .locals 1

    .line 67
    sget-object v0, Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;->$VALUES:[Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;

    invoke-virtual {v0}, [Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;

    return-object v0
.end method


# virtual methods
.method public code()I
    .locals 1

    .line 90
    iget v0, p0, Lim/zego/zpns/enums/ZPNsConstants$PushCmdType;->code:I

    return v0
.end method
