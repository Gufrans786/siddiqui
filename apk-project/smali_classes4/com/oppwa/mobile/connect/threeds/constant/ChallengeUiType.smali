.class public final enum Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;
.super Ljava/lang/Enum;
.source "ChallengeUiType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum HTML:Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;

.field public static final enum MULTI_SELECT:Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;

.field public static final enum OOB:Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;

.field public static final enum SINGLE_SELECT:Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;

.field public static final enum TEXT:Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;

.field private static final synthetic b:[Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;

    const-string v1, "TEXT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;->TEXT:Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;

    .line 6
    new-instance v1, Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;

    const-string v2, "SINGLE_SELECT"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;->SINGLE_SELECT:Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;

    .line 12
    new-instance v2, Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;

    const-string v3, "MULTI_SELECT"

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;->MULTI_SELECT:Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;

    .line 17
    new-instance v3, Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;

    const/4 v4, 0x3

    const/16 v6, 0x8

    const-string v7, "OOB"

    invoke-direct {v3, v7, v4, v6}, Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;->OOB:Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;

    .line 22
    new-instance v4, Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;

    const-string v6, "HTML"

    const/16 v7, 0x10

    invoke-direct {v4, v6, v5, v7}, Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;->HTML:Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;

    .line 23
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;

    move-result-object v0

    sput-object v0, Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;->b:[Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;->a:I

    return-void
.end method

.method public static toInt(Ljava/util/EnumSet;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;

    .line 2
    iget v1, v1, Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;->a:I

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;
    .locals 1

    .line 1
    const-class v0, Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;

    return-object p0
.end method

.method public static values()[Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;
    .locals 1

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;->b:[Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;

    invoke-virtual {v0}, [Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/oppwa/mobile/connect/threeds/constant/ChallengeUiType;->a:I

    return v0
.end method
