.class Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$ExecutedJob;
.super Ljava/lang/Object;
.source "FetchJobService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/tsbackgroundfetch/FetchJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExecutedJob"
.end annotation


# static fields
.field private static final OFFSET_TIME:J = 0x1388L


# instance fields
.field private final mTaskId:Ljava/lang/String;

.field private final mTimestamp:J


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$ExecutedJob;->mTaskId:Ljava/lang/String;

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$ExecutedJob;->mTimestamp:J

    return-void
.end method


# virtual methods
.method isDuplicate(Ljava/lang/String;)Z
    .locals 5

    .line 94
    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$ExecutedJob;->mTaskId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 97
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$ExecutedJob;->mTimestamp:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long p1, v1, v3

    if-gez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[LastJob taskId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$ExecutedJob;->mTaskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/transistorsoft/tsbackgroundfetch/FetchJobService$ExecutedJob;->mTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
