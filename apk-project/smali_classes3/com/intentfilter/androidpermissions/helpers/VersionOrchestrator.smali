.class public Lcom/intentfilter/androidpermissions/helpers/VersionOrchestrator;
.super Ljava/lang/Object;
.source "VersionOrchestrator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs getImmutablePendingIntentFlags([I)I
    .locals 4

    .line 13
    array-length v0, p0

    const/high16 v1, 0x4000000

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p0, v2

    or-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method
