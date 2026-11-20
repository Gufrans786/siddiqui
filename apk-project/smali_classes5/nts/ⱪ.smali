.class public Lnts/ⱪ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnts/ἕ;


# static fields
.field public static final ዲ:Ljava/lang/String;

.field public static final ᎊ:Ljava/lang/String;

.field public static final ᛃ:Ljava/lang/String;

.field public static final ᡲ:Ljava/lang/String;

.field public static final Ὺ:Ljava/lang/String;

.field public static final Ⲳ:Ljava/lang/String;


# instance fields
.field public Ͼ:Ljava/lang/String;

.field public ౠ:I

.field public ᇭ:Lnts/ᙕ;

.field public ᙕ:Landroid/content/Context;

.field public ᰛ:Lnts/ᵑ;

.field public ᾨ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnts/\u1827;",
            ">;"
        }
    .end annotation
.end field

.field public て:Lnts/ⲽ;

.field public final ㆃ:Lcom/nsoftware/ipworks3ds/sdk/ClientEventListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x45

    const/4 v1, 0x0

    const/16 v2, 0x1d

    .line 1
    invoke-static {v1, v2, v0}, Lnts/ᾨ;->ᾨ(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnts/ⱪ;->ዲ:Ljava/lang/String;

    const/16 v0, 0x17

    const/16 v1, 0x78

    .line 2
    invoke-static {v2, v0, v1}, Lnts/ᾨ;->ᾨ(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnts/ⱪ;->ᎊ:Ljava/lang/String;

    const/16 v0, 0x13

    const/16 v1, 0x2c

    const/16 v2, 0x34

    .line 3
    invoke-static {v2, v0, v1}, Lnts/ᾨ;->ᾨ(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnts/ⱪ;->ᡲ:Ljava/lang/String;

    const/16 v0, 0x2e

    const/16 v1, 0x47

    const/16 v2, 0x15

    .line 4
    invoke-static {v1, v2, v0}, Lnts/ᾨ;->ᾨ(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnts/ⱪ;->Ὺ:Ljava/lang/String;

    const/16 v0, 0x5c

    const/16 v1, 0x11

    .line 5
    invoke-static {v0, v2, v1}, Lnts/ᾨ;->ᾨ(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnts/ⱪ;->Ⲳ:Ljava/lang/String;

    const/16 v0, 0x71

    const/16 v1, 0x36

    .line 6
    invoke-static {v0, v2, v1}, Lnts/ᾨ;->ᾨ(III)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnts/ⱪ;->ᛃ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/nsoftware/ipworks3ds/sdk/ClientEventListener;Lnts/ᙕ;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lnts/ⱪ;->ᙕ:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lnts/ⱪ;->ㆃ:Lcom/nsoftware/ipworks3ds/sdk/ClientEventListener;

    .line 4
    iput-object p3, p0, Lnts/ⱪ;->ᇭ:Lnts/ᙕ;

    .line 5
    new-instance p2, Lnts/ᵑ;

    invoke-direct {p2, p3}, Lnts/ᵑ;-><init>(Lnts/ᙕ;)V

    iput-object p2, p0, Lnts/ⱪ;->ᰛ:Lnts/ᵑ;

    .line 6
    iget-object p2, p3, Lnts/ᙕ;->ᛃ:Ljava/lang/String;

    .line 7
    invoke-virtual {p0, p1, p2}, Lnts/ⱪ;->ㆃ(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 8
    :try_start_0
    iget-object p2, p0, Lnts/ⱪ;->ᙕ:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iget-object p3, p0, Lnts/ⱪ;->ᙕ:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    .line 9
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, ""

    .line 14
    :goto_0
    invoke-virtual {p0}, Lnts/ⱪ;->ᾨ()V

    .line 15
    iget-object p3, p0, Lnts/ⱪ;->て:Lnts/ⲽ;

    invoke-virtual {p3}, Lnts/ⲽ;->ᇭ()Ljava/lang/String;

    move-result-object p3

    .line 17
    iget-object v0, p0, Lnts/ⱪ;->ᙕ:Landroid/content/Context;

    sget-object v1, Lnts/ⱪ;->ᎊ:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 19
    sget-object v0, Lnts/ⱪ;->ᡲ:Ljava/lang/String;

    invoke-static {p1, v0}, Lnts/ⱪ;->ㆃ(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20
    sget-object v2, Lnts/ⱪ;->Ⲳ:Ljava/lang/String;

    const/4 v3, 0x0

    .line 21
    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 22
    sget-object v5, Lnts/ⱪ;->Ὺ:Ljava/lang/String;

    .line 23
    invoke-interface {p1, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 24
    sget-object v7, Lnts/ⱪ;->ᛃ:Ljava/lang/String;

    .line 25
    invoke-interface {p1, v7, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_2

    if-eqz v6, :cond_2

    .line 26
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    .line 43
    invoke-virtual {p0, v1, v4, v6}, Lnts/ⱪ;->ㆃ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 44
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_2

    .line 52
    :cond_1
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 54
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 56
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 58
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 59
    new-instance p1, Lcom/nsoftware/ipworks3ds/sdk/exception/SDKRuntimeException;

    const/16 p2, 0x19

    const/16 p3, 0xe

    const/16 v0, 0x153

    invoke-static {v0, p2, p3}, Lnts/ᾨ;->ᾨ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/nsoftware/ipworks3ds/sdk/exception/SDKRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-virtual {p0, v1, p2, p3}, Lnts/ⱪ;->ㆃ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 67
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 69
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, v5, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 71
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v7, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 72
    :goto_2
    iput-object v1, p0, Lnts/ⱪ;->Ͼ:Ljava/lang/String;

    return-void
.end method

.method public static ㆃ(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public Ͼ()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ⱪ;->て:Lnts/ⲽ;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    .line 3
    iget-object v0, v0, Lnts/ᣐ;->Ѷ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ㆃ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ౠ()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lnts/ⱪ;->ᾨ()V

    .line 2
    iget-object v0, p0, Lnts/ⱪ;->て:Lnts/ⲽ;

    .line 3
    iget-object v0, v0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    .line 4
    iget-object v0, v0, Lnts/ᣐ;->ㇹ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ㆃ()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    return-object v0

    .line 7
    :cond_0
    iget-object v0, p0, Lnts/ⱪ;->て:Lnts/ⲽ;

    .line 8
    iget-object v0, v0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    .line 9
    iget-object v0, v0, Lnts/ᣐ;->ᇄ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ㆃ()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    return-object v0

    .line 12
    :cond_1
    iget-object v0, p0, Lnts/ⱪ;->て:Lnts/ⲽ;

    .line 13
    iget-object v0, v0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    .line 14
    iget-object v0, v0, Lnts/ᣐ;->ↆ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ㆃ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ᇭ()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ⱪ;->て:Lnts/ⲽ;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    .line 3
    iget-object v0, v0, Lnts/ᣐ;->ᵶ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ㆃ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ዲ()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ⱪ;->て:Lnts/ⲽ;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    .line 3
    iget-object v0, v0, Lnts/ᣐ;->ᒤ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ㆃ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ᎊ()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ⱪ;->て:Lnts/ⲽ;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    .line 3
    iget-object v0, v0, Lnts/ᣐ;->ᾌ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ㆃ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ᙕ()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lnts/ⱪ;->ᾨ()V

    .line 2
    iget-object v0, p0, Lnts/ⱪ;->て:Lnts/ⲽ;

    .line 3
    iget-object v0, v0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    .line 4
    iget-object v0, v0, Lnts/ᣐ;->ⶽ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ㆃ()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    return-object v0

    .line 7
    :cond_0
    iget-object v0, p0, Lnts/ⱪ;->て:Lnts/ⲽ;

    .line 8
    iget-object v0, v0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    .line 9
    iget-object v0, v0, Lnts/ᣐ;->ࠉ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ㆃ()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    return-object v0

    .line 12
    :cond_1
    iget-object v0, p0, Lnts/ⱪ;->て:Lnts/ⲽ;

    .line 13
    iget-object v0, v0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    .line 14
    iget-object v0, v0, Lnts/ᣐ;->ᾟ:Lnts/ᗋ;

    invoke-virtual {v0}, Lnts/ᗋ;->ㆃ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ᰛ()I
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lnts/ⱪ;->て:Lnts/ⲽ;

    const/16 v1, 0x16

    const/16 v2, 0x3b

    const/16 v3, 0xc4

    invoke-static {v3, v1, v2}, Lnts/ᾨ;->ᾨ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnts/ⲽ;->ᾨ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/16 v0, 0x12c

    return v0
.end method

.method public ᾨ()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnts/ⱪ;->て:Lnts/ⲽ;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lnts/ⱪ;->ᙕ:Landroid/content/Context;

    iget-object v1, p0, Lnts/ⱪ;->ᇭ:Lnts/ᙕ;

    .line 3
    iget-object v1, v1, Lnts/ᙕ;->ᛃ:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, v0, v1}, Lnts/ⱪ;->ㆃ(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public ᾨ(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᓬ;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lnts/ⱪ;->ᾨ()V

    .line 6
    iget-object v0, p0, Lnts/ⱪ;->て:Lnts/ⲽ;

    invoke-virtual {v0, p1}, Lnts/ⲽ;->ᰛ(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    :try_start_0
    iget-object v0, p0, Lnts/ⱪ;->て:Lnts/ⲽ;

    invoke-virtual {v0}, Lnts/ⲽ;->ᾨ()Lnts/ᱨ;

    move-result-object v0

    invoke-virtual {v0}, Lnts/ⅿ;->clear()V

    .line 11
    iget-object v0, p0, Lnts/ⱪ;->ᰛ:Lnts/ᵑ;

    invoke-virtual {v0, p1}, Lnts/ᵑ;->ㆃ(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnts/ᅙ;

    .line 13
    iget-object v2, p0, Lnts/ⱪ;->て:Lnts/ⲽ;

    invoke-virtual {v2}, Lnts/ⲽ;->ᾨ()Lnts/ᱨ;

    move-result-object v2

    invoke-virtual {v2, v1}, Lnts/ⅿ;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lnts/ᓬ; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 20
    :cond_1
    :try_start_1
    iget-object v0, p0, Lnts/ⱪ;->て:Lnts/ⲽ;

    iget-object v1, p0, Lnts/ⱪ;->ᰛ:Lnts/ᵑ;

    invoke-virtual {v1, p1}, Lnts/ᵑ;->ᾨ(Ljava/lang/String;)Lnts/ᅙ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnts/ⲽ;->ㆃ(Lnts/ᅙ;)V
    :try_end_1
    .catch Lnts/ᓬ; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 22
    new-instance v1, Lnts/せ;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x21

    const/16 v4, 0x59

    const/16 v5, 0xf2

    invoke-static {v5, v3, v4}, Lnts/ᾨ;->ᾨ(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lnts/せ;-><init>(Ljava/lang/String;Lnts/ᓬ;)V

    throw v1

    :catch_1
    move-exception v0

    .line 23
    new-instance v1, Lnts/せ;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x18

    const/16 v4, 0x7a

    const/16 v5, 0xda

    invoke-static {v5, v3, v4}, Lnts/ᾨ;->ᾨ(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lnts/せ;-><init>(Ljava/lang/String;Lnts/ᓬ;)V

    throw v1

    :cond_2
    :goto_1
    return-void
.end method

.method public ᾨ(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᓬ;
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lnts/ⱪ;->て:Lnts/ⲽ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lnts/ⲽ;->ㆃ(Z)V

    :cond_0
    return-void
.end method

.method public て()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ⱪ;->て:Lnts/ⲽ;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    invoke-virtual {v0}, Lnts/ᣐ;->ᰄ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ㆃ(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᓬ;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lnts/ⱪ;->て:Lnts/ⲽ;

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 56
    :cond_0
    invoke-virtual {v0, p1}, Lnts/ⲽ;->ᾨ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final ㆃ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x14

    const/16 v2, 0x21

    const/16 v3, 0x16c

    invoke-static {v3, v1, v2}, Lnts/ᾨ;->ᾨ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 51
    :try_start_0
    iget-object p2, p0, Lnts/ⱪ;->て:Lnts/ⲽ;

    invoke-virtual {p2, p1}, Lnts/ⲽ;->ᾨ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lnts/ᓬ; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 53
    :catch_0
    new-instance p1, Lcom/nsoftware/ipworks3ds/sdk/exception/SDKRuntimeException;

    const/16 p2, 0x27

    const/16 p3, 0x7f

    const/16 v0, 0x180

    invoke-static {v0, p2, p3}, Lnts/ᾨ;->ᾨ(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/nsoftware/ipworks3ds/sdk/exception/SDKRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ㆃ()V
    .locals 4

    .line 1
    iget-object v0, p0, Lnts/ⱪ;->て:Lnts/ⲽ;

    if-eqz v0, :cond_0

    const/16 v1, 0x12

    const/16 v2, 0x24

    const/16 v3, 0x86

    .line 4
    :try_start_0
    invoke-static {v3, v1, v2}, Lnts/ᾨ;->ᾨ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnts/ⲽ;->ᾨ(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lnts/ᓬ; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lnts/ⱪ;->て:Lnts/ⲽ;

    :cond_0
    return-void
.end method

.method public ㆃ(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 57
    iget-object v0, p0, Lnts/ⱪ;->ㆃ:Lcom/nsoftware/ipworks3ds/sdk/ClientEventListener;

    if-eqz v0, :cond_0

    .line 58
    iget v1, p0, Lnts/ⱪ;->ౠ:I

    if-lt v1, p1, :cond_0

    .line 60
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/nsoftware/ipworks3ds/sdk/ClientEventListener;->fireLog(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final ㆃ(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 18
    new-instance v0, Lnts/ⲽ;

    invoke-direct {v0, p1, p2}, Lnts/ⲽ;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lnts/ⱪ;->て:Lnts/ⲽ;

    const/4 p1, 0x1

    .line 19
    invoke-virtual {p0, p1}, Lnts/ⱪ;->ㆃ(Z)V

    .line 22
    :try_start_0
    iget-object p1, p0, Lnts/ⱪ;->て:Lnts/ⲽ;

    invoke-virtual {p1, p0}, Lnts/ⲽ;->ㆃ(Lnts/ἕ;)V
    :try_end_0
    .catch Ljava/util/TooManyListenersException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :catch_0
    :try_start_1
    iget-object p1, p0, Lnts/ⱪ;->て:Lnts/ⲽ;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x13

    const/16 v1, 0x6b

    const/16 v2, 0x138

    invoke-static {v2, v0, v1}, Lnts/ᾨ;->ᾨ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object v0, Lnts/ⱪ;->ዲ:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnts/ⲽ;->ᾨ(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lnts/ᓬ; {:try_start_1 .. :try_end_1} :catch_3

    const/4 p1, 0x0

    .line 33
    invoke-virtual {p0, p1}, Lnts/ⱪ;->ㆃ(Z)V

    .line 45
    :try_start_2
    iget-object p1, p0, Lnts/ⱪ;->て:Lnts/ⲽ;

    const/16 p2, 0x8

    const/16 v0, 0x53

    const/16 v1, 0x14b

    invoke-static {v1, p2, v0}, Lnts/ᾨ;->ᾨ(III)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnts/ⲽ;->ᾨ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lnts/ⱪ;->ౠ:I
    :try_end_2
    .catch Lnts/ᓬ; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-void

    :catch_2
    move-exception p1

    .line 47
    new-instance p2, Lnts/せ;

    invoke-direct {p2, p1}, Lnts/せ;-><init>(Lnts/ᓬ;)V

    throw p2

    :catch_3
    move-exception p1

    .line 48
    new-instance p2, Lnts/せ;

    invoke-direct {p2, p1}, Lnts/せ;-><init>(Lnts/ᓬ;)V

    throw p2
.end method

.method public ㆃ(Lnts/Ϩ;)V
    .locals 4

    .line 65
    iget-object v0, p0, Lnts/ⱪ;->ㆃ:Lcom/nsoftware/ipworks3ds/sdk/ClientEventListener;

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xf

    const/16 v2, 0x7b

    const/16 v3, 0x1a7

    invoke-static {v3, v1, v2}, Lnts/ᾨ;->ᾨ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lnts/Ϩ;->ㆃ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Lnts/Ϩ;->ᾨ:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 67
    iget-object v0, p0, Lnts/ⱪ;->ㆃ:Lcom/nsoftware/ipworks3ds/sdk/ClientEventListener;

    sget-object v1, Lnts/ᄎ;->ᛃ:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v2, p1, v1}, Lcom/nsoftware/ipworks3ds/sdk/ClientEventListener;->fireLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public ㆃ(Lnts/ቓ;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lnts/ⱪ;->ㆃ:Lcom/nsoftware/ipworks3ds/sdk/ClientEventListener;

    if-eqz v0, :cond_0

    .line 79
    iget-object p1, p1, Lnts/ቓ;->ㆃ:Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/nsoftware/ipworks3ds/sdk/ClientEventListener;->fireSSLStatus(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public ㆃ(Lnts/Ṇ;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lnts/ⱪ;->ㆃ:Lcom/nsoftware/ipworks3ds/sdk/ClientEventListener;

    if-eqz v0, :cond_0

    .line 62
    iget-object p1, p1, Lnts/Ṇ;->ㆃ:[B

    invoke-interface {v0, p1}, Lcom/nsoftware/ipworks3ds/sdk/ClientEventListener;->fireDataPacketIn([B)V

    :cond_0
    return-void
.end method

.method public ㆃ(Lnts/Ὥ;)V
    .locals 7

    .line 70
    iget-object v0, p0, Lnts/ⱪ;->ㆃ:Lcom/nsoftware/ipworks3ds/sdk/ClientEventListener;

    if-eqz v0, :cond_0

    .line 71
    iget-boolean v1, p1, Lnts/Ὥ;->Ͼ:Z

    const/4 v2, 0x1

    new-array v5, v2, [Z

    const/4 v6, 0x0

    aput-boolean v1, v5, v6

    .line 72
    iget-object v1, p1, Lnts/Ὥ;->ㆃ:[B

    iget-object v2, p1, Lnts/Ὥ;->ᾨ:Ljava/lang/String;

    iget-object v3, p1, Lnts/Ὥ;->ᇭ:Ljava/lang/String;

    iget-object v4, p1, Lnts/Ὥ;->ᰛ:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/nsoftware/ipworks3ds/sdk/ClientEventListener;->fireSSLServerAuthentication([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Z)V

    .line 77
    aget-boolean v0, v5, v6

    iput-boolean v0, p1, Lnts/Ὥ;->Ͼ:Z

    :cond_0
    return-void
.end method

.method public ㆃ(Lnts/Ⱕ;)V
    .locals 3

    .line 68
    iget-object v0, p0, Lnts/ⱪ;->ㆃ:Lcom/nsoftware/ipworks3ds/sdk/ClientEventListener;

    if-eqz v0, :cond_0

    .line 69
    iget v1, p1, Lnts/Ⱕ;->ㆃ:I

    iget-object v2, p1, Lnts/Ⱕ;->ᾨ:Ljava/lang/String;

    iget-object p1, p1, Lnts/Ⱕ;->ᇭ:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/nsoftware/ipworks3ds/sdk/ClientEventListener;->fireLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public ㆃ(Lnts/ㄷ;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lnts/ⱪ;->ㆃ:Lcom/nsoftware/ipworks3ds/sdk/ClientEventListener;

    if-eqz v0, :cond_0

    .line 64
    iget-object p1, p1, Lnts/ㄷ;->ㆃ:[B

    invoke-interface {v0, p1}, Lcom/nsoftware/ipworks3ds/sdk/ClientEventListener;->fireDataPacketOut([B)V

    :cond_0
    return-void
.end method

.method public final ㆃ(Z)V
    .locals 6

    .line 9
    iget-object v0, p0, Lnts/ⱪ;->ᇭ:Lnts/ᙕ;

    .line 10
    iget-object v0, v0, Lnts/ᙕ;->ౠ:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x4

    const/16 v3, 0x33

    const/16 v4, 0x113

    .line 12
    invoke-static {v4, v2, v3}, Lnts/ᾨ;->ᾨ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne p1, v2, :cond_1

    .line 15
    :try_start_0
    iget-object v2, p0, Lnts/ⱪ;->て:Lnts/ⲽ;

    invoke-virtual {v2, v1}, Lnts/ⲽ;->ᾨ(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lnts/ᓬ; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 17
    new-instance v0, Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x21

    const/16 v4, 0x2b

    const/16 v5, 0x117

    invoke-static {v5, v3, v4}, Lnts/ᾨ;->ᾨ(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/nsoftware/ipworks3ds/sdk/exception/InvalidInputException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    :goto_1
    return-void
.end method
