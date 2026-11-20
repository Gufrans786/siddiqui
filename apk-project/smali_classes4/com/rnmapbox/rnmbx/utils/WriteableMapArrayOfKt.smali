.class public final Lcom/rnmapbox/rnmbx/utils/WriteableMapArrayOfKt;
.super Ljava/lang/Object;
.source "writeableMapArrayOf.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nwriteableMapArrayOf.kt\nKotlin\n*S Kotlin\n*F\n+ 1 writeableMapArrayOf.kt\ncom/rnmapbox/rnmbx/utils/WriteableMapArrayOfKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,76:1\n11228#2:77\n11563#2,3:78\n11228#2:85\n11563#2,3:86\n11228#2:93\n11563#2,3:94\n37#3:81\n36#3,3:82\n37#3:89\n36#3,3:90\n37#3:97\n36#3,3:98\n*S KotlinDebug\n*F\n+ 1 writeableMapArrayOf.kt\ncom/rnmapbox/rnmbx/utils/WriteableMapArrayOfKt\n*L\n21#1:77\n21#1:78,3\n54#1:85\n54#1:86,3\n67#1:93\n67#1:94,3\n21#1:81\n21#1:82,3\n54#1:89\n54#1:90,3\n67#1:97\n67#1:98,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u001a3\u0010\u0000\u001a\u00020\u00012&\u0010\u0002\u001a\u0014\u0012\u0010\u0008\u0001\u0012\u000c\u0012\u0004\u0012\u00020\u0005\u0012\u0002\u0008\u00030\u00040\u0003\"\u000c\u0012\u0004\u0012\u00020\u0005\u0012\u0002\u0008\u00030\u0004\u00a2\u0006\u0002\u0010\u0006\u001a\u001f\u0010\u0007\u001a\u00020\u00082\u0012\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\t0\u0003\"\u00020\t\u00a2\u0006\u0002\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "writableMapOf",
        "Lcom/facebook/react/bridge/WritableMap;",
        "values",
        "",
        "Lkotlin/Pair;",
        "",
        "([Lkotlin/Pair;)Lcom/facebook/react/bridge/WritableMap;",
        "writableArrayOf",
        "Lcom/facebook/react/bridge/WritableArray;",
        "",
        "([Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableArray;",
        "rnmapbox_maps_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final varargs writableArrayOf([Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableArray;
    .locals 10

    const-string/jumbo v0, "values"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    const-string v1, "createArray(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_17

    aget-object v4, p0, v3

    if-nez v4, :cond_0

    .line 47
    invoke-interface {v0}, Lcom/facebook/react/bridge/WritableArray;->pushNull()V

    goto/16 :goto_3

    .line 48
    :cond_0
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_1

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/WritableArray;->pushBoolean(Z)V

    goto/16 :goto_3

    .line 49
    :cond_1
    instance-of v5, v4, Ljava/lang/Double;

    if-eqz v5, :cond_2

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-interface {v0, v4, v5}, Lcom/facebook/react/bridge/WritableArray;->pushDouble(D)V

    goto/16 :goto_3

    .line 50
    :cond_2
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    goto/16 :goto_3

    .line 51
    :cond_3
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    goto/16 :goto_3

    .line 52
    :cond_4
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_5

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 53
    :cond_5
    instance-of v5, v4, Ljava/util/Map;

    if-eqz v5, :cond_6

    check-cast v4, Ljava/util/Map;

    invoke-static {v4}, Lcom/rnmapbox/rnmbx/utils/extensions/MapKt;->toStringKeyPairs(Ljava/util/Map;)[Lkotlin/Pair;

    move-result-object v4

    array-length v5, v4

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lkotlin/Pair;

    invoke-static {v4}, Lcom/rnmapbox/rnmbx/utils/WriteableMapArrayOfKt;->writableMapOf([Lkotlin/Pair;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto/16 :goto_3

    .line 54
    :cond_6
    instance-of v5, v4, [Ljava/lang/Object;

    const-string v6, "null cannot be cast to non-null type kotlin.Any"

    if-eqz v5, :cond_8

    check-cast v4, [Ljava/lang/Object;

    .line 85
    new-instance v5, Ljava/util/ArrayList;

    array-length v7, v4

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .line 86
    array-length v7, v4

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_7

    aget-object v9, v4, v8

    .line 54
    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-interface {v5, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 88
    :cond_7
    check-cast v5, Ljava/util/List;

    .line 85
    check-cast v5, Ljava/util/Collection;

    .line 92
    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v5, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .line 54
    array-length v5, v4

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/rnmapbox/rnmbx/utils/WriteableMapArrayOfKt;->writableArrayOf([Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/WritableArray;->pushArray(Lcom/facebook/react/bridge/ReadableArray;)V

    goto/16 :goto_3

    .line 55
    :cond_8
    instance-of v5, v4, Lcom/facebook/react/bridge/WritableMap;

    if-eqz v5, :cond_9

    check-cast v4, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto/16 :goto_3

    .line 56
    :cond_9
    instance-of v5, v4, Lcom/facebook/react/bridge/WritableArray;

    if-eqz v5, :cond_a

    check-cast v4, Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/WritableArray;->pushArray(Lcom/facebook/react/bridge/ReadableArray;)V

    goto/16 :goto_3

    .line 57
    :cond_a
    instance-of v5, v4, Lcom/mapbox/bindgen/Value;

    if-eqz v5, :cond_16

    .line 58
    check-cast v4, Lcom/mapbox/bindgen/Value;

    invoke-virtual {v4}, Lcom/mapbox/bindgen/Value;->getContents()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_b

    .line 60
    invoke-interface {v0}, Lcom/facebook/react/bridge/WritableArray;->pushNull()V

    goto/16 :goto_3

    .line 61
    :cond_b
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_c

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/WritableArray;->pushBoolean(Z)V

    goto/16 :goto_3

    .line 62
    :cond_c
    instance-of v5, v4, Ljava/lang/Double;

    if-eqz v5, :cond_d

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-interface {v0, v4, v5}, Lcom/facebook/react/bridge/WritableArray;->pushDouble(D)V

    goto/16 :goto_3

    .line 63
    :cond_d
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_e

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    goto/16 :goto_3

    .line 64
    :cond_e
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_f

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    goto/16 :goto_3

    .line 65
    :cond_f
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_10

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    goto :goto_3

    .line 66
    :cond_10
    instance-of v5, v4, Ljava/util/Map;

    if-eqz v5, :cond_11

    check-cast v4, Ljava/util/Map;

    invoke-static {v4}, Lcom/rnmapbox/rnmbx/utils/extensions/MapKt;->toStringKeyPairs(Ljava/util/Map;)[Lkotlin/Pair;

    move-result-object v4

    array-length v5, v4

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lkotlin/Pair;

    invoke-static {v4}, Lcom/rnmapbox/rnmbx/utils/WriteableMapArrayOfKt;->writableMapOf([Lkotlin/Pair;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_3

    .line 67
    :cond_11
    instance-of v5, v4, [Ljava/lang/Object;

    if-eqz v5, :cond_13

    check-cast v4, [Ljava/lang/Object;

    .line 93
    new-instance v5, Ljava/util/ArrayList;

    array-length v7, v4

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .line 94
    array-length v7, v4

    move v8, v2

    :goto_2
    if-ge v8, v7, :cond_12

    aget-object v9, v4, v8

    .line 67
    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-interface {v5, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 96
    :cond_12
    check-cast v5, Ljava/util/List;

    .line 93
    check-cast v5, Ljava/util/Collection;

    .line 100
    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v5, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .line 67
    array-length v5, v4

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/rnmapbox/rnmbx/utils/WriteableMapArrayOfKt;->writableArrayOf([Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/WritableArray;->pushArray(Lcom/facebook/react/bridge/ReadableArray;)V

    goto :goto_3

    .line 68
    :cond_13
    instance-of v5, v4, Lcom/facebook/react/bridge/WritableMap;

    if-eqz v5, :cond_14

    check-cast v4, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_3

    .line 69
    :cond_14
    instance-of v5, v4, Lcom/facebook/react/bridge/WritableArray;

    if-eqz v5, :cond_15

    check-cast v4, Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/WritableArray;->pushArray(Lcom/facebook/react/bridge/ReadableArray;)V

    :cond_15
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 72
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported value type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    return-object v0
.end method

.method public static final varargs writableMapOf([Lkotlin/Pair;)Lcom/facebook/react/bridge/WritableMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/facebook/react/bridge/WritableMap;"
        }
    .end annotation

    const-string/jumbo v0, "values"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "createMap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_14

    aget-object v4, p0, v3

    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 14
    invoke-interface {v0, v5}, Lcom/facebook/react/bridge/WritableMap;->putNull(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 15
    :cond_0
    instance-of v6, v4, Ljava/lang/Boolean;

    if-eqz v6, :cond_1

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v0, v5, v4}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 16
    :cond_1
    instance-of v6, v4, Ljava/lang/Double;

    if-eqz v6, :cond_2

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-interface {v0, v5, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    goto/16 :goto_2

    .line 17
    :cond_2
    instance-of v6, v4, Ljava/lang/Integer;

    if-eqz v6, :cond_3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-interface {v0, v5, v4}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 18
    :cond_3
    instance-of v6, v4, Ljava/lang/Long;

    if-eqz v6, :cond_4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    long-to-int v4, v6

    invoke-interface {v0, v5, v4}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 19
    :cond_4
    instance-of v6, v4, Ljava/lang/String;

    if-eqz v6, :cond_5

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v5, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 20
    :cond_5
    instance-of v6, v4, Ljava/util/Map;

    if-eqz v6, :cond_6

    check-cast v4, Ljava/util/Map;

    invoke-static {v4}, Lcom/rnmapbox/rnmbx/utils/extensions/MapKt;->toStringKeyPairs(Ljava/util/Map;)[Lkotlin/Pair;

    move-result-object v4

    array-length v6, v4

    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lkotlin/Pair;

    invoke-static {v4}, Lcom/rnmapbox/rnmbx/utils/WriteableMapArrayOfKt;->writableMapOf([Lkotlin/Pair;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v5, v4}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    goto/16 :goto_2

    .line 21
    :cond_6
    instance-of v6, v4, [Ljava/lang/Object;

    if-eqz v6, :cond_8

    check-cast v4, [Ljava/lang/Object;

    .line 77
    new-instance v6, Ljava/util/ArrayList;

    array-length v7, v4

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v6, Ljava/util/Collection;

    .line 78
    array-length v7, v4

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_7

    aget-object v9, v4, v8

    .line 21
    const-string v10, "null cannot be cast to non-null type kotlin.Any"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-interface {v6, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 80
    :cond_7
    check-cast v6, Ljava/util/List;

    .line 77
    check-cast v6, Ljava/util/Collection;

    .line 84
    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v6, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .line 21
    array-length v6, v4

    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/rnmapbox/rnmbx/utils/WriteableMapArrayOfKt;->writableArrayOf([Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v0, v5, v4}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    goto/16 :goto_2

    .line 22
    :cond_8
    instance-of v6, v4, Lcom/facebook/react/bridge/WritableMap;

    if-eqz v6, :cond_9

    check-cast v4, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v5, v4}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    goto/16 :goto_2

    .line 23
    :cond_9
    instance-of v6, v4, Lcom/facebook/react/bridge/WritableArray;

    if-eqz v6, :cond_a

    check-cast v4, Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v0, v5, v4}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    goto/16 :goto_2

    .line 24
    :cond_a
    instance-of v6, v4, Lcom/mapbox/bindgen/Value;

    if-eqz v6, :cond_13

    .line 25
    check-cast v4, Lcom/mapbox/bindgen/Value;

    invoke-virtual {v4}, Lcom/mapbox/bindgen/Value;->getContents()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_b

    .line 27
    invoke-interface {v0, v5}, Lcom/facebook/react/bridge/WritableMap;->putNull(Ljava/lang/String;)V

    goto :goto_2

    .line 28
    :cond_b
    instance-of v6, v4, Ljava/lang/Boolean;

    if-eqz v6, :cond_c

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v0, v5, v4}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    .line 29
    :cond_c
    instance-of v6, v4, Ljava/lang/Double;

    if-eqz v6, :cond_d

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-interface {v0, v5, v6, v7}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    goto :goto_2

    .line 30
    :cond_d
    instance-of v6, v4, Ljava/lang/Integer;

    if-eqz v6, :cond_e

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-interface {v0, v5, v4}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 31
    :cond_e
    instance-of v6, v4, Ljava/lang/Long;

    if-eqz v6, :cond_f

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    long-to-int v4, v6

    invoke-interface {v0, v5, v4}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 32
    :cond_f
    instance-of v6, v4, Ljava/lang/String;

    if-eqz v6, :cond_10

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v5, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 33
    :cond_10
    instance-of v6, v4, Lcom/facebook/react/bridge/WritableMap;

    if-eqz v6, :cond_11

    check-cast v4, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v5, v4}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_2

    .line 34
    :cond_11
    instance-of v6, v4, Lcom/facebook/react/bridge/WritableArray;

    if-eqz v6, :cond_12

    check-cast v4, Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v0, v5, v4}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    :cond_12
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 37
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported value type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for key ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    return-object v0
.end method
