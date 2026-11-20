.class Lcom/transistorsoft/locationmanager/logger/LoggerFacade$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/locationmanager/logger/LoggerFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lch/qos/logback/classic/Level;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lch/qos/logback/classic/Level;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade$a;->a:Lch/qos/logback/classic/Level;

    .line 3
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade$a;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lch/qos/logback/classic/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade$a;->a:Lch/qos/logback/classic/Level;

    .line 6
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade$a;->b:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade$a;->c:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method a(Lorg/slf4j/Logger;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade$a;->a:Lch/qos/logback/classic/Level;

    sget-object v1, Lch/qos/logback/classic/Level;->DEBUG:Lch/qos/logback/classic/Level;

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade$a;->c:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade$a;->b:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade$a;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1
    sget-object v1, Lch/qos/logback/classic/Level;->INFO:Lch/qos/logback/classic/Level;

    if-ne v0, v1, :cond_3

    .line 8
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade$a;->c:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade$a;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade$a;->b:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 13
    :cond_3
    sget-object v1, Lch/qos/logback/classic/Level;->WARN:Lch/qos/logback/classic/Level;

    if-ne v0, v1, :cond_5

    .line 14
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade$a;->c:Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    .line 15
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade$a;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void

    .line 17
    :cond_4
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade$a;->b:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 19
    :cond_5
    sget-object v1, Lch/qos/logback/classic/Level;->ERROR:Lch/qos/logback/classic/Level;

    if-ne v0, v1, :cond_7

    .line 20
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade$a;->c:Ljava/lang/Throwable;

    if-eqz v0, :cond_6

    .line 21
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade$a;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void

    .line 23
    :cond_6
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade$a;->b:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    return-void
.end method
