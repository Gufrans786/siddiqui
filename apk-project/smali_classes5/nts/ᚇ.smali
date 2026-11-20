.class public Lnts/ᚇ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ㆃ:Z = false


# direct methods
.method public static ᇭ()Z
    .locals 13

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/16 v1, 0x22

    const/16 v2, 0x43

    const/16 v3, 0x55d

    .line 5
    invoke-static {v3, v1, v2}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {}, Lnts/ᚇ;->ᾨ()Ljava/util/List;

    move-result-object v2

    .line 7
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v5, v3, :cond_3

    aget-object v9, v0, v5

    .line 8
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 9
    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v0, "09"

    .line 10
    invoke-static {v0}, Lnts/ᚇ;->ㆃ(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 16
    :cond_1
    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v7, :cond_2

    goto/16 :goto_4

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 17
    :cond_3
    new-array v0, v7, [Ljava/lang/String;

    const/16 v1, 0x5ba

    const/16 v2, 0x24

    const/16 v3, 0x10

    .line 18
    invoke-static {v1, v2, v3}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0x5de

    const/16 v5, 0x60

    .line 19
    invoke-static {v1, v2, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    move v1, v4

    :goto_1
    if-ge v1, v7, :cond_4

    .line 21
    aget-object v2, v0, v1

    .line 23
    :try_start_1
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    :catch_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 24
    :cond_4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x6

    const/16 v5, 0x16

    const/16 v6, 0x57f

    invoke-static {v6, v2, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x585

    const/16 v5, 0x3c

    const/4 v6, 0x5

    invoke-static {v2, v6, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 26
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/16 v1, 0x58a

    const/16 v5, 0x66

    .line 28
    :try_start_3
    invoke-static {v1, v6, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x3

    const/16 v6, 0x5e

    const/16 v7, 0x58f

    .line 29
    invoke-static {v7, v5, v6}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    const/16 v7, 0x46

    const/16 v9, 0x592

    .line 30
    invoke-static {v9, v6, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    .line 31
    :cond_5
    :goto_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 32
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_3

    .line 54
    :cond_6
    invoke-virtual {v7, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v7, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_7
    const-string v9, " "

    .line 55
    invoke-virtual {v7, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v9, v8

    .line 56
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    const/16 v1, 0x14

    const/16 v5, 0x3a

    const/16 v6, 0x596

    .line 59
    invoke-static {v6, v1, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x5aa

    .line 60
    invoke-static {v5, v3, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 62
    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_3

    .line 66
    :cond_a
    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_9

    .line 53
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :goto_4
    move v4, v8

    goto :goto_6

    .line 71
    :cond_b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    :catchall_0
    move-exception v0

    .line 72
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    .line 99
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v2

    :try_start_7
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    :goto_6
    return v4
.end method

.method public static ᾨ()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [Ljava/lang/String;

    const/16 v1, 0x16

    const/16 v2, 0x78

    const/16 v3, 0x61f

    invoke-static {v3, v1, v2}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x20

    const/16 v2, 0x72

    const/16 v3, 0x635

    .line 2
    invoke-static {v3, v1, v2}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x14

    const/16 v2, 0x7e

    const/16 v3, 0x655

    .line 3
    invoke-static {v3, v1, v2}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 4
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static ㆃ(Ljava/lang/String;)V
    .locals 3

    .line 5
    sget-object v0, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    .line 6
    iget-object v0, v0, Lnts/ᄎ;->ᾨ:Lnts/ⱪ;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 7
    const-string v2, "SW"

    invoke-virtual {v0, v1, p0, v2}, Lnts/ⱪ;->ㆃ(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static ㆃ()Z
    .locals 4

    .line 8
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/16 v1, 0x9

    const/16 v2, 0x27

    const/16 v3, 0x602

    .line 9
    invoke-static {v3, v1, v2}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "08"

    .line 11
    invoke-static {v1}, Lnts/ᚇ;->ㆃ(Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public static ㆃ(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-static {}, Lnts/ᚇ;->ᇭ()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_3

    const-string v0, "10"

    .line 4
    invoke-static {v0}, Lnts/ᚇ;->ㆃ(Ljava/lang/String;)V

    :cond_3
    return p0
.end method

.method public static ㆃ(Landroid/content/Context;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16
    :cond_0
    invoke-static {}, Lnts/ᚇ;->ᾨ()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    .line 18
    new-array v1, p1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v3, 0x80

    .line 24
    invoke-virtual {p0, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object p0

    .line 26
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 27
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 28
    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 29
    invoke-interface {v0, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    aput p0, v1, v2

    goto :goto_1

    :cond_4
    :goto_0
    move p1, v2

    :goto_1
    if-eqz p1, :cond_5

    const-string p0, "04, "

    .line 30
    invoke-static {p0}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    aget v0, v1, v2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnts/ᚇ;->ㆃ(Ljava/lang/String;)V

    :cond_5
    return p1
.end method

.method public static ㆃ(Landroid/content/Context;Ljava/util/List;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 33
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p2, :cond_1

    const/16 p1, 0x13

    const/16 p2, 0x15

    const/16 v1, 0x7fd

    .line 34
    invoke-static {v1, p1, p2}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 35
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 36
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "02"

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 38
    invoke-static {p2}, Lnts/ᚇ;->ㆃ(Ljava/lang/String;)V

    return v1

    .line 42
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 43
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 48
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 49
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_5
    const-string p0, "01"

    .line 54
    invoke-static {p0}, Lnts/ᚇ;->ㆃ(Ljava/lang/String;)V

    return v1

    .line 55
    :cond_6
    :goto_0
    invoke-static {p2}, Lnts/ᚇ;->ㆃ(Ljava/lang/String;)V

    return v1
.end method
