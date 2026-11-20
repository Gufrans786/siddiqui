.class public final Lnts/Ἂ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Ͼ:Ljava/lang/String;

.field public static final ౠ:Ljava/lang/String;

.field public static final ᇭ:Ljava/lang/String;

.field public static final ᰛ:Ljava/lang/String;

.field public static final ᾨ:Ljava/lang/String;


# instance fields
.field public final ㆃ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nsoftware/ipworks3ds/sdk/Warning;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xe

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 1
    invoke-static {v1, v2, v0}, Lnts/ᾨ;->ᰛ(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnts/Ἂ;->ᾨ:Ljava/lang/String;

    const/16 v0, 0x43

    .line 2
    invoke-static {v2, v2, v0}, Lnts/ᾨ;->ᰛ(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnts/Ἂ;->ᇭ:Ljava/lang/String;

    const/16 v0, 0x8

    const/16 v1, 0x17

    .line 3
    invoke-static {v0, v2, v1}, Lnts/ᾨ;->ᰛ(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnts/Ἂ;->ᰛ:Ljava/lang/String;

    const/16 v0, 0xc

    const/16 v1, 0x54

    .line 4
    invoke-static {v0, v2, v1}, Lnts/ᾨ;->ᰛ(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnts/Ἂ;->Ͼ:Ljava/lang/String;

    const/16 v0, 0x10

    const/16 v1, 0x53

    .line 5
    invoke-static {v0, v2, v1}, Lnts/ᾨ;->ᰛ(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnts/Ἂ;->ౠ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnts/ᙕ;)V
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v2, v1, Lnts/ᙕ;->Ὺ:Ljava/lang/String;

    .line 3
    iget-object v3, v1, Lnts/ᙕ;->ᎊ:Ljava/util/List;

    .line 4
    iget-object v4, v1, Lnts/ᙕ;->ᡲ:Ljava/util/List;

    .line 5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-static {}, Lnts/ᚇ;->ᇭ()Z

    move-result v6

    const/16 v9, 0x19

    const/16 v10, 0x8

    const/4 v12, 0x2

    const/16 v14, 0xa

    if-nez v6, :cond_7

    .line 7
    invoke-static {}, Lnts/ᚇ;->ㆃ()Z

    move-result v6

    if-nez v6, :cond_7

    const/16 v6, 0xc

    .line 8
    new-array v6, v6, [Ljava/io/File;

    new-instance v7, Ljava/io/File;

    const/16 v16, 0x0

    const/16 v13, 0x669

    const/16 v8, 0x70

    .line 9
    invoke-static {v13, v10, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v7, v6, v16

    new-instance v7, Ljava/io/File;

    const/16 v8, 0x671

    const/16 v13, 0xe

    move/from16 v17, v10

    const/16 v10, 0x59

    .line 10
    invoke-static {v8, v13, v10}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x1

    aput-object v7, v6, v8

    new-instance v7, Ljava/io/File;

    move/from16 v18, v8

    const/16 v8, 0x67f

    const/16 v19, 0x7

    const/16 v15, 0x77

    const/16 v20, 0x4

    const/16 v11, 0xf

    .line 11
    invoke-static {v8, v11, v15}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v7, v6, v12

    new-instance v7, Ljava/io/File;

    const/16 v8, 0x13

    const/16 v15, 0x49

    const/16 v11, 0x68e

    .line 12
    invoke-static {v11, v8, v15}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x3

    aput-object v7, v6, v8

    new-instance v7, Ljava/io/File;

    const/16 v11, 0x6a1

    const/16 v15, 0x75

    const/16 v12, 0x12

    .line 13
    invoke-static {v11, v12, v15}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v7, v6, v20

    new-instance v7, Ljava/io/File;

    const/16 v11, 0x6b3

    const/16 v15, 0x3c

    .line 14
    invoke-static {v11, v12, v15}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x5

    aput-object v7, v6, v11

    new-instance v7, Ljava/io/File;

    const/16 v12, 0x17

    const/16 v15, 0x6e

    move/from16 v22, v11

    const/16 v11, 0x6c5

    .line 15
    invoke-static {v11, v12, v15}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x6

    aput-object v7, v6, v11

    new-instance v7, Ljava/io/File;

    const/16 v12, 0x6dc

    const/16 v15, 0x28

    .line 16
    invoke-static {v12, v9, v15}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v7, v6, v19

    new-instance v7, Ljava/io/File;

    const/16 v12, 0x6f5

    const/16 v9, 0x22

    .line 17
    invoke-static {v12, v9, v10}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v7, v6, v17

    new-instance v7, Ljava/io/File;

    const/16 v9, 0x15

    const/16 v10, 0x6b

    const/16 v12, 0x717

    .line 18
    invoke-static {v12, v9, v10}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x9

    aput-object v7, v6, v9

    new-instance v7, Ljava/io/File;

    const/16 v9, 0x72c

    .line 19
    invoke-static {v9, v13, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v7, v6, v14

    new-instance v7, Ljava/io/File;

    const/16 v9, 0x73a

    const/16 v10, 0xb

    .line 20
    invoke-static {v9, v14, v10}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v7, v6, v10

    .line 21
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 22
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    .line 24
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 25
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v15, 0x60b

    const/4 v10, 0x2

    invoke-static {v15, v11, v10}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    :try_start_1
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-virtual {v10}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v12, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 27
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 29
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    move/from16 v14, v20

    if-lt v13, v14, :cond_2

    .line 30
    invoke-virtual {v12, v8}, Ljava/lang/String;->charAt(I)C

    move-result v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v13, 0x78

    if-eq v12, v13, :cond_0

    const/16 v13, 0x73

    if-ne v12, v13, :cond_2

    .line 39
    :cond_0
    invoke-virtual {v10}, Ljava/lang/Process;->destroy()V

    .line 42
    const-string v7, "05, "

    .line 43
    invoke-static {v7}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v6, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnts/ᚇ;->ㆃ(Ljava/lang/String;)V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v7, v10

    goto :goto_1

    :catchall_1
    move-exception v0

    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_1

    .line 39
    invoke-virtual {v7}, Ljava/lang/Process;->destroy()V

    .line 41
    :cond_1
    throw v0

    :catch_0
    const/4 v10, 0x0

    :catch_1
    if-eqz v10, :cond_3

    .line 42
    :cond_2
    invoke-virtual {v10}, Ljava/lang/Process;->destroy()V

    :cond_3
    const/16 v14, 0xa

    const/16 v15, 0x28

    :cond_4
    const/16 v20, 0x4

    goto/16 :goto_0

    .line 44
    :cond_5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v6

    move/from16 v7, v19

    .line 45
    new-array v9, v7, [Ljava/lang/String;

    const/16 v7, 0x16

    const/16 v10, 0x11

    const/16 v12, 0x744

    .line 46
    invoke-static {v12, v7, v10}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v16

    const/16 v7, 0x75a

    const/16 v10, 0x14

    const/16 v13, 0x78

    .line 47
    invoke-static {v7, v10, v13}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v18

    const/16 v7, 0x76e

    const/16 v12, 0x43

    const/16 v13, 0x21

    .line 48
    invoke-static {v7, v13, v12}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v7

    const/16 v21, 0x2

    aput-object v7, v9, v21

    const/16 v7, 0x78f

    const/16 v12, 0x64

    .line 49
    invoke-static {v7, v13, v12}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v8

    const/16 v7, 0x7b0

    const/16 v8, 0x28

    .line 50
    invoke-static {v7, v10, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v7

    const/16 v20, 0x4

    aput-object v7, v9, v20

    const/16 v7, 0x7c4

    const/16 v8, 0x34

    .line 51
    invoke-static {v7, v10, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v22

    const/16 v7, 0x7d8

    const/16 v8, 0x25

    const/16 v10, 0xf

    .line 52
    invoke-static {v7, v8, v10}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v11

    .line 53
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 54
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    .line 55
    iget-object v9, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v7, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v6, "06, "

    .line 56
    invoke-static {v6}, Lnts/ㆃ;->ㆃ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnts/ᚇ;->ㆃ(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    move/from16 v17, v10

    const/16 v16, 0x0

    .line 57
    :goto_2
    new-instance v6, Lnts/ⱋ;

    invoke-direct {v6}, Lnts/ⱋ;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_8
    iget-boolean v1, v1, Lnts/ᙕ;->Ͼ:Z

    .line 59
    invoke-static {v0, v3, v1}, Lnts/ᚇ;->ㆃ(Landroid/content/Context;Ljava/util/List;Z)Z

    move-result v1

    sput-boolean v1, Lnts/ᚇ;->ㆃ:Z

    .line 60
    invoke-static {v0}, Lnts/ᚇ;->ㆃ(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_11

    sget-boolean v1, Lnts/ᚇ;->ㆃ:Z

    if-eqz v1, :cond_11

    .line 62
    invoke-static {v0, v4}, Lnts/ᚇ;->ㆃ(Landroid/content/Context;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_11

    if-eqz v2, :cond_11

    .line 63
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_8

    :cond_9
    const-string v1, ":"

    const-string v3, ""

    .line 67
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-nez v2, :cond_a

    goto/16 :goto_8

    .line 74
    :cond_a
    :try_start_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_c

    .line 75
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x8000000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 76
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 77
    invoke-virtual {v2}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v2}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v2

    goto :goto_3

    :cond_b
    invoke-virtual {v2}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    move-result-object v2

    goto :goto_3

    .line 79
    :cond_c
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 80
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    move-object v7, v2

    goto :goto_4

    :catch_2
    const/4 v7, 0x0

    :goto_4
    if-nez v7, :cond_d

    goto :goto_8

    .line 86
    :cond_d
    array-length v2, v7

    move/from16 v3, v16

    :goto_5
    if-ge v3, v2, :cond_10

    aget-object v4, v7, v3

    const/16 v6, 0x611

    const/16 v8, 0x3f

    const/4 v9, 0x7

    .line 88
    :try_start_3
    invoke-static {v6, v9, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 89
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    .line 90
    new-instance v6, Ljava/lang/StringBuilder;

    array-length v8, v4
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_4

    const/16 v21, 0x2

    mul-int/lit8 v8, v8, 0x2

    :try_start_4
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 91
    array-length v8, v4

    move/from16 v9, v16

    :goto_6
    if-ge v9, v8, :cond_e

    aget-byte v10, v4, v9
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_3

    const/16 v11, 0x19e

    const/16 v12, 0x34

    const/4 v14, 0x4

    .line 92
    :try_start_5
    invoke-static {v11, v14, v12}, Lnts/ᾨ;->ᇭ(III)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_e
    const/16 v12, 0x34

    const/4 v14, 0x4

    .line 93
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 94
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_5

    if-eqz v4, :cond_f

    goto :goto_9

    :catch_3
    const/16 v12, 0x34

    const/4 v14, 0x4

    goto :goto_7

    :catch_4
    const/16 v12, 0x34

    const/4 v14, 0x4

    const/16 v21, 0x2

    :catch_5
    :cond_f
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_10
    const-string v1, "03"

    .line 101
    invoke-static {v1}, Lnts/ᚇ;->ㆃ(Ljava/lang/String;)V

    .line 102
    :cond_11
    :goto_8
    new-instance v1, Lnts/ཊ;

    invoke-direct {v1}, Lnts/ཊ;-><init>()V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    :goto_9
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const/16 v2, 0x4e2

    const/16 v3, 0x7c

    const/4 v7, 0x7

    invoke-static {v2, v7, v3}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const/16 v2, 0x4e9

    const/16 v3, 0x2f

    .line 104
    invoke-static {v2, v7, v3}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const/16 v2, 0x4f0

    const/16 v3, 0x1f

    .line 105
    invoke-static {v2, v7, v3}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const/16 v2, 0x4f7

    const/16 v3, 0x62

    invoke-static {v2, v7, v3}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    :cond_12
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/16 v2, 0x4fe

    const/16 v3, 0x47

    move/from16 v4, v17

    .line 106
    invoke-static {v2, v4, v3}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/16 v2, 0x506

    const/16 v3, 0x51

    const/16 v4, 0xa

    .line 107
    invoke-static {v2, v4, v3}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/16 v2, 0x510

    const/16 v3, 0x54

    const/16 v4, 0x19

    .line 108
    invoke-static {v2, v4, v3}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const/16 v2, 0x529

    const/16 v3, 0x2a

    const/16 v4, 0xa

    .line 109
    invoke-static {v2, v4, v3}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    const/16 v1, 0x533

    const/16 v2, 0x29

    .line 110
    invoke-static {v1, v4, v2}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 111
    :cond_13
    new-instance v1, Lnts/И;

    invoke-direct {v1}, Lnts/И;-><init>()V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_14
    invoke-static {v0}, Lnts/ᚇ;->ㆃ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 130
    new-instance v0, Lnts/យ;

    invoke-direct {v0}, Lnts/យ;-><init>()V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    move-object/from16 v1, p0

    .line 133
    iput-object v5, v1, Lnts/Ἂ;->ㆃ:Ljava/util/List;

    return-void
.end method

.method public static ㆃ(Landroid/content/Context;Lnts/ᙕ;)Lnts/Ἂ;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 2
    new-instance v0, Lnts/Ἂ;

    invoke-direct {v0, p0, p1}, Lnts/Ἂ;-><init>(Landroid/content/Context;Lnts/ᙕ;)V

    return-object v0
.end method
