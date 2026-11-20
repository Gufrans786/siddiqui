.class public Lcom/transistorsoft/locationmanager/crash/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transistorsoft/locationmanager/crash/a$a;
    }
.end annotation


# static fields
.field private static final a:D = 9.80665

.field private static final b:D = 50.0

.field private static final c:D = 45.0

.field private static final d:J = 0x64L

.field private static e:Lcom/transistorsoft/locationmanager/crash/a; = null

.field private static final f:I = 0xf4240

.field private static final g:D = 23.0

.field private static final h:D = 18.0

.field private static final i:D = 65.5


# instance fields
.field private final A:Ljava/lang/Runnable;

.field private final B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/crash/b;",
            ">;"
        }
    .end annotation
.end field

.field private final C:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final D:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private E:Ljava/lang/Long;

.field private F:Ljava/lang/Long;

.field private G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Lcom/transistorsoft/locationmanager/crash/a$a;",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation
.end field

.field private j:Landroid/content/Context;

.field private k:Landroid/hardware/SensorManager;

.field private final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private m:D

.field private n:D

.field private o:D

.field private p:D

.field private q:D

.field private r:D

.field private s:J

.field private t:J

.field private u:J

.field private final v:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final w:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final x:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final y:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final z:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$Qyj86Gvjs4rdmL_QGcbWR2b0cIA(Lcom/transistorsoft/locationmanager/crash/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/crash/a;->c()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/crash/a;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    .line 4
    iput-wide v2, p0, Lcom/transistorsoft/locationmanager/crash/a;->m:D

    const-wide/high16 v4, 0x4012000000000000L    # 4.5

    .line 5
    iput-wide v4, p0, Lcom/transistorsoft/locationmanager/crash/a;->n:D

    .line 6
    iput-wide v2, p0, Lcom/transistorsoft/locationmanager/crash/a;->o:D

    .line 7
    iput-wide v4, p0, Lcom/transistorsoft/locationmanager/crash/a;->p:D

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    .line 8
    iput-wide v2, p0, Lcom/transistorsoft/locationmanager/crash/a;->q:D

    .line 9
    iput-wide v2, p0, Lcom/transistorsoft/locationmanager/crash/a;->r:D

    const-wide/16 v2, 0x0

    .line 10
    iput-wide v2, p0, Lcom/transistorsoft/locationmanager/crash/a;->s:J

    .line 11
    iput-wide v2, p0, Lcom/transistorsoft/locationmanager/crash/a;->t:J

    .line 12
    iput-wide v2, p0, Lcom/transistorsoft/locationmanager/crash/a;->u:J

    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/crash/a;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/crash/a;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/crash/a;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/crash/a;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/crash/a;->z:Landroid/os/Handler;

    .line 19
    new-instance v0, Lcom/transistorsoft/locationmanager/crash/a$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transistorsoft/locationmanager/crash/a$$ExternalSyntheticLambda0;-><init>(Lcom/transistorsoft/locationmanager/crash/a;)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/crash/a;->A:Ljava/lang/Runnable;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/crash/a;->B:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/crash/a;->C:Ljava/util/concurrent/atomic/AtomicReference;

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/crash/a;->D:Ljava/util/concurrent/atomic/AtomicReference;

    const-wide/16 v0, 0x3e8

    .line 240
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/crash/a;->F:Ljava/lang/Long;

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/crash/a;->G:Ljava/util/List;

    .line 242
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/crash/a;->j:Landroid/content/Context;

    return-void
.end method

.method private a()D
    .locals 15

    .line 52
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/crash/a;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/crash/a;->G:Ljava/util/List;

    add-int/lit8 v2, v0, -0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 58
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/crash/a;->G:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 60
    sget-object v2, Lcom/transistorsoft/locationmanager/crash/a$a;->a:Lcom/transistorsoft/locationmanager/crash/a$a;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    mul-double/2addr v3, v5

    .line 61
    sget-object v5, Lcom/transistorsoft/locationmanager/crash/a$a;->b:Lcom/transistorsoft/locationmanager/crash/a$a;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    mul-double/2addr v6, v8

    .line 62
    sget-object v8, Lcom/transistorsoft/locationmanager/crash/a$a;->c:Lcom/transistorsoft/locationmanager/crash/a$a;

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Double;

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    mul-double/2addr v9, v11

    add-double/2addr v3, v6

    add-double/2addr v3, v9

    .line 65
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    .line 66
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Double;

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    .line 67
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    add-double/2addr v6, v11

    add-double/2addr v6, v13

    .line 68
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 70
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    .line 71
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    .line 72
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v1, v11

    add-double/2addr v1, v8

    .line 73
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v6, v0

    div-double/2addr v3, v6

    .line 77
    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    const-wide v2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private a(DDD)D
    .locals 0

    .line 87
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide p3

    add-double/2addr p1, p3

    invoke-static {p5, p6}, Ljava/lang/Math;->abs(D)D

    move-result-wide p3

    add-double/2addr p1, p3

    return-wide p1
.end method

.method public static a(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/crash/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/crash/a;->e:Lcom/transistorsoft/locationmanager/crash/a;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transistorsoft/locationmanager/crash/a;->b(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/crash/a;

    move-result-object p0

    sput-object p0, Lcom/transistorsoft/locationmanager/crash/a;->e:Lcom/transistorsoft/locationmanager/crash/a;

    .line 4
    :cond_0
    sget-object p0, Lcom/transistorsoft/locationmanager/crash/a;->e:Lcom/transistorsoft/locationmanager/crash/a;

    return-object p0
.end method

.method private a(DDDD)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/crash/a;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/crash/a;->G:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 81
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 82
    sget-object v1, Lcom/transistorsoft/locationmanager/crash/a$a;->a:Lcom/transistorsoft/locationmanager/crash/a$a;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object p1, Lcom/transistorsoft/locationmanager/crash/a$a;->b:Lcom/transistorsoft/locationmanager/crash/a$a;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object p1, Lcom/transistorsoft/locationmanager/crash/a$a;->c:Lcom/transistorsoft/locationmanager/crash/a$a;

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object p1, Lcom/transistorsoft/locationmanager/crash/a$a;->d:Lcom/transistorsoft/locationmanager/crash/a$a;

    invoke-static {p7, p8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/crash/a;->G:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(J)V
    .locals 9

    .line 48
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/crash/a;->B:Ljava/util/List;

    monitor-enter v1

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/crash/a;->B:Ljava/util/List;

    new-instance v2, Lcom/transistorsoft/locationmanager/crash/b;

    iget-object v3, p0, Lcom/transistorsoft/locationmanager/crash/a;->C:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    iget-object v3, p0, Lcom/transistorsoft/locationmanager/crash/a;->D:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    move-wide v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/transistorsoft/locationmanager/crash/b;-><init>(JDD)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 51
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a([FJ)V
    .locals 8

    const/4 v0, 0x0

    .line 5
    aget v1, p1, v0

    float-to-double v1, v1

    const/4 v3, 0x1

    .line 6
    aget v4, p1, v3

    float-to-double v4, v4

    const/4 v6, 0x2

    .line 7
    aget p1, p1, v6

    float-to-double v6, p1

    mul-double/2addr v1, v1

    mul-double/2addr v4, v4

    add-double/2addr v1, v4

    mul-double/2addr v6, v6

    add-double/2addr v1, v6

    .line 9
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide v4, 0x40239d0140000000L    # 9.806650161743164

    div-double/2addr v1, v4

    .line 10
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/crash/a;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    .line 11
    iget-object v4, p0, Lcom/transistorsoft/locationmanager/crash/a;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez p1, :cond_0

    if-eqz v4, :cond_1

    .line 14
    :cond_0
    iget-object v4, p0, Lcom/transistorsoft/locationmanager/crash/a;->C:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 17
    :cond_1
    iget-wide v4, p0, Lcom/transistorsoft/locationmanager/crash/a;->m:D

    cmpl-double v4, v1, v4

    if-gtz v4, :cond_4

    if-eqz p1, :cond_2

    iget-wide v4, p0, Lcom/transistorsoft/locationmanager/crash/a;->n:D

    cmpl-double v4, v1, v4

    if-lez v4, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 33
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/crash/a;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 34
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string p2, "Accelerometer triggered OFF"

    invoke-static {p2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->off(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    :goto_0
    if-nez p1, :cond_5

    .line 35
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/crash/a;->C:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 36
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/crash/a;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 37
    iput-wide p2, p0, Lcom/transistorsoft/locationmanager/crash/a;->s:J

    .line 38
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v0, "Accelerometer triggered ON"

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->on(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 40
    :cond_5
    iget-wide v4, p0, Lcom/transistorsoft/locationmanager/crash/a;->s:J

    sub-long v4, p2, v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    div-long/2addr v4, v6

    .line 41
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "- [Accelerometer] "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hysteresis dt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    long-to-double v0, v4

    .line 42
    iget-wide v4, p0, Lcom/transistorsoft/locationmanager/crash/a;->q:D

    cmpl-double p1, v0, v4

    if-lez p1, :cond_6

    .line 43
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/crash/a;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 46
    :cond_6
    :goto_1
    invoke-direct {p0, p2, p3}, Lcom/transistorsoft/locationmanager/crash/a;->a(J)V

    .line 47
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/crash/a;->g()V

    return-void
.end method

.method private b()D
    .locals 11

    .line 57
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/crash/a;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/crash/a;->G:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 62
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/crash/a;->G:Ljava/util/List;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 64
    sget-object v2, Lcom/transistorsoft/locationmanager/crash/a$a;->a:Lcom/transistorsoft/locationmanager/crash/a$a;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    mul-double/2addr v3, v5

    .line 65
    sget-object v2, Lcom/transistorsoft/locationmanager/crash/a$a;->b:Lcom/transistorsoft/locationmanager/crash/a$a;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    mul-double/2addr v5, v7

    .line 66
    sget-object v2, Lcom/transistorsoft/locationmanager/crash/a$a;->c:Lcom/transistorsoft/locationmanager/crash/a$a;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    mul-double/2addr v7, v0

    add-double v0, v3, v5

    add-double/2addr v0, v7

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    .line 70
    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 71
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 72
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    .line 73
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    div-double/2addr v0, v2

    .line 75
    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    const-wide v2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private static declared-synchronized b(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/crash/a;
    .locals 2

    const-class v0, Lcom/transistorsoft/locationmanager/crash/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/transistorsoft/locationmanager/crash/a;->e:Lcom/transistorsoft/locationmanager/crash/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transistorsoft/locationmanager/crash/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/crash/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/transistorsoft/locationmanager/crash/a;->e:Lcom/transistorsoft/locationmanager/crash/a;

    .line 2
    :cond_0
    sget-object p0, Lcom/transistorsoft/locationmanager/crash/a;->e:Lcom/transistorsoft/locationmanager/crash/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private b([FJ)V
    .locals 7

    const/4 v0, 0x0

    .line 3
    aget v1, p1, v0

    mul-float/2addr v1, v1

    const/4 v2, 0x1

    aget v3, p1, v2

    mul-float/2addr v3, v3

    add-float/2addr v1, v3

    const/4 v3, 0x2

    aget p1, p1, v3

    mul-float/2addr p1, p1

    add-float/2addr v1, p1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 5
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/crash/a;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    .line 6
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/crash/a;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez p1, :cond_0

    if-eqz v1, :cond_1

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/crash/a;->D:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 11
    :cond_1
    iget-wide v5, p0, Lcom/transistorsoft/locationmanager/crash/a;->o:D

    cmpl-double v1, v3, v5

    if-gtz v1, :cond_4

    if-eqz p1, :cond_2

    iget-wide v5, p0, Lcom/transistorsoft/locationmanager/crash/a;->p:D

    cmpl-double v1, v3, v5

    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 27
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/crash/a;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 28
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string p2, "Gyroscope triggered OFF"

    invoke-static {p2}, Lcom/transistorsoft/locationmanager/logger/TSLog;->off(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    :goto_0
    if-nez p1, :cond_5

    .line 29
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/crash/a;->D:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 30
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/crash/a;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 31
    iput-wide p2, p0, Lcom/transistorsoft/locationmanager/crash/a;->t:J

    .line 32
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v0, "Gyroscope triggered ON"

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->on(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 34
    :cond_5
    iget-wide v0, p0, Lcom/transistorsoft/locationmanager/crash/a;->t:J

    sub-long v0, p2, v0

    const-wide/16 v5, 0x3e8

    div-long/2addr v0, v5

    div-long/2addr v0, v5

    .line 35
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "- [Gyroscope] "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hysteresis dt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    long-to-double v0, v0

    .line 36
    iget-wide v3, p0, Lcom/transistorsoft/locationmanager/crash/a;->r:D

    cmpl-double p1, v0, v3

    if-lez p1, :cond_6

    .line 37
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/crash/a;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 40
    :cond_6
    :goto_1
    invoke-direct {p0, p2, p3}, Lcom/transistorsoft/locationmanager/crash/a;->a(J)V

    .line 41
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/crash/a;->g()V

    return-void
.end method

.method private b(DDD)Z
    .locals 9

    .line 42
    invoke-direct/range {p0 .. p6}, Lcom/transistorsoft/locationmanager/crash/a;->a(DDD)D

    move-result-wide v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    .line 43
    invoke-direct/range {v0 .. v8}, Lcom/transistorsoft/locationmanager/crash/a;->a(DDDD)V

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 46
    const-string p2, " y: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 47
    const-string p2, " z: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 48
    const-string p2, " acc: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    const-wide/high16 p2, 0x4037000000000000L    # 23.0

    cmpl-double p2, v7, p2

    if-lez p2, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/crash/a;->a()D

    move-result-wide p2

    const-wide/high16 p4, 0x4032000000000000L    # 18.0

    cmpl-double p2, p2, p4

    if-lez p2, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/crash/a;->b()D

    move-result-wide p2

    const-wide p4, 0x4050600000000000L    # 65.5

    cmpl-double p2, p2, p4

    if-lez p2, :cond_0

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    sget-object p2, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private c()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/crash/a;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/crash/a;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    .line 5
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/crash/a;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/crash/a;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/crash/a;->C:Ljava/util/concurrent/atomic/AtomicReference;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 9
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/crash/a;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/crash/a;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 11
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/crash/a;->D:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 13
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/crash/a;->j:Landroid/content/Context;

    invoke-static {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v2

    .line 14
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getDebug()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 15
    invoke-direct {p0}, Lcom/transistorsoft/locationmanager/crash/a;->e()V

    .line 19
    :cond_0
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/crash/a;->B:Ljava/util/List;

    monitor-enter v2

    .line 20
    :try_start_0
    iget-object v3, p0, Lcom/transistorsoft/locationmanager/crash/a;->B:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 21
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    .line 29
    :cond_1
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "Crash Analyzer:  CRASH DETECTED!"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->getInstance()Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/crash/a;->j:Landroid/content/Context;

    const-string/jumbo v2, "tslocationmanager_music_timpani_error_01"

    invoke-virtual {v0, v1, v2}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->debug(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 31
    :cond_2
    :goto_0
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "Crash Analyzer: NO CRASH"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 32
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private d()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/crash/a;->E:Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/crash/a;->F:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private e()V
    .locals 3

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "Crash Analyzer: Data"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "\nTIMESTAMP,ACCELEROMETER,GYROSCOPE\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/crash/a;->B:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transistorsoft/locationmanager/crash/b;

    .line 7
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/crash/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 9
    :cond_0
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method private g()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/crash/a;->A:Ljava/lang/Runnable;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/crash/a;->z:Landroid/os/Handler;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/crash/a;->A:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/crash/a;->z:Landroid/os/Handler;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/crash/a;->A:Ljava/lang/Runnable;

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/crash/a;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getCrashDetector()Lcom/transistorsoft/locationmanager/config/TSCrashDetector;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->getEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->getAccelerometerThresholdHigh()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/transistorsoft/locationmanager/crash/a;->m:D

    .line 7
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->getAccelerometerThresholdLow()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/transistorsoft/locationmanager/crash/a;->n:D

    .line 8
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->getGyroscopeThresholdHigh()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/transistorsoft/locationmanager/crash/a;->o:D

    .line 9
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/config/TSCrashDetector;->getGyroscopeThresholdLow()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/transistorsoft/locationmanager/crash/a;->p:D

    .line 12
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/crash/a;->j:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/crash/a;->k:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 16
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/crash/a;->k:Landroid/hardware/SensorManager;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 19
    iget-object v3, p0, Lcom/transistorsoft/locationmanager/crash/a;->k:Landroid/hardware/SensorManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v0, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 20
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/crash/a;->k:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 21
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/crash/a;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 22
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "Start crash-detector"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->on(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/crash/a;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/crash/a;->k:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 4
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "Stop crash-detector"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->off(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .line 1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 3
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 4
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-direct {p0, v0, v1, v2}, Lcom/transistorsoft/locationmanager/crash/a;->a([FJ)V

    return-void

    .line 17
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 18
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-direct {p0, v0, v1, v2}, Lcom/transistorsoft/locationmanager/crash/a;->b([FJ)V

    return-void

    .line 19
    :cond_1
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    return-void
.end method
