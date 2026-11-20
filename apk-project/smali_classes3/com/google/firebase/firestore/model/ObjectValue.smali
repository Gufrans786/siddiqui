.class public final Lcom/google/firebase/firestore/model/ObjectValue;
.super Ljava/lang/Object;
.source "ObjectValue.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final lock:Ljava/lang/Object;

.field private volatile mergedValue:Lcom/google/firestore/v1/Value;

.field private final overlayMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private partialValue:Lcom/google/firestore/v1/Value;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 83
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-static {}, Lcom/google/firestore/v1/MapValue;->getDefaultInstance()Lcom/google/firestore/v1/MapValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Value$Builder;->setMapValue(Lcom/google/firestore/v1/MapValue;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/model/ObjectValue;-><init>(Lcom/google/firestore/v1/Value;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/firestore/v1/Value;)V
    .locals 5

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/model/ObjectValue;->lock:Ljava/lang/Object;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/model/ObjectValue;->overlayMap:Ljava/util/Map;

    .line 74
    invoke-virtual {p1}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v0

    sget-object v1, Lcom/google/firestore/v1/Value$ValueTypeCase;->MAP_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const-string v1, "ObjectValues should be backed by a MapValue"

    new-array v4, v3, [Ljava/lang/Object;

    .line 73
    invoke-static {v0, v1, v4}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 77
    invoke-static {p1}, Lcom/google/firebase/firestore/model/ServerTimestamps;->isServerTimestamp(Lcom/google/firestore/v1/Value;)Z

    move-result v0

    xor-int/2addr v0, v2

    const-string v1, "ServerTimestamps should not be used as an ObjectValue"

    new-array v2, v3, [Ljava/lang/Object;

    .line 76
    invoke-static {v0, v1, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 79
    iput-object p1, p0, Lcom/google/firebase/firestore/model/ObjectValue;->mergedValue:Lcom/google/firestore/v1/Value;

    return-void
.end method

.method private static applyOverlay(Lcom/google/firestore/v1/Value;Lcom/google/firebase/firestore/model/FieldPath;Ljava/util/Map;)Lcom/google/firestore/v1/MapValue;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firestore/v1/Value;",
            "Lcom/google/firebase/firestore/model/FieldPath;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firestore/v1/MapValue;"
        }
    .end annotation

    .line 272
    invoke-static {p0, p1}, Lcom/google/firebase/firestore/model/ObjectValue;->extractNestedValue(Lcom/google/firestore/v1/Value;Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firestore/v1/Value;

    move-result-object v0

    .line 274
    invoke-static {v0}, Lcom/google/firebase/firestore/model/Values;->isMapValue(Lcom/google/firestore/v1/Value;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->getMapValue()Lcom/google/firestore/v1/MapValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/MapValue;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/MapValue$Builder;

    goto :goto_0

    .line 278
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/MapValue;->newBuilder()Lcom/google/firestore/v1/MapValue$Builder;

    move-result-object v0

    .line 280
    :goto_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    move v2, v1

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 281
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 282
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 284
    instance-of v5, v3, Ljava/util/Map;

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    .line 288
    invoke-virtual {p1, v4}, Lcom/google/firebase/firestore/model/FieldPath;->append(Ljava/lang/String;)Lcom/google/firebase/firestore/model/BasePath;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/model/FieldPath;

    check-cast v3, Ljava/util/Map;

    .line 287
    invoke-static {p0, v5, v3}, Lcom/google/firebase/firestore/model/ObjectValue;->applyOverlay(Lcom/google/firestore/v1/Value;Lcom/google/firebase/firestore/model/FieldPath;Ljava/util/Map;)Lcom/google/firestore/v1/MapValue;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 290
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/firestore/v1/Value$Builder;->setMapValue(Lcom/google/firestore/v1/MapValue;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/firestore/v1/Value;

    invoke-virtual {v0, v4, v2}, Lcom/google/firestore/v1/MapValue$Builder;->putFields(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/MapValue$Builder;

    :goto_2
    move v2, v6

    goto :goto_1

    .line 293
    :cond_2
    instance-of v5, v3, Lcom/google/firestore/v1/Value;

    if-eqz v5, :cond_3

    .line 294
    check-cast v3, Lcom/google/firestore/v1/Value;

    invoke-virtual {v0, v4, v3}, Lcom/google/firestore/v1/MapValue$Builder;->putFields(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/MapValue$Builder;

    goto :goto_2

    .line 296
    :cond_3
    invoke-virtual {v0, v4}, Lcom/google/firestore/v1/MapValue$Builder;->containsFields(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v3, :cond_4

    move v2, v6

    goto :goto_3

    :cond_4
    move v2, v1

    .line 297
    :goto_3
    const-string v3, "Expected entry to be a Map, a Value or null"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 298
    invoke-virtual {v0, v4}, Lcom/google/firestore/v1/MapValue$Builder;->removeFields(Ljava/lang/String;)Lcom/google/firestore/v1/MapValue$Builder;

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    .line 303
    invoke-virtual {v0}, Lcom/google/firestore/v1/MapValue$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/MapValue;

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method private buildProto()Lcom/google/firestore/v1/Value;
    .locals 4

    .line 154
    iget-object v0, p0, Lcom/google/firebase/firestore/model/ObjectValue;->mergedValue:Lcom/google/firestore/v1/Value;

    if-nez v0, :cond_3

    .line 157
    iget-object v1, p0, Lcom/google/firebase/firestore/model/ObjectValue;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/firestore/model/ObjectValue;->mergedValue:Lcom/google/firestore/v1/Value;

    if-nez v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/google/firebase/firestore/model/ObjectValue;->overlayMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/google/firebase/firestore/model/ObjectValue;->partialValue:Lcom/google/firestore/v1/Value;

    goto :goto_0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/model/ObjectValue;->partialValue:Lcom/google/firestore/v1/Value;

    sget-object v2, Lcom/google/firebase/firestore/model/FieldPath;->EMPTY_PATH:Lcom/google/firebase/firestore/model/FieldPath;

    iget-object v3, p0, Lcom/google/firebase/firestore/model/ObjectValue;->overlayMap:Ljava/util/Map;

    invoke-static {v0, v2, v3}, Lcom/google/firebase/firestore/model/ObjectValue;->applyOverlay(Lcom/google/firestore/v1/Value;Lcom/google/firebase/firestore/model/FieldPath;Ljava/util/Map;)Lcom/google/firestore/v1/MapValue;

    move-result-object v0

    if-nez v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/google/firebase/firestore/model/ObjectValue;->partialValue:Lcom/google/firestore/v1/Value;

    goto :goto_0

    .line 168
    :cond_1
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/firestore/v1/Value$Builder;->setMapValue(Lcom/google/firestore/v1/MapValue;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value;

    .line 173
    :goto_0
    iput-object v0, p0, Lcom/google/firebase/firestore/model/ObjectValue;->mergedValue:Lcom/google/firestore/v1/Value;

    const/4 v2, 0x0

    .line 174
    iput-object v2, p0, Lcom/google/firebase/firestore/model/ObjectValue;->partialValue:Lcom/google/firestore/v1/Value;

    .line 175
    iget-object v2, p0, Lcom/google/firebase/firestore/model/ObjectValue;->overlayMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 177
    :cond_2
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    return-object v0
.end method

.method private extractFieldMask(Lcom/google/firestore/v1/MapValue;)Lcom/google/firebase/firestore/model/mutation/FieldMask;
    .locals 4

    .line 96
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 97
    invoke-virtual {p1}, Lcom/google/firestore/v1/MapValue;->getFieldsMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 98
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/firebase/firestore/model/FieldPath;->fromSingleSegment(Ljava/lang/String;)Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v2

    .line 99
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firestore/v1/Value;

    invoke-static {v3}, Lcom/google/firebase/firestore/model/Values;->isMapValue(Lcom/google/firestore/v1/Value;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 100
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Value;

    invoke-virtual {v1}, Lcom/google/firestore/v1/Value;->getMapValue()Lcom/google/firestore/v1/MapValue;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/model/ObjectValue;->extractFieldMask(Lcom/google/firestore/v1/MapValue;)Lcom/google/firebase/firestore/model/mutation/FieldMask;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/mutation/FieldMask;->getMask()Ljava/util/Set;

    move-result-object v1

    .line 102
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 104
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/FieldPath;

    .line 108
    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/model/FieldPath;->append(Lcom/google/firebase/firestore/model/BasePath;)Lcom/google/firebase/firestore/model/BasePath;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/FieldPath;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 112
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    :cond_3
    invoke-static {v0}, Lcom/google/firebase/firestore/model/mutation/FieldMask;->fromSet(Ljava/util/Set;)Lcom/google/firebase/firestore/model/mutation/FieldMask;

    move-result-object p1

    return-object p1
.end method

.method private static extractNestedValue(Lcom/google/firestore/v1/Value;Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firestore/v1/Value;
    .locals 3

    .line 130
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldPath;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 133
    :goto_0
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldPath;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    .line 134
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getMapValue()Lcom/google/firestore/v1/MapValue;

    move-result-object p0

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/model/FieldPath;->getSegment(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/google/firestore/v1/MapValue;->getFieldsOrDefault(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;

    move-result-object p0

    .line 135
    invoke-static {p0}, Lcom/google/firebase/firestore/model/Values;->isMapValue(Lcom/google/firestore/v1/Value;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {p0}, Lcom/google/firestore/v1/Value;->getMapValue()Lcom/google/firestore/v1/MapValue;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldPath;->getLastSegment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/google/firestore/v1/MapValue;->getFieldsOrDefault(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;

    move-result-object p0

    return-object p0
.end method

.method public static fromMap(Ljava/util/Map;)Lcom/google/firebase/firestore/model/ObjectValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;)",
            "Lcom/google/firebase/firestore/model/ObjectValue;"
        }
    .end annotation

    .line 68
    new-instance v0, Lcom/google/firebase/firestore/model/ObjectValue;

    .line 69
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v1

    invoke-static {}, Lcom/google/firestore/v1/MapValue;->newBuilder()Lcom/google/firestore/v1/MapValue$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/firestore/v1/MapValue$Builder;->putAllFields(Ljava/util/Map;)Lcom/google/firestore/v1/MapValue$Builder;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/firestore/v1/Value$Builder;->setMapValue(Lcom/google/firestore/v1/MapValue$Builder;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Value;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/model/ObjectValue;-><init>(Lcom/google/firestore/v1/Value;)V

    return-object v0
.end method

.method private setOverlay(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firestore/v1/Value;)V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/google/firebase/firestore/model/ObjectValue;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/firestore/model/ObjectValue;->mergedValue:Lcom/google/firestore/v1/Value;

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/google/firebase/firestore/model/ObjectValue;->mergedValue:Lcom/google/firestore/v1/Value;

    iput-object v1, p0, Lcom/google/firebase/firestore/model/ObjectValue;->partialValue:Lcom/google/firestore/v1/Value;

    const/4 v1, 0x0

    .line 223
    iput-object v1, p0, Lcom/google/firebase/firestore/model/ObjectValue;->mergedValue:Lcom/google/firestore/v1/Value;

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/firestore/model/ObjectValue;->overlayMap:Ljava/util/Map;

    invoke-static {v1, p1, p2}, Lcom/google/firebase/firestore/model/ObjectValue;->setOverlay(Ljava/util/Map;Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firestore/v1/Value;)V

    .line 226
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static setOverlay(Ljava/util/Map;Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firestore/v1/Value;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/firebase/firestore/model/FieldPath;",
            "Lcom/google/firestore/v1/Value;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 233
    :goto_0
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldPath;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 234
    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/model/FieldPath;->getSegment(I)Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 237
    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 239
    check-cast v2, Ljava/util/Map;

    :goto_1
    move-object p0, v2

    goto :goto_2

    .line 240
    :cond_0
    instance-of v3, v2, Lcom/google/firestore/v1/Value;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/google/firestore/v1/Value;

    .line 241
    invoke-virtual {v2}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v3

    sget-object v4, Lcom/google/firestore/v1/Value$ValueTypeCase;->MAP_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    if-ne v3, v4, :cond_1

    .line 243
    new-instance v3, Ljava/util/HashMap;

    .line 244
    invoke-virtual {v2}, Lcom/google/firestore/v1/Value;->getMapValue()Lcom/google/firestore/v1/MapValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firestore/v1/MapValue;->getFieldsMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 245
    invoke-interface {p0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v3

    goto :goto_2

    .line 249
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 250
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    :cond_2
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldPath;->getLastSegment()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clone()Lcom/google/firebase/firestore/model/ObjectValue;
    .locals 2

    .line 329
    new-instance v0, Lcom/google/firebase/firestore/model/ObjectValue;

    invoke-direct {p0}, Lcom/google/firebase/firestore/model/ObjectValue;->buildProto()Lcom/google/firestore/v1/Value;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/model/ObjectValue;-><init>(Lcom/google/firestore/v1/Value;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/ObjectValue;->clone()Lcom/google/firebase/firestore/model/ObjectValue;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lcom/google/firebase/firestore/model/FieldPath;)V
    .locals 3

    .line 190
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldPath;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Cannot delete field for empty path on ObjectValue"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 191
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/firestore/model/ObjectValue;->setOverlay(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firestore/v1/Value;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 310
    :cond_0
    instance-of v0, p1, Lcom/google/firebase/firestore/model/ObjectValue;

    if-eqz v0, :cond_1

    .line 311
    invoke-direct {p0}, Lcom/google/firebase/firestore/model/ObjectValue;->buildProto()Lcom/google/firestore/v1/Value;

    move-result-object v0

    check-cast p1, Lcom/google/firebase/firestore/model/ObjectValue;

    invoke-direct {p1}, Lcom/google/firebase/firestore/model/ObjectValue;->buildProto()Lcom/google/firestore/v1/Value;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/model/Values;->equals(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public get(Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firestore/v1/Value;
    .locals 1

    .line 125
    invoke-direct {p0}, Lcom/google/firebase/firestore/model/ObjectValue;->buildProto()Lcom/google/firestore/v1/Value;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/model/ObjectValue;->extractNestedValue(Lcom/google/firestore/v1/Value;Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firestore/v1/Value;

    move-result-object p1

    return-object p1
.end method

.method public getFieldMask()Lcom/google/firebase/firestore/model/mutation/FieldMask;
    .locals 1

    .line 92
    invoke-direct {p0}, Lcom/google/firebase/firestore/model/ObjectValue;->buildProto()Lcom/google/firestore/v1/Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->getMapValue()Lcom/google/firestore/v1/MapValue;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/model/ObjectValue;->extractFieldMask(Lcom/google/firestore/v1/MapValue;)Lcom/google/firebase/firestore/model/mutation/FieldMask;

    move-result-object v0

    return-object v0
.end method

.method public getFieldsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Lcom/google/firebase/firestore/model/ObjectValue;->buildProto()Lcom/google/firestore/v1/Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->getMapValue()Lcom/google/firestore/v1/MapValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/MapValue;->getFieldsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 318
    invoke-direct {p0}, Lcom/google/firebase/firestore/model/ObjectValue;->buildProto()Lcom/google/firestore/v1/Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Value;->hashCode()I

    move-result v0

    return v0
.end method

.method public set(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firestore/v1/Value;)V
    .locals 3

    .line 201
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldPath;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Cannot set field for empty path on ObjectValue"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 202
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/model/ObjectValue;->setOverlay(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firestore/v1/Value;)V

    return-void
.end method

.method public setAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/FieldPath;",
            "Lcom/google/firestore/v1/Value;",
            ">;)V"
        }
    .end annotation

    .line 206
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 207
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/FieldPath;

    .line 208
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 209
    invoke-virtual {p0, v1}, Lcom/google/firebase/firestore/model/ObjectValue;->delete(Lcom/google/firebase/firestore/model/FieldPath;)V

    goto :goto_0

    .line 211
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value;

    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/firestore/model/ObjectValue;->set(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firestore/v1/Value;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ObjectValue{internalValue="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/firebase/firestore/model/ObjectValue;->buildProto()Lcom/google/firestore/v1/Value;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/firestore/model/Values;->canonicalId(Lcom/google/firestore/v1/Value;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
