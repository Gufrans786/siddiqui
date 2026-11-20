.class public Lcom/transistorsoft/locationmanager/logger/LoggerFacade;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/slf4j/Logger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transistorsoft/locationmanager/logger/LoggerFacade$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/logger/LoggerFacade$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade;->a:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade;->b:Z

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade;->b:Z

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade;->a:Ljava/util/List;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

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

.method public debug(Ljava/lang/String;)V
    .locals 4

    .line 9
    iget-boolean v0, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade;->a:Ljava/util/List;

    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade;->a:Ljava/util/List;

    new-instance v2, Lcom/transistorsoft/locationmanager/logger/LoggerFacade$a;

    sget-object v3, Lch/qos/logback/classic/Level;->DEBUG:Lch/qos/logback/classic/Level;

    invoke-direct {v2, v3, p1}, Lcom/transistorsoft/locationmanager/logger/LoggerFacade$a;-><init>(Lch/qos/logback/classic/Level;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .line 14
    iget-boolean v0, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade;->a:Ljava/util/List;

    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade;->a:Ljava/util/List;

    new-instance v2, Lcom/transistorsoft/locationmanager/logger/LoggerFacade$a;

    sget-object v3, Lch/qos/logback/classic/Level;->DEBUG:Lch/qos/logback/classic/Level;

    invoke-direct {v2, v3, p1, p2}, Lcom/transistorsoft/locationmanager/logger/LoggerFacade$a;-><init>(Lch/qos/logback/classic/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public varargs debug(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 4

    .line 14
    iget-boolean v0, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade;->a:Ljava/util/List;

    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade;->a:Ljava/util/List;

    new-instance v2, Lcom/transistorsoft/locationmanager/logger/LoggerFacade$a;

    sget-object v3, Lch/qos/logback/classic/Level;->ERROR:Lch/qos/logback/classic/Level;

    invoke-direct {v2, v3, p1}, Lcom/transistorsoft/locationmanager/logger/LoggerFacade$a;-><init>(Lch/qos/logback/classic/Level;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .line 9
    iget-boolean v0, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade;->a:Ljava/util/List;

    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade;->a:Ljava/util/List;

    new-instance v2, Lcom/transistorsoft/locationmanager/logger/LoggerFacade$a;

    sget-object v3, Lch/qos/logback/classic/Level;->ERROR:Lch/qos/logback/classic/Level;

    invoke-direct {v2, v3, p1, p2}, Lcom/transistorsoft/locationmanager/logger/LoggerFacade$a;-><init>(Lch/qos/logback/classic/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public varargs error(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "LoggerFacade"

    return-object v0
.end method

.method public getQueue()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transistorsoft/locationmanager/logger/LoggerFacade$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade;->a:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade;->a:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 4
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public info(Ljava/lang/String;)V
    .locals 4

    .line 9
    iget-boolean v0, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade;->a:Ljava/util/List;

    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade;->a:Ljava/util/List;

    new-instance v2, Lcom/transistorsoft/locationmanager/logger/LoggerFacade$a;

    sget-object v3, Lch/qos/logback/classic/Level;->INFO:Lch/qos/logback/classic/Level;

    invoke-direct {v2, v3, p1}, Lcom/transistorsoft/locationmanager/logger/LoggerFacade$a;-><init>(Lch/qos/logback/classic/Level;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .line 14
    iget-boolean v0, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade;->a:Ljava/util/List;

    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade;->a:Ljava/util/List;

    new-instance v2, Lcom/transistorsoft/locationmanager/logger/LoggerFacade$a;

    sget-object v3, Lch/qos/logback/classic/Level;->INFO:Lch/qos/logback/classic/Level;

    invoke-direct {v2, v3, p1, p2}, Lcom/transistorsoft/locationmanager/logger/LoggerFacade$a;-><init>(Lch/qos/logback/classic/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public varargs info(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isDebugEnabled(Lorg/slf4j/Marker;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isErrorEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isErrorEnabled(Lorg/slf4j/Marker;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isInfoEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isInfoEnabled(Lorg/slf4j/Marker;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isTraceEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTraceEnabled(Lorg/slf4j/Marker;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isWarnEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isWarnEnabled(Lorg/slf4j/Marker;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public trace(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public varargs trace(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public varargs trace(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 4

    .line 9
    iget-boolean v0, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade;->a:Ljava/util/List;

    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade;->a:Ljava/util/List;

    new-instance v2, Lcom/transistorsoft/locationmanager/logger/LoggerFacade$a;

    sget-object v3, Lch/qos/logback/classic/Level;->WARN:Lch/qos/logback/classic/Level;

    invoke-direct {v2, v3, p1}, Lcom/transistorsoft/locationmanager/logger/LoggerFacade$a;-><init>(Lch/qos/logback/classic/Level;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .line 14
    iget-boolean v0, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade;->a:Ljava/util/List;

    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade;->a:Ljava/util/List;

    new-instance v2, Lcom/transistorsoft/locationmanager/logger/LoggerFacade$a;

    sget-object v3, Lch/qos/logback/classic/Level;->WARN:Lch/qos/logback/classic/Level;

    invoke-direct {v2, v3, p1, p2}, Lcom/transistorsoft/locationmanager/logger/LoggerFacade$a;-><init>(Lch/qos/logback/classic/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public varargs warn(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
