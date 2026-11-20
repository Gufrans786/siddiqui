.class public Lim/zego/zpns/internal/util/TimeTools;
.super Ljava/lang/Object;
.source "TimeTools.java"


# static fields
.field private static final sFormat:Ljava/text/SimpleDateFormat;

.field private static final sLogFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 96
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyMMddHHmmssSSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lim/zego/zpns/internal/util/TimeTools;->sFormat:Ljava/text/SimpleDateFormat;

    .line 97
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lim/zego/zpns/internal/util/TimeTools;->sLogFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogStr()Ljava/lang/String;
    .locals 2

    .line 104
    sget-object v0, Lim/zego/zpns/internal/util/TimeTools;->sLogFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNowTimeStr()Ljava/lang/String;
    .locals 2

    .line 100
    sget-object v0, Lim/zego/zpns/internal/util/TimeTools;->sFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isThisWeek(Ljava/util/Date;)Z
    .locals 3

    .line 82
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 83
    invoke-virtual {p0}, Ljava/util/Date;->getYear()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/util/Date;->getMonth()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 84
    invoke-virtual {v0}, Ljava/util/Date;->getDay()I

    move-result v1

    invoke-virtual {p0}, Ljava/util/Date;->getDay()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/util/Date;->getDay()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v1

    invoke-virtual {p0}, Ljava/util/Date;->getDate()I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v0

    invoke-virtual {p0}, Ljava/util/Date;->getDate()I

    move-result p0

    sub-int/2addr v0, p0

    const/4 p0, 0x7

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isThisYear(Ljava/util/Date;)Z
    .locals 1

    .line 92
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 93
    invoke-virtual {p0}, Ljava/util/Date;->getYear()I

    move-result p0

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isToday(Ljava/util/Date;)Z
    .locals 3

    .line 72
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 73
    invoke-virtual {p0}, Ljava/util/Date;->getYear()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/util/Date;->getMonth()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/util/Date;->getDate()I

    move-result p0

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isYestYesterday(Ljava/util/Date;)Z
    .locals 3

    .line 77
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 78
    invoke-virtual {p0}, Ljava/util/Date;->getYear()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/util/Date;->getMonth()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/util/Date;->getDate()I

    move-result p0

    const/4 v1, 0x1

    add-int/2addr p0, v1

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v0

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static longFormatTime(J)Ljava/lang/String;
    .locals 4

    .line 14
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 15
    invoke-virtual {v0, p0, p1}, Ljava/util/Date;->setTime(J)V

    .line 16
    invoke-static {v0}, Lim/zego/zpns/internal/util/TimeTools;->isThisYear(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 17
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-static {v0}, Lim/zego/zpns/internal/util/TimeTools;->isToday(Ljava/util/Date;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 19
    invoke-static {p0, p1}, Lim/zego/zpns/internal/util/TimeTools;->minutesAgo(J)I

    move-result p0

    const/16 p1, 0x3c

    if-ge p0, p1, :cond_1

    if-gt p0, v3, :cond_0

    .line 22
    const-string/jumbo p0, "\u521a\u521a"

    return-object p0

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string/jumbo p1, "\u5206\u949f\u524d"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 27
    :cond_1
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 30
    :cond_2
    invoke-static {v0}, Lim/zego/zpns/internal/util/TimeTools;->isYestYesterday(Ljava/util/Date;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 31
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "\u6628\u5929 "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 32
    :cond_3
    invoke-static {v0}, Lim/zego/zpns/internal/util/TimeTools;->isThisWeek(Ljava/util/Date;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 34
    invoke-virtual {v0}, Ljava/util/Date;->getDay()I

    move-result p0

    if-ne p0, v3, :cond_4

    .line 35
    const-string/jumbo p0, "\u5468\u4e00"

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    .line 37
    :goto_0
    invoke-virtual {v0}, Ljava/util/Date;->getDay()I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    .line 38
    const-string/jumbo p0, "\u5468\u4e8c"

    .line 40
    :cond_5
    invoke-virtual {v0}, Ljava/util/Date;->getDay()I

    move-result p1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_6

    .line 41
    const-string/jumbo p0, "\u5468\u4e09"

    .line 43
    :cond_6
    invoke-virtual {v0}, Ljava/util/Date;->getDay()I

    move-result p1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_7

    .line 44
    const-string/jumbo p0, "\u5468\u56db"

    .line 46
    :cond_7
    invoke-virtual {v0}, Ljava/util/Date;->getDay()I

    move-result p1

    const/4 v2, 0x5

    if-ne p1, v2, :cond_8

    .line 47
    const-string/jumbo p0, "\u5468\u4e94"

    .line 49
    :cond_8
    invoke-virtual {v0}, Ljava/util/Date;->getDay()I

    move-result p1

    const/4 v2, 0x6

    if-ne p1, v2, :cond_9

    .line 50
    const-string/jumbo p0, "\u5468\u516d"

    .line 52
    :cond_9
    invoke-virtual {v0}, Ljava/util/Date;->getDay()I

    move-result p1

    if-nez p1, :cond_a

    .line 53
    const-string/jumbo p0, "\u5468\u65e5"

    .line 55
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 57
    :cond_b
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string p1, "MM-dd HH:mm"

    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 62
    :cond_c
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string/jumbo p1, "yyyy-MM-dd HH:mm"

    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static minutesAgo(J)I
    .locals 2

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    const-wide/32 p0, 0xea60

    div-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method
