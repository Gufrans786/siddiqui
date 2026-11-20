.class public Lcom/oppwa/mobile/connect/utils/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppwa/mobile/connect/utils/Logger$Mode;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "com.oppwa.mobile.connect.utils.Logger"

.field private static final b:Ljava/lang/Integer;

.field protected static c:Ljava/lang/String;

.field private static d:Landroid/content/Context;

.field private static e:Ljava/lang/String;

.field private static f:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

.field private static g:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Ljava/io/File;

.field private static i:Lcom/oppwa/mobile/connect/utils/Logger$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/oppwa/mobile/connect/utils/Logger;->b:Ljava/lang/Integer;

    .line 23
    sget-object v0, Lcom/oppwa/mobile/connect/utils/Logger$Mode;->INFO:Lcom/oppwa/mobile/connect/utils/Logger$Mode;

    sput-object v0, Lcom/oppwa/mobile/connect/utils/Logger;->i:Lcom/oppwa/mobile/connect/utils/Logger$Mode;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;
    .locals 2

    .line 127
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v1, Lcom/oppwa/mobile/connect/utils/Logger;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 128
    const-string v0, "logL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 129
    sget-object p0, Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;->LIVE:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    return-object p0

    .line 130
    :cond_0
    sget-object p0, Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;->TEST:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    return-object p0
.end method

.method private static a(Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;)Ljava/lang/String;
    .locals 1

    .line 124
    sget-object v0, Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;->LIVE:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    if-ne p0, v0, :cond_0

    .line 125
    const-string p0, "logL"

    return-object p0

    .line 126
    :cond_0
    const-string p0, "logT"

    return-object p0
.end method

.method private static a(Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Ljava/lang/Long;)Ljava/lang/String;
    .locals 1

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/oppwa/mobile/connect/utils/Logger;->a(Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/oppwa/mobile/connect/utils/b;)Ljava/lang/String;
    .locals 3

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/utils/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 46
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/utils/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/utils/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 48
    invoke-virtual {p0}, Lcom/oppwa/mobile/connect/utils/b;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\n*****\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a([Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    const/16 v4, 0xa

    .line 4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/List;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oppwa/mobile/connect/utils/b;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oppwa/mobile/connect/utils/b;",
            ">;>;"
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 138
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppwa/mobile/connect/utils/b;

    .line 139
    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/utils/b;->a()Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 142
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 145
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 149
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static a([Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/oppwa/mobile/connect/utils/b;",
            ">;"
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    array-length v2, p0

    const-string v3, ""

    const/4 v4, 0x0

    move-object v5, v3

    move-object v6, v5

    move v7, v4

    move v8, v7

    :goto_0
    if-ge v7, v2, :cond_5

    aget-object v9, p0, v7

    .line 92
    const-string v10, "*****"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 94
    new-instance v8, Lcom/oppwa/mobile/connect/utils/b;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v3, v5, v6, v1}, Lcom/oppwa/mobile/connect/utils/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move v8, v4

    goto :goto_2

    :cond_0
    if-eqz v8, :cond_4

    const/4 v10, 0x1

    if-eq v8, v10, :cond_3

    const/4 v10, 0x2

    if-eq v8, v10, :cond_2

    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_1

    .line 109
    const-string v10, "\n"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_1
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    move-object v6, v9

    goto :goto_1

    :cond_3
    move-object v5, v9

    goto :goto_1

    :cond_4
    move-object v3, v9

    :goto_1
    add-int/lit8 v8, v8, 0x1

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private static a()Ljava/util/regex/Pattern;
    .locals 2

    .line 118
    sget-object v0, Lcom/oppwa/mobile/connect/utils/Logger;->g:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/ref/SoftReference;

    const-string v1, "[a-zA-Z]{4}[0-9]{10,}$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/oppwa/mobile/connect/utils/Logger;->g:Ljava/lang/ref/SoftReference;

    .line 123
    :cond_1
    sget-object v0, Lcom/oppwa/mobile/connect/utils/Logger;->g:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 132
    invoke-static {p0, p1}, Lcom/oppwa/mobile/connect/utils/Logger;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 134
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_0

    .line 135
    sget-object p1, Lcom/oppwa/mobile/connect/utils/Logger;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot delete the log file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;Lcom/oppwa/mobile/connect/utils/LogSender$CompleteListener;)V
    .locals 4

    .line 49
    invoke-static {p0, p1}, Lcom/oppwa/mobile/connect/utils/Logger;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 51
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 53
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppwa/mobile/connect/utils/b;

    invoke-virtual {v1}, Lcom/oppwa/mobile/connect/utils/b;->a()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppwa/mobile/connect/utils/b;

    .line 55
    invoke-virtual {v3}, Lcom/oppwa/mobile/connect/utils/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 56
    invoke-static {p0, v0, p1, p2, p3}, Lcom/oppwa/mobile/connect/utils/Logger;->b(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;Lcom/oppwa/mobile/connect/utils/LogSender$CompleteListener;)V

    return-void

    .line 67
    :cond_1
    invoke-static {p0, v0, p1, p2, p3}, Lcom/oppwa/mobile/connect/utils/Logger;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;Lcom/oppwa/mobile/connect/utils/LogSender$CompleteListener;)V

    :cond_2
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;)V
    .locals 2

    if-eqz p1, :cond_3

    if-nez p4, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Lcom/oppwa/mobile/connect/utils/Logger;->i:Lcom/oppwa/mobile/connect/utils/Logger$Mode;

    sget-object v1, Lcom/oppwa/mobile/connect/utils/Logger$Mode;->NONE:Lcom/oppwa/mobile/connect/utils/Logger$Mode;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    sget-object v0, Lcom/oppwa/mobile/connect/utils/Logger;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/oppwa/mobile/connect/utils/Logger;->a(Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p4

    sput-object p4, Lcom/oppwa/mobile/connect/utils/Logger;->c:Ljava/lang/String;

    .line 17
    :cond_2
    new-instance p4, Lcom/oppwa/mobile/connect/utils/b;

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p4, p1, p2, v0, p3}, Lcom/oppwa/mobile/connect/utils/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    sget-object p1, Lcom/oppwa/mobile/connect/utils/Logger;->c:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/oppwa/mobile/connect/utils/Logger;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p4}, Lcom/oppwa/mobile/connect/utils/Logger;->a(Lcom/oppwa/mobile/connect/utils/b;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oppwa/mobile/connect/utils/Logger;->a(Ljava/io/File;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;Lcom/oppwa/mobile/connect/utils/LogSender$CompleteListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/oppwa/mobile/connect/utils/b;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;",
            "Lcom/oppwa/mobile/connect/utils/LogSender$CompleteListener;",
            ")V"
        }
    .end annotation

    .line 68
    invoke-static {p0}, Lcom/oppwa/mobile/connect/utils/Logger;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    sget-object v0, Lcom/oppwa/mobile/connect/utils/Logger;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 74
    sput-object v0, Lcom/oppwa/mobile/connect/utils/Logger;->c:Ljava/lang/String;

    .line 77
    :cond_1
    invoke-static {p2}, Lcom/oppwa/mobile/connect/utils/Logger;->a(Ljava/lang/String;)Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    move-result-object v4

    .line 78
    invoke-static {p0, p2}, Lcom/oppwa/mobile/connect/utils/Logger;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 81
    new-instance v1, Lcom/oppwa/mobile/connect/utils/LogSender;

    invoke-direct {v1}, Lcom/oppwa/mobile/connect/utils/LogSender;-><init>()V

    .line 82
    invoke-virtual {v1, p4}, Lcom/oppwa/mobile/connect/utils/LogSender;->a(Lcom/oppwa/mobile/connect/utils/LogSender$CompleteListener;)V

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    .line 83
    invoke-virtual/range {v1 .. v6}, Lcom/oppwa/mobile/connect/utils/LogSender;->a(Landroid/content/Context;Ljava/util/List;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;Ljava/io/File;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 24
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 32
    :goto_0
    :try_start_3
    invoke-static {p0}, Lcom/oppwa/mobile/connect/utils/Logger;->a(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_0

    .line 36
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 38
    invoke-static {p0}, Lcom/oppwa/mobile/connect/utils/Logger;->a(Ljava/lang/Exception;)V

    :cond_0
    :goto_1
    return-void

    :goto_2
    move-object v1, v0

    :goto_3
    if-eqz v1, :cond_1

    .line 39
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    .line 41
    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/Logger;->a(Ljava/lang/Exception;)V

    .line 44
    :cond_1
    :goto_4
    throw p0
.end method

.method private static a(Ljava/lang/Exception;)V
    .locals 2

    .line 117
    sget-object v0, Lcom/oppwa/mobile/connect/utils/Logger;->a:Ljava/lang/String;

    const-string v1, "Error: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 1

    .line 112
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 114
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 116
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static b(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 28
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "/logs"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .line 43
    sget-object v0, Lcom/oppwa/mobile/connect/utils/Logger;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method protected static b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/oppwa/mobile/connect/utils/b;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "\n"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/oppwa/mobile/connect/utils/Logger;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 11
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 12
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 20
    :try_start_5
    invoke-static {p0}, Lcom/oppwa/mobile/connect/utils/Logger;->a(Ljava/lang/Exception;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 24
    invoke-static {p0}, Lcom/oppwa/mobile/connect/utils/Logger;->a(Ljava/lang/Exception;)V

    .line 27
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oppwa/mobile/connect/utils/Logger;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;Lcom/oppwa/mobile/connect/utils/LogSender$CompleteListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/oppwa/mobile/connect/utils/b;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;",
            "Lcom/oppwa/mobile/connect/utils/LogSender$CompleteListener;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-static {p0, p2}, Lcom/oppwa/mobile/connect/utils/Logger;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    invoke-static {p2}, Lcom/oppwa/mobile/connect/utils/Logger;->a(Ljava/lang/String;)Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    move-result-object v0

    .line 33
    invoke-static {p2}, Lcom/oppwa/mobile/connect/utils/Logger;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 34
    invoke-static {p1}, Lcom/oppwa/mobile/connect/utils/Logger;->a(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 37
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/oppwa/mobile/connect/utils/Logger;->a(Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v3

    .line 38
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 39
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oppwa/mobile/connect/utils/b;

    .line 40
    invoke-static {p0, v3}, Lcom/oppwa/mobile/connect/utils/Logger;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-static {v5}, Lcom/oppwa/mobile/connect/utils/Logger;->a(Lcom/oppwa/mobile/connect/utils/b;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/oppwa/mobile/connect/utils/Logger;->a(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    .line 42
    :cond_0
    invoke-static {p0, p2, v3, p3, p4}, Lcom/oppwa/mobile/connect/utils/Logger;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;Lcom/oppwa/mobile/connect/utils/LogSender$CompleteListener;)V

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected static c(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/utils/Logger;->h:Ljava/io/File;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/oppwa/mobile/connect/utils/Logger;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    sput-object p0, Lcom/oppwa/mobile/connect/utils/Logger;->h:Ljava/io/File;

    .line 4
    :cond_0
    sget-object p0, Lcom/oppwa/mobile/connect/utils/Logger;->h:Ljava/io/File;

    return-object p0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 5
    invoke-static {p0}, Lcom/oppwa/mobile/connect/utils/Logger;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/oppwa/mobile/connect/utils/Logger;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ".txt"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 1

    .line 7
    invoke-static {}, Lcom/oppwa/mobile/connect/utils/Logger;->a()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static checkOutdatedFiles(Landroid/content/Context;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/utils/Logger;->i:Lcom/oppwa/mobile/connect/utils/Logger$Mode;

    sget-object v1, Lcom/oppwa/mobile/connect/utils/Logger$Mode;->NONE:Lcom/oppwa/mobile/connect/utils/Logger$Mode;

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 6
    :cond_0
    invoke-static {p0}, Lcom/oppwa/mobile/connect/utils/Logger;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 11
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 12
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".txt"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-static {v3}, Lcom/oppwa/mobile/connect/utils/Logger;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 14
    invoke-static {v3}, Lcom/oppwa/mobile/connect/utils/Logger;->d(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    .line 15
    invoke-static {p0, v3, p1, v4}, Lcom/oppwa/mobile/connect/utils/Logger;->a(Landroid/content/Context;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;Lcom/oppwa/mobile/connect/utils/LogSender$CompleteListener;)V

    goto :goto_1

    .line 17
    :cond_1
    invoke-static {p0, v3}, Lcom/oppwa/mobile/connect/utils/Logger;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-static {p0}, Lcom/oppwa/mobile/connect/utils/Logger;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 4
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x708

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static error(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/utils/Logger;->d:Landroid/content/Context;

    sget-object v1, Lcom/oppwa/mobile/connect/utils/Logger;->e:Ljava/lang/String;

    sget-object v2, Lcom/oppwa/mobile/connect/utils/Logger;->f:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    const-string v3, "ERROR"

    invoke-static {v0, v1, v3, p0, v2}, Lcom/oppwa/mobile/connect/utils/Logger;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;)V

    .line 3
    sget-object v0, Lcom/oppwa/mobile/connect/utils/Logger;->f:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    sget-object v1, Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;->TEST:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/oppwa/mobile/connect/utils/Logger;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ERROR: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/Throwable;)V
    .locals 4

    .line 5
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    invoke-static {p0}, Lcom/oppwa/mobile/connect/utils/Logger;->a([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p0

    .line 8
    sget-object v1, Lcom/oppwa/mobile/connect/utils/Logger;->d:Landroid/content/Context;

    sget-object v2, Lcom/oppwa/mobile/connect/utils/Logger;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/oppwa/mobile/connect/utils/Logger;->f:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    const-string v3, "ERROR"

    invoke-static {v1, v2, v3, p0, v0}, Lcom/oppwa/mobile/connect/utils/Logger;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;)V

    return-void
.end method

.method public static info(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/utils/Logger;->d:Landroid/content/Context;

    sget-object v1, Lcom/oppwa/mobile/connect/utils/Logger;->e:Ljava/lang/String;

    sget-object v2, Lcom/oppwa/mobile/connect/utils/Logger;->f:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    const-string v3, "INFO"

    invoke-static {v0, v1, v3, p0, v2}, Lcom/oppwa/mobile/connect/utils/Logger;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;)V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/oppwa/mobile/connect/utils/Logger;->d:Landroid/content/Context;

    return-void
.end method

.method public static sendLogs()V
    .locals 4

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/utils/Logger;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/oppwa/mobile/connect/utils/Logger;->d:Landroid/content/Context;

    sget-object v2, Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;->EU:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/oppwa/mobile/connect/utils/Logger;->a(Landroid/content/Context;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;Lcom/oppwa/mobile/connect/utils/LogSender$CompleteListener;)V

    :cond_0
    return-void
.end method

.method public static sendLogs(Lcom/oppwa/mobile/connect/utils/LogSender$CompleteListener;)V
    .locals 3

    .line 3
    sget-object v0, Lcom/oppwa/mobile/connect/utils/Logger;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4
    sget-object v1, Lcom/oppwa/mobile/connect/utils/Logger;->d:Landroid/content/Context;

    sget-object v2, Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;->EU:Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;

    invoke-static {v1, v0, v2, p0}, Lcom/oppwa/mobile/connect/utils/Logger;->a(Landroid/content/Context;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/Connect$ProviderDomain;Lcom/oppwa/mobile/connect/utils/LogSender$CompleteListener;)V

    :cond_0
    return-void
.end method

.method public static setCurrentCheckoutId(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/oppwa/mobile/connect/utils/Logger;->e:Ljava/lang/String;

    return-void
.end method

.method public static setLoggerMode(Lcom/oppwa/mobile/connect/utils/Logger$Mode;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/oppwa/mobile/connect/utils/Logger;->i:Lcom/oppwa/mobile/connect/utils/Logger$Mode;

    return-void
.end method

.method public static setProviderMode(Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/oppwa/mobile/connect/utils/Logger;->f:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    return-void
.end method

.method public static warning(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/oppwa/mobile/connect/utils/Logger;->d:Landroid/content/Context;

    sget-object v1, Lcom/oppwa/mobile/connect/utils/Logger;->e:Ljava/lang/String;

    sget-object v2, Lcom/oppwa/mobile/connect/utils/Logger;->f:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    const-string v3, "WARNING"

    invoke-static {v0, v1, v3, p0, v2}, Lcom/oppwa/mobile/connect/utils/Logger;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;)V

    .line 3
    sget-object v0, Lcom/oppwa/mobile/connect/utils/Logger;->f:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    sget-object v1, Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;->TEST:Lcom/oppwa/mobile/connect/provider/Connect$ProviderMode;

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/oppwa/mobile/connect/utils/Logger;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WARNING: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
