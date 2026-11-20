.class final enum Lcom/oppwa/mobile/connect/provider/g$c;
.super Ljava/lang/Enum;
.source "ThreeDSManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppwa/mobile/connect/provider/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oppwa/mobile/connect/provider/g$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/oppwa/mobile/connect/provider/g$c;

.field public static final enum b:Lcom/oppwa/mobile/connect/provider/g$c;

.field public static final enum c:Lcom/oppwa/mobile/connect/provider/g$c;

.field public static final enum d:Lcom/oppwa/mobile/connect/provider/g$c;

.field private static final synthetic e:[Lcom/oppwa/mobile/connect/provider/g$c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/oppwa/mobile/connect/provider/g$c;

    const-string v1, "NOT_INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oppwa/mobile/connect/provider/g$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oppwa/mobile/connect/provider/g$c;->a:Lcom/oppwa/mobile/connect/provider/g$c;

    .line 2
    new-instance v1, Lcom/oppwa/mobile/connect/provider/g$c;

    const-string v2, "PERFORMING_INITIALIZATION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/oppwa/mobile/connect/provider/g$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/oppwa/mobile/connect/provider/g$c;->b:Lcom/oppwa/mobile/connect/provider/g$c;

    .line 3
    new-instance v2, Lcom/oppwa/mobile/connect/provider/g$c;

    const-string v3, "INITIALIZED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/oppwa/mobile/connect/provider/g$c;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/oppwa/mobile/connect/provider/g$c;->c:Lcom/oppwa/mobile/connect/provider/g$c;

    .line 4
    new-instance v3, Lcom/oppwa/mobile/connect/provider/g$c;

    const-string v4, "EXTERNALLY_INITIALIZED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/oppwa/mobile/connect/provider/g$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/oppwa/mobile/connect/provider/g$c;->d:Lcom/oppwa/mobile/connect/provider/g$c;

    .line 5
    filled-new-array {v0, v1, v2, v3}, [Lcom/oppwa/mobile/connect/provider/g$c;

    move-result-object v0

    sput-object v0, Lcom/oppwa/mobile/connect/provider/g$c;->e:[Lcom/oppwa/mobile/connect/provider/g$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oppwa/mobile/connect/provider/g$c;
    .locals 1

    .line 1
    const-class v0, Lcom/oppwa/mobile/connect/provider/g$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oppwa/mobile/connect/provider/g$c;

    return-object p0
.end method

.method public static values()[Lcom/oppwa/mobile/connect/provider/g$c;
    .locals 1

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/provider/g$c;->e:[Lcom/oppwa/mobile/connect/provider/g$c;

    invoke-virtual {v0}, [Lcom/oppwa/mobile/connect/provider/g$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppwa/mobile/connect/provider/g$c;

    return-object v0
.end method
