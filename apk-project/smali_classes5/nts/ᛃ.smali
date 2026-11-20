.class public Lnts/ᛃ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final Ͼ:Ljava/lang/String;

.field public ᇭ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final ᰛ:Ljava/lang/String;

.field public final ᾨ:Lnts/ᙕ;

.field public ㆃ:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnts/ᙕ;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lnts/ᛃ;->ᾨ:Lnts/ᙕ;

    .line 4
    iput-object p3, p0, Lnts/ᛃ;->ᰛ:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lnts/ᛃ;->Ͼ:Ljava/lang/String;

    return-void
.end method

.method public static Ͼ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ౠ(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static ᇭ(Landroid/content/Context;Ljava/lang/String;)F
    .locals 1

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static ᰛ(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .line 355
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static ᾨ(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    .line 13
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_inversion_enabled"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v1, 0xd

    const/16 v2, 0x5c

    const/16 v3, 0x4ca

    .line 16
    invoke-static {v3, v1, v2}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v1

    .line 18
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move p0, v0

    :goto_0
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static ᾨ(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public static ㆃ()Ljava/lang/String;
    .locals 7

    .line 52
    const-class v0, Landroid/os/Build$VERSION_CODES;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x7

    const/16 v2, 0x71

    const/16 v3, 0x4d7

    .line 53
    invoke-static {v3, v1, v2}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v1

    .line 54
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 56
    :try_start_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const-class v6, Landroid/os/Build$VERSION_CODES;

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 57
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static ㆃ(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const/16 v0, 0x39

    const/16 v1, 0x37

    const/4 v2, 0x0

    const/16 v3, 0x478

    .line 43
    :try_start_0
    invoke-static {v3, v0, v1}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 45
    new-array v1, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/16 v3, 0x14

    const/16 v5, 0x56

    const/16 v6, 0x4b1

    .line 46
    invoke-static {v6, v3, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 48
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x5

    const/16 v3, 0x7a

    const/16 v5, 0x4c5

    invoke-static {v5, v1, v3}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 51
    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object v2
.end method

.method public static ㆃ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ㆃ(Z)Ljava/lang/String;
    .locals 5

    .line 22
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 24
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 25
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 26
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1

    .line 27
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3a

    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x0

    if-gez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    if-eqz p0, :cond_3

    if-eqz v3, :cond_1

    return-object v2

    :cond_3
    if-nez v3, :cond_1

    const/16 p0, 0x25

    .line 35
    invoke-virtual {v2, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-gez p0, :cond_4

    .line 36
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {v2, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_5
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public final ᇭ(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnts/\u1827;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x7

    const/16 v1, 0x470

    const/4 v2, 0x4

    .line 7
    invoke-static {v1, v2, v0}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v5

    const/16 v0, 0x474

    const/16 v1, 0x5d

    invoke-static {v0, v2, v1}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x2

    move-object v3, p0

    move-object v4, p1

    .line 8
    invoke-virtual/range {v3 .. v8}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public final ᰛ(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnts/\u1827;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 2
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 7
    :cond_0
    iget-object v2, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 11
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1f

    const/16 v6, 0x24

    const/16 v7, 0x1a

    if-lt v4, v5, :cond_1

    .line 15
    iget-object v4, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const/16 v5, 0x59

    invoke-static {v7, v6, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnts/ᛃ;->ౠ(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    goto :goto_0

    .line 17
    :cond_1
    iget-object v4, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH"

    invoke-static {v4, v5}, Lnts/ᛃ;->ౠ(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    :goto_0
    if-eqz v4, :cond_2

    .line 19
    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v8, "bluetooth"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothManager;

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_3

    const/4 v5, 0x0

    goto :goto_2

    .line 20
    :cond_3
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    :goto_2
    const/4 v8, 0x3

    const/16 v9, 0x4f

    const/16 v10, 0x3e

    .line 22
    invoke-static {v10, v8, v9}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v8

    const-string v9, "DV"

    const/4 v10, 0x0

    invoke-virtual {v0, v1, v9, v8, v10}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v8, 0x41

    const/4 v9, 0x4

    .line 23
    invoke-static {v8, v9, v6}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x45

    const/4 v13, 0x7

    const/16 v14, 0x71

    invoke-static {v12, v13, v14}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v1, v11, v12}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x17

    const/16 v12, 0x4c

    .line 24
    invoke-static {v12, v9, v11}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v11

    sget-object v13, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v11, v13}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x50

    const/16 v13, 0x1c

    .line 25
    invoke-static {v11, v9, v13}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lnts/ᛃ;->ㆃ()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v1, v11, v15}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x54

    const/16 v15, 0x12

    .line 26
    invoke-static {v11, v9, v15}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v11

    sget-object v14, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v11, v14}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x6

    const/16 v14, 0x58

    .line 27
    invoke-static {v14, v9, v11}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v11

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v13, 0x2d

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v11, v8}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x5c

    const/16 v11, 0x1d

    .line 28
    invoke-static {v8, v9, v11}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v13

    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v13, v12}, Ljava/util/TimeZone;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v1, v8, v12}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v8, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    invoke-static {v8}, Lnts/ᛃ;->ㆃ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const/16 v12, 0x60

    if-nez v8, :cond_4

    const/16 v8, 0x37

    .line 31
    invoke-static {v12, v9, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v8

    const/16 v13, 0x64

    const/16 v12, 0x7d

    invoke-static {v13, v9, v12}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v1, v8, v12}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const/16 v12, 0x68

    .line 33
    invoke-static {v12, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v1, v12, v8}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const/16 v8, 0x49

    const/16 v12, 0x6c

    .line 35
    invoke-static {v12, v9, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v8

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, "x"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v13, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v8, v7}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x6d

    const/16 v8, 0xa

    if-eqz v5, :cond_5

    .line 37
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v13, 0x70

    .line 38
    invoke-static {v13, v9, v6}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v1, v13, v4}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    const/16 v13, 0x74

    .line 40
    invoke-static {v13, v9, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v13

    if-eqz v4, :cond_6

    const/16 v4, 0x78

    const/16 v6, 0x49

    invoke-static {v4, v9, v6}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_6
    const/16 v4, 0x7c

    invoke-static {v4, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    :goto_4
    invoke-virtual {v0, v1, v13, v4}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    const/16 v4, 0x80

    const/16 v6, 0x79

    .line 42
    invoke-static {v4, v9, v6}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    invoke-static {v6}, Lnts/ᛃ;->ㆃ(Z)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v1, v4, v13}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x84

    .line 43
    invoke-static {v4, v9, v10}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    const/16 v13, 0x88

    invoke-static {v13, v9, v14}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v1, v4, v13}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x8c

    const/16 v13, 0x15

    .line 44
    invoke-static {v4, v9, v13}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    const/16 v13, 0x90

    const/16 v7, 0x75

    invoke-static {v13, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v4, v7}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x94

    const/16 v7, 0x4e

    .line 45
    invoke-static {v4, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v7, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v4, v7}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x98

    const/16 v7, 0x74

    .line 46
    invoke-static {v4, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v7, v0, Lnts/ᛃ;->ᰛ:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v7}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x9c

    const/16 v7, 0x28

    .line 47
    invoke-static {v4, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v7, v0, Lnts/ᛃ;->Ͼ:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v7}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v4, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    const/16 v13, 0x7b

    if-eqz v4, :cond_e

    .line 53
    iget-object v12, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v10, "android.permission.READ_PHONE_STATE"

    invoke-static {v12, v10}, Lnts/ᛃ;->ౠ(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 54
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v10

    if-ne v10, v6, :cond_7

    move v12, v6

    goto :goto_6

    :cond_7
    const/4 v12, 0x0

    .line 58
    :goto_6
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v11, :cond_8

    const/16 v6, 0xa0

    const/16 v8, 0x3d

    .line 61
    invoke-static {v6, v9, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0xa4

    const/16 v7, 0x15

    invoke-static {v8, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v6, v7}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0xa8

    const/16 v7, 0x35

    .line 62
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xac

    const/16 v8, 0x2a

    invoke-static {v7, v9, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v6, v7}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0xb0

    .line 63
    invoke-static {v6, v9, v13}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xb4

    const/16 v8, 0x76

    invoke-static {v7, v9, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v6, v7}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0xb8

    const/16 v7, 0x2c

    .line 64
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xbc

    const/16 v8, 0x2a

    invoke-static {v7, v9, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v6, v7}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_8
    const/16 v6, 0xc0

    const/16 v7, 0x9

    .line 66
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v6, v7}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0xc4

    .line 67
    invoke-static {v6, v9, v15}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v6, v7}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0xc8

    const/16 v7, 0x44

    .line 68
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v6, v7}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0xcc

    const/16 v7, 0xe

    .line 69
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v6, v7}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    if-eqz v12, :cond_9

    const/16 v6, 0xd0

    const/16 v7, 0x27

    .line 73
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v6, v7}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_9
    const/16 v6, 0xd4

    .line 75
    invoke-static {v6, v9, v14}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xd8

    const/16 v8, 0x17

    invoke-static {v7, v9, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v6, v7}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :goto_8
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v6

    .line 79
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v7, v11, :cond_b

    if-eqz v6, :cond_a

    .line 80
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_b

    .line 81
    :cond_a
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    :cond_b
    const/16 v7, 0xdc

    const/16 v8, 0x6f

    .line 83
    invoke-static {v7, v9, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v7, v6}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0xe0

    const/16 v7, 0x3a

    .line 84
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getMmsUAProfUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v6, v7}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0xe4

    const/16 v7, 0x17

    .line 85
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getMmsUserAgent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v6, v7}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0xe8

    const/16 v7, 0x27

    .line 86
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v6, v7}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0xec

    const/16 v7, 0x4a

    .line 87
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v6, v7}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0xf0

    const/16 v7, 0x5d

    .line 88
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v6, v7}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0xf4

    const/16 v7, 0x66

    .line 89
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v7

    invoke-virtual {v0, v1, v6, v7}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;I)V

    const/16 v6, 0xf8

    const/16 v7, 0x3a

    .line 91
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v7

    invoke-virtual {v0, v1, v6, v7}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;I)V

    const/16 v6, 0x104

    const/16 v7, 0xa

    .line 95
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6, v10}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;I)V

    const/16 v6, 0x108

    const/16 v7, 0x16

    .line 96
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v6, v7}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x10c

    .line 97
    invoke-static {v6, v9, v14}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v6, v7}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x110

    const/4 v7, 0x0

    .line 98
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v6, v7}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x114

    const/16 v7, 0x6c

    .line 99
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    invoke-virtual {v0, v1, v6, v7}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;I)V

    const/16 v6, 0x118

    const/16 v7, 0x1a

    .line 100
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v6, v7}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x11c

    const/16 v7, 0x21

    .line 101
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v6, v7}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x120

    const/16 v7, 0x6c

    .line 102
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v7

    invoke-virtual {v0, v1, v6, v7}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Z)V

    const/16 v6, 0x124

    const/16 v7, 0x48

    .line 105
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isHearingAidCompatibilitySupported()Z

    move-result v7

    invoke-virtual {v0, v1, v6, v7}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Z)V

    const/16 v6, 0x130

    const/16 v7, 0x62

    .line 109
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v7

    invoke-virtual {v0, v1, v6, v7}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Z)V

    const/16 v6, 0x134

    const/16 v7, 0x4c

    .line 112
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v7

    invoke-virtual {v0, v1, v6, v7}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Z)V

    .line 117
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1c

    if-lt v6, v7, :cond_d

    .line 118
    iget-object v6, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v7, "telecom"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/TelecomManager;

    if-nez v6, :cond_c

    const/16 v6, 0x140

    const/16 v7, 0x20

    .line 120
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x144

    const/16 v8, 0x1f

    invoke-static {v7, v9, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v6, v7}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_c
    const/16 v7, 0x148

    const/4 v8, 0x1

    .line 122
    invoke-static {v7, v9, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Landroid/telecom/TelecomManager;->isTtySupported()Z

    move-result v6

    invoke-virtual {v0, v1, v7, v6}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Z)V

    goto :goto_9

    :cond_d
    const/16 v6, 0x14c

    const/16 v7, 0xd

    .line 125
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isTtyModeSupported()Z

    move-result v7

    invoke-virtual {v0, v1, v6, v7}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Z)V

    :goto_9
    const/16 v6, 0x158

    const/16 v7, 0x3d

    .line 130
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v7

    invoke-virtual {v0, v1, v6, v7}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Z)V

    const/16 v6, 0x164

    const/16 v7, 0x5a

    .line 135
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isWorldPhone()Z

    move-result v4

    invoke-virtual {v0, v1, v6, v4}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Z)V

    goto/16 :goto_b

    :cond_e
    if-nez v4, :cond_f

    const/16 v4, 0x170

    const/16 v6, 0x19

    goto :goto_a

    :cond_f
    const/16 v4, 0x174

    const/16 v6, 0x36

    .line 140
    :goto_a
    invoke-static {v4, v9, v6}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x178

    const/16 v7, 0x4c

    .line 141
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6, v4}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x17c

    const/16 v7, 0x21

    .line 142
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6, v4}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x180

    const/16 v7, 0xa

    .line 143
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6, v4}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x184

    const/16 v7, 0x46

    .line 144
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6, v4}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x188

    const/16 v7, 0x32

    .line 145
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6, v4}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x18c

    const/16 v7, 0x65

    .line 146
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6, v4}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x190

    const/16 v7, 0x22

    .line 147
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6, v4}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x194

    const/16 v7, 0x48

    .line 148
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6, v4}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x198

    const/16 v7, 0x46

    .line 149
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6, v4}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x19c

    const/16 v7, 0x57

    .line 150
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6, v4}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x1a0

    const/16 v7, 0x13

    .line 151
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6, v4}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x1a4

    const/16 v7, 0x57

    .line 152
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6, v4}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x1a8

    const/16 v7, 0x31

    .line 153
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6, v4}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x1ac

    const/16 v7, 0x4f

    .line 154
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6, v4}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x1b0

    const/16 v7, 0x29

    .line 155
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6, v4}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x1b4

    const/16 v7, 0x13

    .line 156
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6, v4}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x1b8

    const/16 v7, 0x34

    .line 157
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6, v4}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x1bc

    const/16 v7, 0x65

    .line 158
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6, v4}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x1c0

    const/16 v7, 0x3f

    .line 159
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6, v4}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x1c4

    const/16 v7, 0x41

    .line 160
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6, v4}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x1c8

    const/16 v7, 0x34

    .line 161
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6, v4}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x1cc

    const/16 v7, 0x1f

    .line 162
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6, v4}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x1d0

    const/16 v7, 0x7e

    .line 163
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6, v4}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x1d4

    const/16 v7, 0x7a

    .line 164
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6, v4}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x1d8

    const/16 v7, 0x63

    .line 165
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6, v4}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x1dc

    const/16 v7, 0x7a

    .line 166
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6, v4}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x1e0

    const/16 v7, 0x52

    .line 167
    invoke-static {v6, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6, v4}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :goto_b
    iget-object v4, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "wifi"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_10

    .line 172
    iget-object v6, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v7, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {v6, v7}, Lnts/ᛃ;->ౠ(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 173
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    goto :goto_c

    :cond_10
    const/4 v6, 0x0

    :goto_c
    if-eqz v6, :cond_11

    const/16 v7, 0x1e4

    const/16 v8, 0x4a

    .line 176
    invoke-static {v7, v9, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v7, v8}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x1e8

    .line 177
    invoke-static {v7, v9, v13}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v7, v8}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x1ec

    const/16 v8, 0x5b

    .line 178
    invoke-static {v7, v9, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v7, v8}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x1f0

    const/16 v8, 0x59

    .line 179
    invoke-static {v7, v9, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v8

    invoke-virtual {v0, v1, v7, v8}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;I)V

    goto :goto_d

    :cond_11
    const/16 v7, 0x1f4

    const/16 v8, 0x21

    .line 181
    invoke-static {v7, v9, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1f8

    const/16 v10, 0x34

    invoke-static {v8, v9, v10}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v7, v8}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x1fc

    const/16 v8, 0x52

    .line 182
    invoke-static {v7, v9, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x200

    const/16 v10, 0x66

    invoke-static {v8, v9, v10}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v7, v8}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x204

    const/16 v8, 0x71

    .line 183
    invoke-static {v7, v9, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x208

    const/16 v10, 0x1e

    invoke-static {v8, v9, v10}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v7, v8}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x20c

    const/16 v8, 0x5d

    .line 184
    invoke-static {v7, v9, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x210

    const/16 v10, 0x32

    invoke-static {v8, v9, v10}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v7, v8}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    if-eqz v6, :cond_12

    const/16 v7, 0x214

    const/16 v8, 0x6f

    .line 187
    invoke-static {v7, v9, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->is5GHzBandSupported()Z

    move-result v8

    invoke-virtual {v0, v1, v7, v8}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Z)V

    const/16 v7, 0x218

    const/16 v8, 0x72

    .line 188
    invoke-static {v7, v9, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isDeviceToApRttSupported()Z

    move-result v8

    invoke-virtual {v0, v1, v7, v8}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Z)V

    const/16 v7, 0x21c

    const/16 v8, 0x60

    .line 189
    invoke-static {v7, v9, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isEnhancedPowerReportingSupported()Z

    move-result v8

    invoke-virtual {v0, v1, v7, v8}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Z)V

    const/16 v7, 0x220

    const/4 v8, 0x3

    .line 190
    invoke-static {v7, v9, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isP2pSupported()Z

    move-result v8

    invoke-virtual {v0, v1, v7, v8}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Z)V

    const/16 v7, 0x224

    const/16 v8, 0xa

    .line 191
    invoke-static {v7, v9, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isPreferredNetworkOffloadSupported()Z

    move-result v8

    invoke-virtual {v0, v1, v7, v8}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Z)V

    const/16 v7, 0x228

    const/16 v8, 0x55

    .line 192
    invoke-static {v7, v9, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v8

    invoke-virtual {v0, v1, v7, v8}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Z)V

    const/16 v7, 0x22c

    const/16 v8, 0x4f

    .line 193
    invoke-static {v7, v9, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isTdlsSupported()Z

    move-result v4

    invoke-virtual {v0, v1, v7, v4}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Z)V

    goto/16 :goto_e

    :cond_12
    const/16 v4, 0x230

    const/16 v7, 0x61

    .line 195
    invoke-static {v4, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x234

    const/16 v8, 0x65

    invoke-static {v7, v9, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v4, v7}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x238

    const/16 v7, 0x7f

    .line 196
    invoke-static {v4, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x23c

    const/16 v8, 0x69

    invoke-static {v7, v9, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v4, v7}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x240

    const/16 v7, 0x53

    .line 197
    invoke-static {v4, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x244

    invoke-static {v7, v9, v13}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v4, v7}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x248

    const/4 v8, 0x1

    .line 198
    invoke-static {v4, v9, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x24c

    const/16 v8, 0x49

    invoke-static {v7, v9, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v4, v7}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x250

    const/4 v7, 0x2

    .line 199
    invoke-static {v4, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x254

    const/16 v8, 0x4d

    invoke-static {v7, v9, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v4, v7}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x258

    const/16 v7, 0x42

    .line 200
    invoke-static {v4, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x25c

    const/16 v8, 0x23

    invoke-static {v7, v9, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v4, v7}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x260

    const/16 v7, 0x27

    .line 201
    invoke-static {v4, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x264

    const/16 v8, 0x62

    invoke-static {v7, v9, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v4, v7}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    if-eqz v5, :cond_14

    const/16 v4, 0x268

    const/16 v7, 0x30

    .line 205
    invoke-static {v4, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v4, v7}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 207
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 208
    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 209
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/bluetooth/BluetoothDevice;

    .line 210
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_13
    const/16 v4, 0x26c

    const/16 v8, 0x37

    .line 212
    invoke-static {v4, v9, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4, v7}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    const/16 v4, 0x270

    const/16 v7, 0x64

    .line 213
    invoke-static {v4, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Z)V

    goto :goto_10

    :cond_14
    const/16 v4, 0x274

    const/16 v5, 0x24

    .line 215
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x278

    const/16 v7, 0x36

    invoke-static {v5, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x27c

    const/16 v5, 0x7e

    .line 216
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x280

    const/16 v7, 0x22

    invoke-static {v5, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x284

    const/16 v5, 0x63

    .line 217
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x288

    const/16 v7, 0x52

    invoke-static {v5, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    :goto_10
    const/16 v4, 0x28c

    const/16 v7, 0x1c

    .line 220
    invoke-static {v4, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x290

    const/16 v7, 0x4a

    .line 221
    invoke-static {v4, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x294

    .line 222
    invoke-static {v4, v9, v13}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x298

    const/16 v5, 0x5e

    .line 223
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x29c

    const/4 v5, 0x5

    .line 224
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x2a0

    const/16 v8, 0x71

    .line 225
    invoke-static {v4, v9, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x2a4

    const/16 v5, 0x16

    .line 226
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x2a8

    const/16 v5, 0x46

    .line 227
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x2ac

    const/16 v5, 0x3a

    .line 228
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x2b0

    const/16 v7, 0x6c

    .line 229
    invoke-static {v4, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x2b4

    const/16 v5, 0x76

    .line 230
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x2b8

    const/16 v8, 0x60

    .line 231
    invoke-static {v4, v9, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_15

    const/16 v4, 0x2bc

    const/16 v5, 0x74

    .line 234
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x2c0

    const/16 v5, 0x38

    .line 235
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_15
    const/16 v4, 0x2c4

    const/16 v7, 0x21

    .line 237
    invoke-static {v4, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2c8

    const/16 v6, 0x5b

    invoke-static {v5, v9, v6}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x2cc

    const/16 v5, 0x4b

    .line 238
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2d0

    const/16 v7, 0x1c

    invoke-static {v5, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    const/16 v4, 0x2d4

    const/16 v5, 0x7d

    .line 241
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x2d8

    const/16 v5, 0x15

    .line 242
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    sget-wide v5, Landroid/os/Build;->TIME:J

    long-to-float v5, v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;F)V

    const/16 v4, 0x2dc

    const/16 v5, 0x67

    .line 243
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x2e0

    const/16 v5, 0x2d

    .line 244
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x2e4

    const/16 v8, 0x60

    .line 246
    invoke-static {v4, v9, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x2e8

    const/16 v5, 0x1b

    .line 247
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x2ec

    const/16 v8, 0x71

    .line 249
    invoke-static {v4, v9, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    sget v5, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;I)V

    const/16 v4, 0x2f0

    const/16 v8, 0x60

    .line 250
    invoke-static {v4, v9, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x2f4

    const/16 v5, 0x53

    .line 251
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "dtmf_tone_type"

    invoke-static {v5, v6}, Lnts/ᛃ;->Ͼ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x2f8

    const/16 v7, 0x4a

    .line 252
    invoke-static {v4, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "vibrate_when_ringing"

    invoke-static {v5, v6}, Lnts/ᛃ;->ᾨ(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Z)V

    const/16 v4, 0x31c

    .line 261
    invoke-static {v4, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;I)V

    const/16 v4, 0x320

    const/16 v5, 0x54

    .line 264
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    invoke-static {v5}, Lnts/ᛃ;->ᾨ(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Z)V

    const/16 v4, 0x324

    const/4 v5, 0x7

    .line 265
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "accessibility_enabled"

    invoke-static {v5, v6}, Lnts/ᛃ;->ㆃ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-lt v4, v7, :cond_16

    const/16 v4, 0x328

    .line 267
    invoke-static {v4, v9, v13}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x32c

    const/16 v6, 0x4d

    invoke-static {v5, v9, v6}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_16
    const/16 v4, 0x330

    const/16 v7, 0x1c

    .line 269
    invoke-static {v4, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "speak_password"

    invoke-static {v5, v6}, Lnts/ᛃ;->ㆃ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    :goto_12
    const/16 v4, 0x334

    const/16 v7, 0x52

    .line 271
    invoke-static {v4, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "allowed_geolocation_origins"

    invoke-static {v5, v6}, Lnts/ᛃ;->ㆃ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x338

    .line 272
    invoke-static {v4, v9, v11}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "android_id"

    invoke-static {v5, v6}, Lnts/ᛃ;->ㆃ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x33c

    const/16 v5, 0x76

    .line 273
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "data_roaming"

    invoke-static {v5, v6}, Lnts/ᛃ;->ㆃ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x340

    const/16 v5, 0x5d

    .line 274
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "default_input_method"

    invoke-static {v5, v6}, Lnts/ᛃ;->ㆃ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x344

    const/16 v7, 0x4c

    .line 275
    invoke-static {v4, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "device_provisioned"

    invoke-static {v5, v6}, Lnts/ᛃ;->ㆃ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x348

    const/16 v5, 0x53

    .line 276
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "enabled_accessibility_services"

    invoke-static {v5, v6}, Lnts/ᛃ;->ㆃ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x34c

    const/16 v5, 0x51

    .line 277
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "enabled_input_methods"

    invoke-static {v5, v6}, Lnts/ᛃ;->ㆃ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x350

    const/16 v5, 0x6d

    .line 278
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "input_method_selector_visibility"

    invoke-static {v5, v6}, Lnts/ᛃ;->ㆃ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x354

    const/16 v7, 0x34

    .line 279
    invoke-static {v4, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "install_non_market_apps"

    invoke-static {v5, v6}, Lnts/ᛃ;->ㆃ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual/range {p0 .. p1}, Lnts/ᛃ;->ㆃ(Ljava/util/List;)V

    .line 281
    invoke-virtual/range {p0 .. p1}, Lnts/ᛃ;->ᾨ(Ljava/util/List;)V

    .line 282
    invoke-virtual/range {p0 .. p1}, Lnts/ᛃ;->ᇭ(Ljava/util/List;)V

    const/16 v4, 0x358

    const/16 v5, 0x24

    .line 283
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "tts_default_pitch"

    invoke-static {v5, v6}, Lnts/ᛃ;->ㆃ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x35c

    .line 284
    invoke-static {v4, v9, v13}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "tts_default_rate"

    invoke-static {v5, v6}, Lnts/ᛃ;->ㆃ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x360

    const/16 v5, 0x13

    .line 285
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "tts_default_synth"

    invoke-static {v5, v6}, Lnts/ᛃ;->ㆃ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x364

    const/16 v5, 0x6f

    .line 286
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "tts_enabled_plugins"

    invoke-static {v5, v6}, Lnts/ᛃ;->ㆃ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x368

    const/16 v5, 0x33

    .line 288
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "adb_enabled"

    invoke-static {v5, v6}, Lnts/ᛃ;->ᾨ(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Z)V

    const/16 v4, 0x36c

    const/16 v7, 0x41

    .line 289
    invoke-static {v4, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "airplane_mode_radios"

    invoke-static {v5, v6}, Lnts/ᛃ;->Ͼ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x370

    const/16 v7, 0x52

    .line 290
    invoke-static {v4, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "always_finish_activities"

    invoke-static {v5, v6}, Lnts/ᛃ;->ᾨ(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Z)V

    const/16 v4, 0x374

    const/16 v5, 0x6b

    .line 291
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "animator_duration_scale"

    invoke-static {v5, v6}, Lnts/ᛃ;->ᇭ(Landroid/content/Context;Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;F)V

    const/16 v4, 0x378

    const/16 v5, 0x70

    .line 292
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "auto_time"

    invoke-static {v5, v6}, Lnts/ᛃ;->ᾨ(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Z)V

    const/16 v4, 0x37c

    const/16 v7, 0x1a

    .line 293
    invoke-static {v4, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "auto_time_zone"

    invoke-static {v5, v6}, Lnts/ᛃ;->ᾨ(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Z)V

    const/16 v4, 0x380

    .line 294
    invoke-static {v4, v9, v15}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "development_settings_enabled"

    invoke-static {v5, v6}, Lnts/ᛃ;->ᾨ(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Z)V

    const/16 v4, 0x384

    .line 295
    invoke-static {v4, v9, v11}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "http_proxy"

    invoke-static {v5, v6}, Lnts/ᛃ;->Ͼ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x388

    const/16 v5, 0xb

    .line 296
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "network_preference"

    invoke-static {v5, v6}, Lnts/ᛃ;->Ͼ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x38c

    const/16 v5, 0x55

    .line 297
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "stay_on_while_plugged_in"

    invoke-static {v5, v6}, Lnts/ᛃ;->ᰛ(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;I)V

    const/16 v4, 0x390

    const/4 v5, 0x3

    .line 298
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "transition_animation_scale"

    invoke-static {v5, v6}, Lnts/ᛃ;->ᇭ(Landroid/content/Context;Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;F)V

    const/16 v4, 0x394

    .line 299
    invoke-static {v4, v9, v15}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "usb_mass_storage_enabled"

    invoke-static {v5, v6}, Lnts/ᛃ;->ᾨ(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Z)V

    const/16 v4, 0x398

    const/16 v5, 0x68

    .line 300
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "use_google_mail"

    invoke-static {v5, v6}, Lnts/ᛃ;->Ͼ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x39c

    const/16 v5, 0x9

    .line 301
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "wait_for_debugger"

    invoke-static {v5, v6}, Lnts/ᛃ;->ᾨ(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Z)V

    const/16 v4, 0x3a0

    const/16 v5, 0x5e

    .line 302
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "wifi_networks_available_notification_on"

    invoke-static {v5, v6}, Lnts/ᛃ;->ᾨ(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Z)V

    const/16 v4, 0x3a4

    .line 303
    invoke-static {v4, v9, v13}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "accelerometer_rotation"

    invoke-static {v5, v6}, Lnts/ᛃ;->ᾨ(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Z)V

    const/16 v4, 0x3a8

    const/16 v5, 0x44

    .line 304
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "bluetooth_discoverability"

    invoke-static {v5, v6}, Lnts/ᛃ;->ᾨ(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Z)V

    const/16 v4, 0x3ac

    const/16 v6, 0x36

    .line 305
    invoke-static {v4, v9, v6}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "bluetooth_discoverability_timeout"

    invoke-static {v5, v6}, Lnts/ᛃ;->ᰛ(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;I)V

    const/16 v4, 0x3b0

    const/4 v7, 0x0

    .line 306
    invoke-static {v4, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "date_format"

    invoke-static {v5, v6}, Lnts/ᛃ;->Ͼ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x3b4

    const/16 v5, 0x6b

    .line 307
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "dtmf_tone"

    invoke-static {v5, v6}, Lnts/ᛃ;->ᾨ(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Z)V

    const/16 v4, 0x3b8

    const/16 v5, 0x39

    .line 308
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "end_button_behavior"

    invoke-static {v5, v6}, Lnts/ᛃ;->Ͼ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x3bc

    const/16 v5, 0x38

    .line 309
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "font_scale"

    invoke-static {v5, v6}, Lnts/ᛃ;->ᇭ(Landroid/content/Context;Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;F)V

    const/16 v4, 0x3c0

    const/16 v5, 0x57

    .line 310
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "haptic_feedback_enabled"

    invoke-static {v5, v6}, Lnts/ᛃ;->ᾨ(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Z)V

    const/16 v4, 0x3c4

    const/16 v7, 0x41

    .line 311
    invoke-static {v4, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "mode_ringer_streams_affected"

    invoke-static {v5, v6}, Lnts/ᛃ;->Ͼ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x3c8

    const/16 v5, 0x7c

    .line 312
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "notification_sound"

    invoke-static {v5, v6}, Lnts/ᛃ;->Ͼ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x3cc

    const/16 v5, 0x69

    .line 313
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "mute_streams_affected"

    invoke-static {v5, v6}, Lnts/ᛃ;->Ͼ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x3d0

    const/16 v5, 0x10

    .line 314
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "ringtone"

    invoke-static {v5, v6}, Lnts/ᛃ;->Ͼ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x3d4

    const/16 v5, 0x6d

    .line 315
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "screen_brightness"

    invoke-static {v5, v6}, Lnts/ᛃ;->ᰛ(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;I)V

    const/16 v4, 0x3d8

    const/16 v5, 0x40

    .line 316
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "screen_brightness_mode"

    invoke-static {v5, v6}, Lnts/ᛃ;->ᾨ(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Z)V

    const/16 v4, 0x3dc

    const/16 v8, 0x60

    .line 317
    invoke-static {v4, v9, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "screen_off_timeout"

    invoke-static {v5, v6}, Lnts/ᛃ;->ᰛ(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;I)V

    const/16 v4, 0x3e0

    const/16 v5, 0x6d

    .line 318
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "sound_effects_enabled"

    invoke-static {v5, v6}, Lnts/ᛃ;->ᾨ(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Z)V

    const/16 v4, 0x3e4

    const/16 v5, 0x75

    .line 319
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "auto_caps"

    invoke-static {v5, v6}, Lnts/ᛃ;->ᾨ(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Z)V

    const/16 v4, 0x3e8

    const/16 v6, 0x36

    .line 320
    invoke-static {v4, v9, v6}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "auto_punctuate"

    invoke-static {v5, v6}, Lnts/ᛃ;->ᾨ(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Z)V

    const/16 v4, 0x3ec

    const/16 v5, 0x7e

    .line 321
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "auto_replace"

    invoke-static {v5, v6}, Lnts/ᛃ;->ᾨ(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Z)V

    const/16 v4, 0x3f0

    const/16 v7, 0x1c

    .line 322
    invoke-static {v4, v9, v7}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "show_password"

    invoke-static {v5, v6}, Lnts/ᛃ;->ᾨ(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Z)V

    const/16 v4, 0x3f4

    const/16 v5, 0x5c

    .line 323
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "time_12_24"

    invoke-static {v5, v6}, Lnts/ᛃ;->Ͼ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x3f8

    const/16 v5, 0x47

    .line 324
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "user_rotation"

    invoke-static {v5, v6}, Lnts/ᛃ;->Ͼ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x3fc

    const/16 v5, 0x47

    .line 325
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v6, "vibrate_on"

    invoke-static {v5, v6}, Lnts/ᛃ;->ᾨ(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Z)V

    const/16 v4, 0x400

    const/16 v5, 0x51

    .line 327
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Z)V

    const/4 v7, 0x0

    .line 329
    invoke-virtual {v2, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v4

    .line 330
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 332
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_17

    .line 333
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 334
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_17
    const/16 v4, 0x404

    const/16 v6, 0x51

    .line 338
    invoke-static {v4, v9, v6}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    const/16 v4, 0x408

    const/16 v5, 0x1b

    .line 339
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x40c

    const/16 v5, 0x64

    .line 340
    invoke-static {v4, v9, v5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v0, v1, v4, v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;I)V

    .line 341
    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x410

    .line 342
    invoke-static {v4, v9, v9}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    if-nez v2, :cond_18

    move v10, v7

    goto :goto_14

    :cond_18
    array-length v10, v2

    :goto_14
    invoke-virtual {v0, v1, v4, v10}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;I)V

    const/16 v2, 0x414

    const/16 v4, 0x29

    .line 344
    invoke-static {v2, v9, v4}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x418

    const/16 v4, 0x79

    .line 345
    invoke-static {v2, v9, v4}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v0, v1, v2, v4}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;I)V

    const/16 v2, 0x41c

    const/16 v4, 0x16

    .line 347
    invoke-static {v2, v9, v4}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v2

    iget v4, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0, v1, v2, v4}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;F)V

    const/16 v2, 0x420

    const/16 v4, 0x22

    .line 348
    invoke-static {v2, v9, v4}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v2

    iget v4, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v1, v2, v4}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;I)V

    const/16 v2, 0x424

    const/16 v8, 0x71

    .line 349
    invoke-static {v2, v9, v8}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v2

    iget v4, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {v0, v1, v2, v4}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;F)V

    const/16 v2, 0x428

    const/16 v4, 0x50

    .line 350
    invoke-static {v2, v9, v4}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v2

    iget v4, v3, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-virtual {v0, v1, v2, v4}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;F)V

    const/16 v2, 0x42c

    const/16 v4, 0x53

    .line 351
    invoke-static {v2, v9, v4}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v2

    iget v3, v3, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-virtual {v0, v1, v2, v3}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;F)V

    .line 353
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x430

    const/16 v4, 0x77

    .line 354
    invoke-static {v3, v9, v4}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v4

    long-to-float v2, v4

    invoke-virtual {v0, v1, v3, v2}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;F)V

    return-void
.end method

.method public final ᾨ(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnts/\u1827;",
            ">;)V"
        }
    .end annotation

    .line 5
    :try_start_0
    iget-object v0, p0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "skip_first_use_hints"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    const/4 v0, 0x4

    const/16 v1, 0x37

    const/16 v2, 0x448

    .line 9
    invoke-static {v2, v0, v1}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    .line 10
    invoke-virtual/range {v1 .. v6}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public final ᾨ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnts/\u1827;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public final ㆃ(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnts/\u1827;",
            ">;)V"
        }
    .end annotation

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 9
    iget-object v0, p0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 10
    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v4, v0

    goto :goto_1

    .line 13
    :cond_0
    :try_start_0
    iget-object v0, p0, Lnts/ᛃ;->ㆃ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    const/4 v0, 0x4

    const/16 v1, 0x66

    const/16 v2, 0x43c

    .line 18
    invoke-static {v2, v0, v1}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    .line 19
    invoke-virtual/range {v1 .. v6}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public final ㆃ(Ljava/util/List;Ljava/lang/String;F)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnts/\u1827;",
            ">;",
            "Ljava/lang/String;",
            "F)V"
        }
    .end annotation

    .line 1
    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public final ㆃ(Ljava/util/List;Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnts/\u1827;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 3
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public final ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnts/\u1827;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 4
    invoke-virtual/range {v0 .. v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public final ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnts/\u1827;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .line 5
    invoke-virtual/range {v0 .. v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public final ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnts/\u1827;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZI)V"
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p5, v2, :cond_0

    .line 37
    iget-object v3, p0, Lnts/ᛃ;->ᇭ:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    new-instance p3, Lnts/ᠧ;

    const/16 p4, 0x434

    const/16 p5, 0x38

    invoke-static {p4, v0, p5}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p2, p4, v1, v1}, Lnts/ᠧ;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    if-ne p5, v2, :cond_2

    if-eqz p3, :cond_1

    .line 39
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const/16 p3, 0x438

    const/16 p4, 0x52

    .line 40
    invoke-static {p3, v0, p4}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 41
    invoke-virtual/range {v1 .. v6}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void

    :cond_2
    move-object v3, p2

    .line 42
    new-instance p2, Lnts/ᠧ;

    if-eqz p4, :cond_3

    move v1, v2

    :cond_3
    invoke-direct {p2, v3, p3, v1, p5}, Lnts/ᠧ;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnts/\u1827;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_5

    .line 59
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 61
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const-string v0, "["

    .line 62
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 63
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 64
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/4 v1, 0x4

    const/16 v2, 0x33

    const/16 v3, 0x4de

    .line 65
    invoke-static {v3, v1, v2}, Lnts/ᾨ;->ᛃ(III)Ljava/lang/String;

    move-result-object v1

    .line 67
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    const-string v2, ","

    .line 68
    invoke-static {v0, v2}, Lnts/ㆃ;->ᾨ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string p3, "]"

    .line 72
    invoke-static {v0, p3}, Lnts/ㆃ;->ᾨ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p3, 0x0

    :goto_2
    move-object v3, p3

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 73
    invoke-virtual/range {v0 .. v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public final ㆃ(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnts/\u1827;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 2
    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lnts/ᛃ;->ㆃ(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method
