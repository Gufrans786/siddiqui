.class public Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;
.super Ljava/lang/Object;
.source "ReactNativeFirebaseFirestoreQuery.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field appName:Ljava/lang/String;

.field databaseId:Ljava/lang/String;

.field query:Lcom/google/firebase/firestore/Query;


# direct methods
.method public static synthetic $r8$lambda$Jk9nb9tGG-9Hnmch77KrYqPHB1c(Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;Lcom/google/firebase/firestore/Source;)Lcom/facebook/react/bridge/WritableMap;
    .locals 0

    invoke-direct {p0, p1}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->lambda$get$0(Lcom/google/firebase/firestore/Source;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/firestore/Query;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->appName:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    .line 53
    invoke-direct {p0, p4}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->applyFilters(Lcom/facebook/react/bridge/ReadableArray;)V

    .line 54
    invoke-direct {p0, p5}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->applyOrders(Lcom/facebook/react/bridge/ReadableArray;)V

    .line 55
    invoke-direct {p0, p6}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->applyOptions(Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method private applyFilterQueries(Lcom/facebook/react/bridge/ReadableMap;)Lcom/google/firebase/firestore/Filter;
    .locals 7

    .line 140
    const-string v0, "fieldPath"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "operator"

    const/4 v3, 0x0

    if-eqz v1, :cond_b

    .line 142
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 143
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReadableMap;

    .line 144
    const-string v2, "_segments"

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReadableArray;

    .line 145
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    .line 146
    new-array v4, v2, [Ljava/lang/String;

    move v5, v3

    :goto_0
    if-ge v5, v2, :cond_0

    .line 149
    invoke-interface {v0, v5}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 151
    :cond_0
    invoke-static {v4}, Lcom/google/firebase/firestore/FieldPath;->of([Ljava/lang/String;)Lcom/google/firebase/firestore/FieldPath;

    move-result-object v0

    .line 152
    const-string/jumbo v2, "value"

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p1

    .line 154
    iget-object v2, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/Query;->getFirestore()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/bridge/ReadableArray;

    invoke-static {v2, p1}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreSerialize;->parseTypeMap(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/facebook/react/bridge/ReadableArray;)Ljava/lang/Object;

    move-result-object p1

    .line 156
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v4, -0x1

    sparse-switch v2, :sswitch_data_0

    :goto_1
    move v3, v4

    goto/16 :goto_2

    :sswitch_0
    const-string v2, "NOT_EQUAL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x9

    goto/16 :goto_2

    :sswitch_1
    const-string v2, "GREATER_THAN_OR_EQUAL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v3, 0x8

    goto :goto_2

    :sswitch_2
    const-string v2, "GREATER_THAN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x7

    goto :goto_2

    :sswitch_3
    const-string v2, "ARRAY_CONTAINS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x6

    goto :goto_2

    :sswitch_4
    const-string v2, "EQUAL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x5

    goto :goto_2

    :sswitch_5
    const-string v2, "IN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x4

    goto :goto_2

    :sswitch_6
    const-string v2, "ARRAY_CONTAINS_ANY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v3, 0x3

    goto :goto_2

    :sswitch_7
    const-string v2, "LESS_THAN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_1

    :cond_8
    const/4 v3, 0x2

    goto :goto_2

    :sswitch_8
    const-string v2, "NOT_IN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_1

    :cond_9
    const/4 v3, 0x1

    goto :goto_2

    :sswitch_9
    const-string v2, "LESS_THAN_OR_EQUAL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_1

    :cond_a
    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 181
    new-instance p1, Ljava/lang/Error;

    const-string v0, "Invalid operator"

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    .line 160
    :pswitch_0
    invoke-static {v0, p1}, Lcom/google/firebase/firestore/Filter;->notEqualTo(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;

    move-result-object p1

    return-object p1

    .line 168
    :pswitch_1
    invoke-static {v0, p1}, Lcom/google/firebase/firestore/Filter;->greaterThanOrEqualTo(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;

    move-result-object p1

    return-object p1

    .line 166
    :pswitch_2
    invoke-static {v0, p1}, Lcom/google/firebase/firestore/Filter;->greaterThan(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;

    move-result-object p1

    return-object p1

    .line 170
    :pswitch_3
    invoke-static {v0, p1}, Lcom/google/firebase/firestore/Filter;->arrayContains(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;

    move-result-object p1

    return-object p1

    .line 158
    :pswitch_4
    invoke-static {v0, p1}, Lcom/google/firebase/firestore/Filter;->equalTo(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;

    move-result-object p1

    return-object p1

    .line 176
    :pswitch_5
    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/Filter;->inArray(Lcom/google/firebase/firestore/FieldPath;Ljava/util/List;)Lcom/google/firebase/firestore/Filter;

    move-result-object p1

    return-object p1

    .line 173
    :pswitch_6
    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/Filter;->arrayContainsAny(Lcom/google/firebase/firestore/FieldPath;Ljava/util/List;)Lcom/google/firebase/firestore/Filter;

    move-result-object p1

    return-object p1

    .line 162
    :pswitch_7
    invoke-static {v0, p1}, Lcom/google/firebase/firestore/Filter;->lessThan(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;

    move-result-object p1

    return-object p1

    .line 179
    :pswitch_8
    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/Filter;->notInArray(Lcom/google/firebase/firestore/FieldPath;Ljava/util/List;)Lcom/google/firebase/firestore/Filter;

    move-result-object p1

    return-object p1

    .line 164
    :pswitch_9
    invoke-static {v0, p1}, Lcom/google/firebase/firestore/Filter;->lessThanOrEqualTo(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;

    move-result-object p1

    return-object p1

    .line 185
    :cond_b
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "queries"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/bridge/ReadableArray;

    .line 188
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 189
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    move v4, v3

    :goto_3
    if-ge v4, v2, :cond_c

    .line 191
    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v5

    .line 192
    invoke-direct {p0, v5}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->applyFilterQueries(Lcom/facebook/react/bridge/ReadableMap;)Lcom/google/firebase/firestore/Filter;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 195
    :cond_c
    const-string p1, "AND"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 196
    new-array p1, v3, [Lcom/google/firebase/firestore/Filter;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/firebase/firestore/Filter;

    invoke-static {p1}, Lcom/google/firebase/firestore/Filter;->and([Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Filter;

    move-result-object p1

    return-object p1

    .line 199
    :cond_d
    const-string p1, "OR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 200
    new-array p1, v3, [Lcom/google/firebase/firestore/Filter;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/firebase/firestore/Filter;

    invoke-static {p1}, Lcom/google/firebase/firestore/Filter;->or([Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Filter;

    move-result-object p1

    return-object p1

    .line 203
    :cond_e
    new-instance p1, Ljava/lang/Error;

    const-string v0, "Missing \'Filter\' instance return"

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_data_0
    .sparse-switch
        -0x7c157d90 -> :sswitch_9
        -0x766521cf -> :sswitch_8
        -0x42548379 -> :sswitch_7
        -0x1bd1800e -> :sswitch_6
        0x925 -> :sswitch_5
        0x3f26f14 -> :sswitch_4
        0x4018d65 -> :sswitch_3
        0x39f1dee6 -> :sswitch_2
        0x3af35af1 -> :sswitch_1
        0x3cf0ee88 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private applyFilters(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 68
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_c

    .line 69
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    .line 71
    const-string v3, "fieldPath"

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "operator"

    if-eqz v4, :cond_a

    .line 73
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v4, v3}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/bridge/ReadableArray;

    .line 74
    invoke-interface {v3}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 75
    new-array v4, v0, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 77
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-static {v3}, Lcom/google/firebase/firestore/FieldPath;->of([Ljava/lang/String;)Lcom/google/firebase/firestore/FieldPath;

    move-result-object v3

    .line 78
    invoke-interface {v2, v5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 79
    const-string/jumbo v5, "value"

    invoke-interface {v2, v5}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v2

    .line 80
    iget-object v5, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    invoke-virtual {v5}, Lcom/google/firebase/firestore/Query;->getFirestore()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v5

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/bridge/ReadableArray;

    invoke-static {v5, v2}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreSerialize;->parseTypeMap(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/facebook/react/bridge/ReadableArray;)Ljava/lang/Object;

    move-result-object v2

    .line 82
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, -0x1

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v5, "NOT_EQUAL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v6, 0x9

    goto/16 :goto_1

    :sswitch_1
    const-string v5, "GREATER_THAN_OR_EQUAL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v6, 0x8

    goto/16 :goto_1

    :sswitch_2
    const-string v5, "GREATER_THAN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x7

    goto :goto_1

    :sswitch_3
    const-string v5, "ARRAY_CONTAINS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x6

    goto :goto_1

    :sswitch_4
    const-string v5, "EQUAL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v6, 0x5

    goto :goto_1

    :sswitch_5
    const-string v5, "IN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    const/4 v6, 0x4

    goto :goto_1

    :sswitch_6
    const-string v5, "ARRAY_CONTAINS_ANY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    const/4 v6, 0x3

    goto :goto_1

    :sswitch_7
    const-string v5, "LESS_THAN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_1

    :cond_7
    const/4 v6, 0x2

    goto :goto_1

    :sswitch_8
    const-string v5, "NOT_IN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_1

    :cond_8
    const/4 v6, 0x1

    goto :goto_1

    :sswitch_9
    const-string v5, "LESS_THAN_OR_EQUAL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_1

    :cond_9
    move v6, v0

    :goto_1
    packed-switch v6, :pswitch_data_0

    goto/16 :goto_2

    .line 87
    :pswitch_0
    iget-object v4, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/FieldPath;

    invoke-virtual {v4, v3, v2}, Lcom/google/firebase/firestore/Query;->whereNotEqualTo(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object v2

    iput-object v2, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    goto/16 :goto_2

    .line 95
    :pswitch_1
    iget-object v4, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    .line 97
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/FieldPath;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 96
    invoke-virtual {v4, v3, v2}, Lcom/google/firebase/firestore/Query;->whereGreaterThanOrEqualTo(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object v2

    iput-object v2, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    goto/16 :goto_2

    .line 90
    :pswitch_2
    iget-object v4, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    .line 92
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/FieldPath;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 91
    invoke-virtual {v4, v3, v2}, Lcom/google/firebase/firestore/Query;->whereGreaterThan(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object v2

    iput-object v2, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    goto/16 :goto_2

    .line 110
    :pswitch_3
    iget-object v4, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    .line 112
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/FieldPath;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 111
    invoke-virtual {v4, v3, v2}, Lcom/google/firebase/firestore/Query;->whereArrayContains(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object v2

    iput-object v2, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    goto/16 :goto_2

    .line 84
    :pswitch_4
    iget-object v4, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/FieldPath;

    invoke-virtual {v4, v3, v2}, Lcom/google/firebase/firestore/Query;->whereEqualTo(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object v2

    iput-object v2, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    goto/16 :goto_2

    .line 121
    :pswitch_5
    iget-object v4, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    .line 123
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/FieldPath;

    check-cast v2, Ljava/util/List;

    .line 124
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 122
    invoke-virtual {v4, v3, v2}, Lcom/google/firebase/firestore/Query;->whereIn(Lcom/google/firebase/firestore/FieldPath;Ljava/util/List;)Lcom/google/firebase/firestore/Query;

    move-result-object v2

    iput-object v2, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    goto :goto_2

    .line 115
    :pswitch_6
    iget-object v4, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    .line 117
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/FieldPath;

    check-cast v2, Ljava/util/List;

    .line 118
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 116
    invoke-virtual {v4, v3, v2}, Lcom/google/firebase/firestore/Query;->whereArrayContainsAny(Lcom/google/firebase/firestore/FieldPath;Ljava/util/List;)Lcom/google/firebase/firestore/Query;

    move-result-object v2

    iput-object v2, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    goto :goto_2

    .line 100
    :pswitch_7
    iget-object v4, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    .line 102
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/FieldPath;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 101
    invoke-virtual {v4, v3, v2}, Lcom/google/firebase/firestore/Query;->whereLessThan(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object v2

    iput-object v2, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    goto :goto_2

    .line 127
    :pswitch_8
    iget-object v4, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    .line 129
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/FieldPath;

    check-cast v2, Ljava/util/List;

    .line 130
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 128
    invoke-virtual {v4, v3, v2}, Lcom/google/firebase/firestore/Query;->whereNotIn(Lcom/google/firebase/firestore/FieldPath;Ljava/util/List;)Lcom/google/firebase/firestore/Query;

    move-result-object v2

    iput-object v2, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    goto :goto_2

    .line 105
    :pswitch_9
    iget-object v4, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    .line 107
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/FieldPath;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 106
    invoke-virtual {v4, v3, v2}, Lcom/google/firebase/firestore/Query;->whereLessThanOrEqualTo(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object v2

    iput-object v2, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    goto :goto_2

    .line 133
    :cond_a
    invoke-interface {v2, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "queries"

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 134
    iget-object v3, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    invoke-direct {p0, v2}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->applyFilterQueries(Lcom/facebook/react/bridge/ReadableMap;)Lcom/google/firebase/firestore/Filter;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/firebase/firestore/Query;->where(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Query;

    move-result-object v2

    iput-object v2, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    :cond_b
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_c
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7c157d90 -> :sswitch_9
        -0x766521cf -> :sswitch_8
        -0x42548379 -> :sswitch_7
        -0x1bd1800e -> :sswitch_6
        0x925 -> :sswitch_5
        0x3f26f14 -> :sswitch_4
        0x4018d65 -> :sswitch_3
        0x39f1dee6 -> :sswitch_2
        0x3af35af1 -> :sswitch_1
        0x3cf0ee88 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private applyOptions(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 4

    .line 231
    const-string v0, "limit"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 233
    iget-object v1, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/firestore/Query;->limit(J)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    iput-object v0, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    .line 236
    :cond_0
    const-string v0, "limitToLast"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 238
    iget-object v1, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/firestore/Query;->limitToLast(J)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    iput-object v0, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    .line 241
    :cond_1
    const-string/jumbo v0, "startAt"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 242
    iget-object v1, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    .line 243
    invoke-virtual {v1}, Lcom/google/firebase/firestore/Query;->getFirestore()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v1

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    invoke-static {v1, v0}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreSerialize;->parseReadableArray(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/List;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/google/firebase/firestore/Query;->startAt([Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    iput-object v0, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    .line 247
    :cond_2
    const-string/jumbo v0, "startAfter"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 248
    iget-object v1, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    .line 249
    invoke-virtual {v1}, Lcom/google/firebase/firestore/Query;->getFirestore()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v1

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    invoke-static {v1, v0}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreSerialize;->parseReadableArray(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/List;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/google/firebase/firestore/Query;->startAfter([Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    iput-object v0, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    .line 253
    :cond_3
    const-string v0, "endAt"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 254
    iget-object v1, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/Query;->getFirestore()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v1

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    invoke-static {v1, v0}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreSerialize;->parseReadableArray(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/List;

    move-result-object v0

    .line 255
    iget-object v1, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/google/firebase/firestore/Query;->endAt([Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    iput-object v0, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    .line 258
    :cond_4
    const-string v0, "endBefore"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 259
    iget-object v1, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    .line 260
    invoke-virtual {v1}, Lcom/google/firebase/firestore/Query;->getFirestore()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v1

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p1

    invoke-static {v1, p1}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreSerialize;->parseReadableArray(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/List;

    move-result-object p1

    .line 261
    iget-object v0, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/Query;->endBefore([Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object p1

    iput-object p1, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    :cond_5
    return-void
.end method

.method private applyOrders(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 4

    .line 207
    invoke-static {p1}, Lio/invertase/firebase/common/RCTConvertFirebase;->toArrayList(Lcom/facebook/react/bridge/ReadableArray;)Ljava/util/List;

    move-result-object p1

    .line 209
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 210
    check-cast v0, Ljava/util/Map;

    .line 212
    const-string v1, "fieldPath"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/util/List;

    const-string v3, "direction"

    if-eqz v2, :cond_0

    .line 213
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 214
    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 215
    invoke-static {v1}, Lcom/google/firebase/firestore/FieldPath;->of([Ljava/lang/String;)Lcom/google/firebase/firestore/FieldPath;

    move-result-object v1

    .line 216
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
    iget-object v2, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    .line 219
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/FieldPath;

    invoke-static {v0}, Lcom/google/firebase/firestore/Query$Direction;->valueOf(Ljava/lang/String;)Lcom/google/firebase/firestore/Query$Direction;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/google/firebase/firestore/Query;->orderBy(Lcom/google/firebase/firestore/FieldPath;Lcom/google/firebase/firestore/Query$Direction;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    iput-object v0, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    goto :goto_0

    .line 221
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 222
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 224
    iget-object v2, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    .line 225
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/firebase/firestore/Query$Direction;->valueOf(Ljava/lang/String;)Lcom/google/firebase/firestore/Query$Direction;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/google/firebase/firestore/Query;->orderBy(Ljava/lang/String;Lcom/google/firebase/firestore/Query$Direction;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    iput-object v0, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$get$0(Lcom/google/firebase/firestore/Source;)Lcom/facebook/react/bridge/WritableMap;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->query:Lcom/google/firebase/firestore/Query;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/Query;->get(Lcom/google/firebase/firestore/Source;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/QuerySnapshot;

    .line 63
    iget-object v0, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->appName:Ljava/lang/String;

    iget-object v1, p0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;->databaseId:Ljava/lang/String;

    const-string v2, "get"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p1, v3}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreSerialize;->snapshotToWritableMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/firestore/QuerySnapshot;Lcom/google/firebase/firestore/MetadataChanges;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public get(Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/Source;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/firebase/firestore/Source;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/facebook/react/bridge/WritableMap;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v0, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery$$ExternalSyntheticLambda0;-><init>(Lio/invertase/firebase/firestore/ReactNativeFirebaseFirestoreQuery;Lcom/google/firebase/firestore/Source;)V

    invoke-static {p1, v0}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
