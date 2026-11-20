.class public Lcom/mapbox/common/TileStoreImportError;
.super Ljava/lang/Object;
.source "TileStoreImportError.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final message:Ljava/lang/String;

.field private final type:Lcom/mapbox/common/TileStoreImportErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    const-class v0, Lcom/mapbox/common/MapboxSDKCommonInitializerImpl;

    invoke-static {v0}, Lcom/mapbox/common/BaseMapboxInitializer;->init(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lcom/mapbox/common/TileStoreImportErrorType;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/mapbox/common/TileStoreImportError;->type:Lcom/mapbox/common/TileStoreImportErrorType;

    .line 23
    iput-object p2, p0, Lcom/mapbox/common/TileStoreImportError;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 50
    :cond_1
    check-cast p1, Lcom/mapbox/common/TileStoreImportError;

    .line 52
    iget-object v2, p0, Lcom/mapbox/common/TileStoreImportError;->type:Lcom/mapbox/common/TileStoreImportErrorType;

    iget-object v3, p1, Lcom/mapbox/common/TileStoreImportError;->type:Lcom/mapbox/common/TileStoreImportErrorType;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 55
    :cond_2
    iget-object v2, p0, Lcom/mapbox/common/TileStoreImportError;->message:Ljava/lang/String;

    iget-object p1, p1, Lcom/mapbox/common/TileStoreImportError;->message:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/mapbox/common/TileStoreImportError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/mapbox/common/TileStoreImportErrorType;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/mapbox/common/TileStoreImportError;->type:Lcom/mapbox/common/TileStoreImportErrorType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/mapbox/common/TileStoreImportError;->type:Lcom/mapbox/common/TileStoreImportErrorType;

    iget-object v1, p0, Lcom/mapbox/common/TileStoreImportError;->message:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mapbox/common/TileStoreImportError;->type:Lcom/mapbox/common/TileStoreImportErrorType;

    invoke-static {v1}, Lcom/mapbox/bindgen/RecordUtils;->fieldToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mapbox/common/TileStoreImportError;->message:Ljava/lang/String;

    invoke-static {v1}, Lcom/mapbox/bindgen/RecordUtils;->fieldToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
