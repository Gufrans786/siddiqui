.class Lcom/transistorsoft/locationmanager/crash/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:D

.field private c:D


# direct methods
.method constructor <init>(JDD)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3e8

    .line 2
    div-long/2addr p1, v0

    iput-wide p1, p0, Lcom/transistorsoft/locationmanager/crash/b;->a:J

    .line 3
    iput-wide p3, p0, Lcom/transistorsoft/locationmanager/crash/b;->b:D

    .line 4
    iput-wide p5, p0, Lcom/transistorsoft/locationmanager/crash/b;->c:D

    return-void
.end method


# virtual methods
.method a()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transistorsoft/locationmanager/crash/b;->b:D

    return-wide v0
.end method

.method b()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transistorsoft/locationmanager/crash/b;->c:D

    return-wide v0
.end method

.method c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transistorsoft/locationmanager/crash/b;->a:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/transistorsoft/locationmanager/crash/b;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/transistorsoft/locationmanager/crash/b;->b:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/transistorsoft/locationmanager/crash/b;->c:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
