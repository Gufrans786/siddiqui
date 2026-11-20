.class public Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator$a;
    }
.end annotation


# static fields
.field private static final e:Landroid/os/Handler;


# instance fields
.field private a:Ljava/lang/Runnable;

.field private b:Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator$a;

.field private c:I

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$vxOTR0Wl0AyXT2stZYuXiKIA_qk(Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;)V
    .locals 0

    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;->c()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;->e:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(ILcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;->d:Ljava/util/Set;

    .line 5
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;->b:Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator$a;

    .line 6
    iput p1, p0, Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;->c:I

    return-void
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;->a:Ljava/lang/Runnable;

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;->b:Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator$a;

    invoke-interface {v0}, Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator$a;->a()V

    return-void
.end method


# virtual methods
.method a(Landroid/location/Location;)F
    .locals 2

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;->d:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;->d:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    const/4 v0, 0x5

    const/4 v1, 0x0

    if-le p1, v0, :cond_1

    .line 9
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;->d:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;->d:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v1, v0

    goto :goto_0

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;->d:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;->d:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    :cond_3
    return v1
.end method

.method a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "cancel stopTimeout timer"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->calendar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;->a:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method d()V
    .locals 4

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "will stop updating location in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;->c:I

    div-int/lit16 v2, v2, 0x3e8

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "min"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->calendar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;->a()V

    .line 3
    new-instance v0, Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator$$ExternalSyntheticLambda0;-><init>(Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;->a:Ljava/lang/Runnable;

    .line 6
    sget-object v1, Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;->e:Landroid/os/Handler;

    iget v2, p0, Lcom/transistorsoft/locationmanager/service/StopTimeoutEvaluator;->c:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
