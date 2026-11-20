.class public final enum Lcom/mapbox/common/TileStoreImportErrorType;
.super Ljava/lang/Enum;
.source "TileStoreImportErrorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mapbox/common/TileStoreImportErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mapbox/common/TileStoreImportErrorType;

.field public static final enum CANCELED:Lcom/mapbox/common/TileStoreImportErrorType;

.field public static final enum DISK_FULL:Lcom/mapbox/common/TileStoreImportErrorType;

.field public static final enum DOES_NOT_EXIST:Lcom/mapbox/common/TileStoreImportErrorType;

.field public static final enum INTEGRITY_CHECK_ERROR:Lcom/mapbox/common/TileStoreImportErrorType;

.field public static final enum OTHER:Lcom/mapbox/common/TileStoreImportErrorType;


# instance fields
.field private str:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/mapbox/common/TileStoreImportErrorType;
    .locals 5

    .line 8
    sget-object v0, Lcom/mapbox/common/TileStoreImportErrorType;->CANCELED:Lcom/mapbox/common/TileStoreImportErrorType;

    sget-object v1, Lcom/mapbox/common/TileStoreImportErrorType;->DOES_NOT_EXIST:Lcom/mapbox/common/TileStoreImportErrorType;

    sget-object v2, Lcom/mapbox/common/TileStoreImportErrorType;->DISK_FULL:Lcom/mapbox/common/TileStoreImportErrorType;

    sget-object v3, Lcom/mapbox/common/TileStoreImportErrorType;->OTHER:Lcom/mapbox/common/TileStoreImportErrorType;

    sget-object v4, Lcom/mapbox/common/TileStoreImportErrorType;->INTEGRITY_CHECK_ERROR:Lcom/mapbox/common/TileStoreImportErrorType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/mapbox/common/TileStoreImportErrorType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 11
    new-instance v0, Lcom/mapbox/common/TileStoreImportErrorType;

    const/4 v1, 0x0

    const-string v2, "Canceled"

    const-string v3, "CANCELED"

    invoke-direct {v0, v3, v1, v2}, Lcom/mapbox/common/TileStoreImportErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mapbox/common/TileStoreImportErrorType;->CANCELED:Lcom/mapbox/common/TileStoreImportErrorType;

    .line 14
    new-instance v0, Lcom/mapbox/common/TileStoreImportErrorType;

    const/4 v1, 0x1

    const-string v2, "DoesNotExist"

    const-string v3, "DOES_NOT_EXIST"

    invoke-direct {v0, v3, v1, v2}, Lcom/mapbox/common/TileStoreImportErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mapbox/common/TileStoreImportErrorType;->DOES_NOT_EXIST:Lcom/mapbox/common/TileStoreImportErrorType;

    .line 17
    new-instance v0, Lcom/mapbox/common/TileStoreImportErrorType;

    const/4 v1, 0x2

    const-string v2, "DiskFull"

    const-string v3, "DISK_FULL"

    invoke-direct {v0, v3, v1, v2}, Lcom/mapbox/common/TileStoreImportErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mapbox/common/TileStoreImportErrorType;->DISK_FULL:Lcom/mapbox/common/TileStoreImportErrorType;

    .line 20
    new-instance v0, Lcom/mapbox/common/TileStoreImportErrorType;

    const/4 v1, 0x3

    const-string v2, "Other"

    const-string v3, "OTHER"

    invoke-direct {v0, v3, v1, v2}, Lcom/mapbox/common/TileStoreImportErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mapbox/common/TileStoreImportErrorType;->OTHER:Lcom/mapbox/common/TileStoreImportErrorType;

    .line 23
    new-instance v0, Lcom/mapbox/common/TileStoreImportErrorType;

    const/4 v1, 0x4

    const-string v2, "IntegrityCheckError"

    const-string v3, "INTEGRITY_CHECK_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/mapbox/common/TileStoreImportErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mapbox/common/TileStoreImportErrorType;->INTEGRITY_CHECK_ERROR:Lcom/mapbox/common/TileStoreImportErrorType;

    .line 8
    invoke-static {}, Lcom/mapbox/common/TileStoreImportErrorType;->$values()[Lcom/mapbox/common/TileStoreImportErrorType;

    move-result-object v0

    sput-object v0, Lcom/mapbox/common/TileStoreImportErrorType;->$VALUES:[Lcom/mapbox/common/TileStoreImportErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Lcom/mapbox/common/TileStoreImportErrorType;->str:Ljava/lang/String;

    return-void
.end method

.method private getValue()I
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/mapbox/common/TileStoreImportErrorType;->ordinal()I

    move-result v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mapbox/common/TileStoreImportErrorType;
    .locals 1

    .line 8
    const-class v0, Lcom/mapbox/common/TileStoreImportErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mapbox/common/TileStoreImportErrorType;

    return-object p0
.end method

.method public static values()[Lcom/mapbox/common/TileStoreImportErrorType;
    .locals 1

    .line 8
    sget-object v0, Lcom/mapbox/common/TileStoreImportErrorType;->$VALUES:[Lcom/mapbox/common/TileStoreImportErrorType;

    invoke-virtual {v0}, [Lcom/mapbox/common/TileStoreImportErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mapbox/common/TileStoreImportErrorType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/mapbox/common/TileStoreImportErrorType;->str:Ljava/lang/String;

    return-object v0
.end method
