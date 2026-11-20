.class public Lcom/transistorsoft/locationmanager/scheduler/Schedule;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Ljava/text/SimpleDateFormat;

.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:Ljava/lang/String; = "geofence"

.field private static final f:Ljava/lang/String; = "location"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field public offTime:Ljava/util/Calendar;

.field public onTime:Ljava/util/Calendar;

.field public trackingMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->c:Ljava/text/SimpleDateFormat;

    .line 2
    const-string v0, "\\d{4}-\\d{2}-\\d{2}.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->d:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->a:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->b:Z

    .line 6
    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 10

    .line 1
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 3
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->onTime:Ljava/util/Calendar;

    .line 4
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->offTime:Ljava/util/Calendar;

    const/4 v0, 0x0

    .line 7
    aget-object v1, p1, v0

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    .line 8
    sget-object v1, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->d:Ljava/util/regex/Pattern;

    aget-object v5, p1, v0

    invoke-virtual {v1, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 9
    iput-boolean v4, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->b:Z

    .line 10
    aget-object v5, p1, v0

    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 12
    iget-object v6, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->onTime:Ljava/util/Calendar;

    aget-object v7, v5, v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v4, v7}, Ljava/util/Calendar;->set(II)V

    .line 13
    iget-object v6, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->onTime:Ljava/util/Calendar;

    aget-object v7, v5, v4

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {v6, v3, v7}, Ljava/util/Calendar;->set(II)V

    .line 14
    iget-object v6, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->onTime:Ljava/util/Calendar;

    aget-object v7, v5, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x5

    invoke-virtual {v6, v8, v7}, Ljava/util/Calendar;->set(II)V

    .line 16
    aget-object v6, p1, v4

    invoke-virtual {v1, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    aget-object v1, p1, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 19
    iget-object v6, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->offTime:Ljava/util/Calendar;

    aget-object v7, v1, v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v4, v7}, Ljava/util/Calendar;->set(II)V

    .line 20
    iget-object v6, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->offTime:Ljava/util/Calendar;

    aget-object v7, v1, v4

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {v6, v3, v7}, Ljava/util/Calendar;->set(II)V

    .line 21
    iget-object v6, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->offTime:Ljava/util/Calendar;

    aget-object v7, v1, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v8, v7}, Ljava/util/Calendar;->set(II)V

    .line 23
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x3

    aget-object v5, v5, v7

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v1, v1, v7

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v4

    goto :goto_2

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->offTime:Ljava/util/Calendar;

    iget-object v5, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->onTime:Ljava/util/Calendar;

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 26
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->offTime:Ljava/util/Calendar;

    iget-object v5, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->onTime:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v1, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 27
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->offTime:Ljava/util/Calendar;

    iget-object v5, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->onTime:Ljava/util/Calendar;

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v1, v8, v5}, Ljava/util/Calendar;->set(II)V

    goto :goto_2

    .line 31
    :cond_1
    aget-object v1, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 32
    aget-object v5, v1, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 33
    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_0
    if-gt v5, v1, :cond_3

    .line 35
    iget-object v6, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->a:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 39
    :cond_2
    aget-object v1, p1, v0

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move v5, v0

    .line 40
    :goto_1
    array-length v6, v1

    if-ge v5, v6, :cond_3

    .line 41
    iget-object v6, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->a:Ljava/util/List;

    aget-object v7, v1, v5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 46
    :cond_3
    :goto_2
    aget-object v1, p1, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 47
    aget-object v2, v1, v0

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 49
    iget-object v6, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->onTime:Ljava/util/Calendar;

    aget-object v7, v2, v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0xb

    invoke-virtual {v6, v8, v7}, Ljava/util/Calendar;->set(II)V

    .line 50
    iget-object v6, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->onTime:Ljava/util/Calendar;

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v7, 0xc

    invoke-virtual {v6, v7, v2}, Ljava/util/Calendar;->set(II)V

    .line 51
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->onTime:Ljava/util/Calendar;

    const/16 v6, 0xd

    invoke-virtual {v2, v6, v0}, Ljava/util/Calendar;->set(II)V

    .line 52
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->onTime:Ljava/util/Calendar;

    const/16 v9, 0xe

    invoke-virtual {v2, v9, v0}, Ljava/util/Calendar;->set(II)V

    .line 53
    aget-object v1, v1, v4

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 54
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->offTime:Ljava/util/Calendar;

    aget-object v5, v1, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v8, v5}, Ljava/util/Calendar;->set(II)V

    .line 55
    iget-object v2, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->offTime:Ljava/util/Calendar;

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v7, v1}, Ljava/util/Calendar;->set(II)V

    .line 56
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->offTime:Ljava/util/Calendar;

    invoke-virtual {v1, v6, v0}, Ljava/util/Calendar;->set(II)V

    .line 57
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->offTime:Ljava/util/Calendar;

    invoke-virtual {v1, v9, v0}, Ljava/util/Calendar;->set(II)V

    .line 60
    iget-boolean v1, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->b:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->offTime:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->onTime:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 61
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->offTime:Ljava/util/Calendar;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->add(II)V

    .line 65
    :cond_4
    array-length v1, p1

    if-le v1, v3, :cond_6

    .line 66
    aget-object p1, p1, v3

    const-string v1, "geofence"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 67
    iput v0, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->trackingMode:I

    return-void

    .line 69
    :cond_5
    iput v4, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->trackingMode:I

    return-void

    .line 72
    :cond_6
    iput v4, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->trackingMode:I

    return-void
.end method


# virtual methods
.method public hasDay(I)Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->a:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public isExpired()Z
    .locals 2

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->offTime:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isLiteralDate()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->b:Z

    return v0
.end method

.method public isNext(Ljava/util/Calendar;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->b:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->make(Ljava/util/Calendar;)V

    const/4 v0, 0x7

    .line 3
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->hasDay(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->offTime:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public make(Ljava/util/Calendar;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->onTime:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 5
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->onTime:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 6
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->offTime:Ljava/util/Calendar;

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 7
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->offTime:Ljava/util/Calendar;

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 9
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->offTime:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->onTime:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->offTime:Ljava/util/Calendar;

    invoke-virtual {p1, v1, v2}, Ljava/util/Calendar;->add(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Schedule["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->c:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->onTime:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->offTime:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Days: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trackingMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/transistorsoft/locationmanager/scheduler/Schedule;->trackingMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
