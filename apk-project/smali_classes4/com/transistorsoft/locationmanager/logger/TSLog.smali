.class public Lcom/transistorsoft/locationmanager/logger/TSLog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transistorsoft/locationmanager/logger/TSLog$b;,
        Lcom/transistorsoft/locationmanager/logger/TSLog$DestroyLogTask;,
        Lcom/transistorsoft/locationmanager/logger/TSLog$a;
    }
.end annotation


# static fields
.field public static final ACTION_EMAIL_LOG:Ljava/lang/String; = "emailLog"

.field public static final ACTION_GET_LOG:Ljava/lang/String; = "getLog"

.field public static final ACTION_LOG:Ljava/lang/String; = "log"

.field public static final ACTION_UPLOAD_LOG:Ljava/lang/String; = "uploadLog"

.field public static final BOX_BOTTOM:Ljava/lang/String; = "\u255a\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

.field public static final BOX_HEADER_BOTTOM:Ljava/lang/String; = "\u2560\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

.field public static final BOX_HEADER_MIDDLE:Ljava/lang/String; = "\u2551"

.field public static final BOX_HEADER_TOP:Ljava/lang/String; = "\u2554\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

.field public static final BOX_ROW:Ljava/lang/String; = "\u255f\u2500 "

.field public static final CRLF:Ljava/lang/String; = "\n"

.field public static final HR:Ljava/lang/String; = "\u2554\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

.field public static final ICON_ACTIVITY:Ljava/lang/String; = "\ud83d\ude98 \ufe0f"

.field public static final ICON_ALARM:Ljava/lang/String; = "\u23f0 "

.field public static final ICON_CALENDAR:Ljava/lang/String; = "\ud83d\udcc5  "

.field public static final ICON_CANCEL:Ljava/lang/String; = "\u274c "

.field public static final ICON_CHECK:Ljava/lang/String; = "\u2705  "

.field public static final ICON_ERROR:Ljava/lang/String; = "\u203c\ufe0f  "

.field public static final ICON_HOURGLASS:Ljava/lang/String; = "\u23f3"

.field public static final ICON_INFO:Ljava/lang/String; = "\u2139\ufe0f  "

.field public static final ICON_NOTICE:Ljava/lang/String; = "\ud83d\udd35  "

.field public static final ICON_OFF:Ljava/lang/String; = "\ud83d\udd34  "

.field public static final ICON_ON:Ljava/lang/String; = "\ud83c\udfbe  "

.field public static final ICON_PIN:Ljava/lang/String; = "\ud83d\udccd  "

.field public static final ICON_SIGNAL_BARS:Ljava/lang/String; = "\ud83d\udcf6  "

.field public static final ICON_WARN:Ljava/lang/String; = "\u26a0\ufe0f  "

.field public static final LOG_FILENAME:Ljava/lang/String; = "background-geolocation.log.gz"

.field public static final TAB:Ljava/lang/String; = "  "

.field public static final TREE_SW:Ljava/lang/String; = "\u2514"

.field private static final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final c:Ljava/lang/String; = "[%class{30} %method] %msg"

.field private static final d:Ljava/lang/String; = "sqlite"

.field private static final e:Ljava/lang/String; = "7 days"

.field private static final f:Ljava/lang/String; = "debug"

.field private static final g:Ljava/lang/String; = "warn"

.field private static final h:Ljava/lang/String; = "error"

.field private static final i:Ljava/lang/String; = "info"

.field private static final j:Ljava/lang/String; = "notice"

.field private static final k:Ljava/lang/String; = "header"

.field private static final l:Ljava/lang/String; = "on"

.field public static logger:Lorg/slf4j/Logger; = null

.field private static final m:Ljava/lang/String; = "off"

.field private static final n:Ljava/lang/String; = "ok"


# direct methods
.method public static synthetic $r8$lambda$XkIkRZm15zAYrbHnB-eoy9IAVL0(II)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->a(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$pr_xk4TJ0_TByVsGmEF6RiHO_Tk(I)V
    .locals 0

    invoke-static {p0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->c(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$uok2llHWDuVRXD-tozdjiMXQDaM(I)V
    .locals 0

    invoke-static {p0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->d(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    new-instance v0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade;

    invoke-direct {v0}, Lcom/transistorsoft/locationmanager/logger/LoggerFacade;-><init>()V

    sput-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)Lch/qos/logback/classic/Level;
    .locals 2

    .line 46
    invoke-static {}, Lcom/transistorsoft/locationmanager/logger/TSLog;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 49
    :cond_0
    sget-object v0, Lch/qos/logback/classic/Level;->ALL:Lch/qos/logback/classic/Level;

    if-eqz p0, :cond_5

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    return-object v0

    .line 55
    :cond_1
    sget-object p0, Lch/qos/logback/classic/Level;->DEBUG:Lch/qos/logback/classic/Level;

    return-object p0

    .line 56
    :cond_2
    sget-object p0, Lch/qos/logback/classic/Level;->INFO:Lch/qos/logback/classic/Level;

    return-object p0

    .line 57
    :cond_3
    sget-object p0, Lch/qos/logback/classic/Level;->WARN:Lch/qos/logback/classic/Level;

    return-object p0

    .line 58
    :cond_4
    sget-object p0, Lch/qos/logback/classic/Level;->ERROR:Lch/qos/logback/classic/Level;

    return-object p0

    .line 59
    :cond_5
    sget-object p0, Lch/qos/logback/classic/Level;->OFF:Lch/qos/logback/classic/Level;

    return-object p0
.end method

.method private static a()Lch/qos/logback/classic/Logger;
    .locals 1

    .line 60
    const-string v0, "ROOT"

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    check-cast v0, Lch/qos/logback/classic/Logger;

    return-object v0
.end method

.method private static synthetic a(II)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/logger/TSLog;->a()Lch/qos/logback/classic/Logger;

    move-result-object v0

    .line 2
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->a(I)Lch/qos/logback/classic/Level;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/qos/logback/classic/Logger;->setLevel(Lch/qos/logback/classic/Level;)V

    .line 4
    invoke-static {}, Lorg/slf4j/LoggerFactory;->getILoggerFactory()Lorg/slf4j/ILoggerFactory;

    move-result-object v1

    check-cast v1, Lch/qos/logback/classic/LoggerContext;

    .line 5
    invoke-virtual {v1}, Lch/qos/logback/classic/LoggerContext;->reset()V

    .line 8
    new-instance v2, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;

    invoke-direct {v2}, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;-><init>()V

    .line 9
    invoke-virtual {v2, v1}, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;->setContext(Lch/qos/logback/core/Context;)V

    .line 10
    const-string v3, "[%class{30} %method] %msg"

    invoke-virtual {v2, v3}, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;->setPattern(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2}, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;->start()V

    .line 14
    new-instance v3, Lch/qos/logback/classic/android/LogcatAppender;

    invoke-direct {v3}, Lch/qos/logback/classic/android/LogcatAppender;-><init>()V

    .line 15
    invoke-virtual {v3, v1}, Lch/qos/logback/classic/android/LogcatAppender;->setContext(Lch/qos/logback/core/Context;)V

    .line 16
    invoke-virtual {v3, v2}, Lch/qos/logback/classic/android/LogcatAppender;->setEncoder(Lch/qos/logback/classic/encoder/PatternLayoutEncoder;)V

    .line 17
    invoke-virtual {v3}, Lch/qos/logback/classic/android/LogcatAppender;->start()V

    .line 18
    invoke-virtual {v0, v3}, Lch/qos/logback/classic/Logger;->addAppender(Lch/qos/logback/core/Appender;)V

    .line 21
    new-instance v2, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;

    invoke-direct {v2}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;-><init>()V

    .line 22
    const-string/jumbo v3, "sqlite"

    invoke-virtual {v2, v3}, Lch/qos/logback/core/UnsynchronizedAppenderBase;->setName(Ljava/lang/String;)V

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " days"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->setMaxHistory(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v2, v1}, Lch/qos/logback/core/UnsynchronizedAppenderBase;->setContext(Lch/qos/logback/core/Context;)V

    .line 25
    invoke-virtual {v0, v2}, Lch/qos/logback/classic/Logger;->addAppender(Lch/qos/logback/core/Appender;)V

    .line 26
    invoke-virtual {v2}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->start()V

    .line 29
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    check-cast v0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade;

    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/logger/LoggerFacade;->getQueue()Ljava/util/List;

    move-result-object v0

    .line 34
    const-string v1, "TSLocationManager"

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v2

    instance-of v2, v2, Lch/qos/logback/classic/Logger;

    if-nez v2, :cond_0

    .line 35
    const-string/jumbo p0, "\u203c\ufe0f  TSLog LoggerFactory returned an instance of SubstituteLogger.  Logger is disabled \u203c\ufe0f"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    sget-object p0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    check-cast p0, Lcom/transistorsoft/locationmanager/logger/LoggerFacade;

    invoke-virtual {p0}, Lcom/transistorsoft/locationmanager/logger/LoggerFacade;->a()V

    return-void

    .line 41
    :cond_0
    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v1

    sput-object v1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    .line 42
    invoke-static {p0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->setLogLevel(I)V

    .line 43
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->setMaxHistory(I)V

    .line 44
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transistorsoft/locationmanager/logger/LoggerFacade$a;

    .line 45
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1, v0}, Lcom/transistorsoft/locationmanager/logger/LoggerFacade$a;->a(Lorg/slf4j/Logger;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static activity(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n  \ud83d\ude98 \ufe0f"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static alarm(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n  \u23f0 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(I)Ljava/lang/String;
    .locals 1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " days"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static box(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u2554\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\n\u2551 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\n\u2560\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static boxRow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u255f\u2500 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic c(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/logger/TSLog;->a()Lch/qos/logback/classic/Logger;

    move-result-object v0

    invoke-static {p0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->a(I)Lch/qos/logback/classic/Level;

    move-result-object p0

    invoke-virtual {v0, p0}, Lch/qos/logback/classic/Logger;->setLevel(Lch/qos/logback/classic/Level;)V

    return-void
.end method

.method public static calendar(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n  \ud83d\udcc5  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static cancel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n  \u274c "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static connectivity(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n  \ud83d\udcf6  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic d(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/logger/TSLog;->getDatabaseAppender()Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " days"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->setMaxHistory(Ljava/lang/String;)V

    return-void
.end method

.method public static destroyLog(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/logger/TSLog$DestroyLogTask;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/logger/TSLog$DestroyLogTask;-><init>(Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static emailLog(Landroid/app/Activity;Ljava/lang/String;Lcom/transistorsoft/locationmanager/data/SQLQuery;Lcom/transistorsoft/locationmanager/adapter/callback/TSEmailLogCallback;)V
    .locals 2

    .line 2
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/logger/TSLog$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/transistorsoft/locationmanager/logger/TSLog$a;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/transistorsoft/locationmanager/data/SQLQuery;Lcom/transistorsoft/locationmanager/adapter/callback/TSEmailLogCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static emailLog(Ljava/lang/String;Landroid/app/Activity;Lcom/transistorsoft/locationmanager/adapter/callback/TSEmailLogCallback;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/logger/TSLog$a;

    new-instance v2, Lcom/transistorsoft/locationmanager/data/SQLQuery;

    invoke-direct {v2}, Lcom/transistorsoft/locationmanager/data/SQLQuery;-><init>()V

    invoke-direct {v1, p1, p0, v2, p2}, Lcom/transistorsoft/locationmanager/logger/TSLog$a;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/transistorsoft/locationmanager/data/SQLQuery;Lcom/transistorsoft/locationmanager/adapter/callback/TSEmailLogCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static error(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n  \u203c\ufe0f  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDatabaseAppender()Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;
    .locals 2

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/logger/TSLog;->a()Lch/qos/logback/classic/Logger;

    move-result-object v0

    const-string/jumbo v1, "sqlite"

    invoke-virtual {v0, v1}, Lch/qos/logback/classic/Logger;->getAppender(Ljava/lang/String;)Lch/qos/logback/core/Appender;

    move-result-object v0

    check-cast v0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;

    return-object v0
.end method

.method public static getDatabaseFile()Ljava/io/File;
    .locals 2

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/logger/TSLog;->getDatabaseAppender()Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    const-string v1, "Failed to locate sqlite database appender"

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->getDatabaseFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getLog(Lcom/transistorsoft/locationmanager/adapter/callback/TSGetLogCallback;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/data/SQLQuery;->create()Lcom/transistorsoft/locationmanager/data/SQLQuery;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->getLog(Lcom/transistorsoft/locationmanager/data/SQLQuery;Lcom/transistorsoft/locationmanager/adapter/callback/TSGetLogCallback;)V

    return-void
.end method

.method public static getLog(Lcom/transistorsoft/locationmanager/data/SQLQuery;Lcom/transistorsoft/locationmanager/adapter/callback/TSGetLogCallback;)V
    .locals 2

    .line 2
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/logger/TSLog$b;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/logger/TSLog$b;-><init>(Lcom/transistorsoft/locationmanager/data/SQLQuery;Lcom/transistorsoft/locationmanager/adapter/callback/TSGetLogCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static header(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/transistorsoft/locationmanager/logger/TSLog;->box(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static info(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n  \u2139\ufe0f  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static initialize(II)V
    .locals 2

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/transistorsoft/locationmanager/logger/LoggerFacade;

    if-eq v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/logger/TSLog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/logger/TSLog$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "error"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    const-string/jumbo v0, "warn"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->warn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    const-string v0, "debug"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    sget-object p0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_2
    const-string v0, "info"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    sget-object p0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_3
    const-string v0, "notice"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    sget-object p0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->notice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_4
    const-string v0, "header"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    sget-object p0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-void

    .line 13
    :cond_5
    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    sget-object p0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->on(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-void

    .line 15
    :cond_6
    const-string v0, "off"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 16
    sget-object p0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->off(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-void

    .line 17
    :cond_7
    const-string v0, "ok"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 18
    sget-object p0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-static {p1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->ok(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public static notice(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n  \ud83d\udd35  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static off(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n  \ud83d\udd34  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ok(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n  \u2705  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static on(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n  \ud83c\udfbe  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static pin(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n  \ud83d\udccd  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static r(Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    sget-object p0, Lcom/transistorsoft/locationmanager/logger/TSLog;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static setLogLevel(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/transistorsoft/locationmanager/logger/LoggerFacade;

    if-ne v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/logger/TSLog$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/logger/TSLog$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setMaxHistory(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/transistorsoft/locationmanager/adapter/BackgroundGeolocation;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/logger/TSLog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transistorsoft/locationmanager/logger/TSLog$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static uploadLog(Landroid/content/Context;Ljava/lang/String;Lcom/transistorsoft/locationmanager/data/SQLQuery;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/transistorsoft/locationmanager/logger/a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/transistorsoft/locationmanager/logger/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/transistorsoft/locationmanager/data/SQLQuery;Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;)V

    return-void
.end method

.method public static warn(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n  \u26a0\ufe0f  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static writeLogFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "background-geolocation.log.gz"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 3
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 7
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V

    .line 9
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 10
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 11
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 12
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 13
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 16
    :try_start_2
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    move-exception p1

    .line 21
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transistorsoft/locationmanager/logger/TSLog;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method
