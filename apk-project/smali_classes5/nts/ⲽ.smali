.class public Lnts/ⲽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnts/ፒ;
.implements Ljava/io/Serializable;


# instance fields
.field public Ͼ:Landroid/content/Context;

.field public ౠ:Ljava/lang/String;

.field public ᇭ:Ljava/lang/String;

.field public ᙕ:Ljava/lang/String;

.field public ᰛ:Z

.field public transient ᾨ:Lnts/ἕ;

.field public ㆃ:Lnts/Ⱊ;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lnts/ⲽ;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const-string v0, ""

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    .line 4
    iput-object v1, p0, Lnts/ⲽ;->ᾨ:Lnts/ἕ;

    .line 6
    iput-object v1, p0, Lnts/ⲽ;->ᇭ:Ljava/lang/String;

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lnts/ⲽ;->ᰛ:Z

    const/16 v2, 0x7b

    const/16 v3, 0x19

    .line 9
    invoke-static {v1, v3, v2}, Lnts/ᾨ;->ᡲ(III)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnts/ⲽ;->ౠ:Ljava/lang/String;

    const/16 v2, 0x11

    const/16 v4, 0x6a

    .line 10
    invoke-static {v3, v2, v4}, Lnts/ᾨ;->ᡲ(III)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnts/ⲽ;->ᙕ:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lnts/ⲽ;->ᇭ:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lnts/ⲽ;->Ͼ:Landroid/content/Context;

    .line 26
    :try_start_0
    new-instance p1, Lnts/Ⱊ;

    invoke-direct {p1, p0, p0}, Lnts/Ⱊ;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    const/4 p2, 0x1

    .line 27
    iput-boolean p2, p1, Lnts/ዧ;->ㆃ:Z

    .line 29
    iget-object p1, p0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    .line 30
    iget-boolean p1, p1, Lnts/ⴳ;->ᴨ:Z

    if-eqz p1, :cond_1

    .line 31
    iget-object p1, p0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-virtual {p1, p2}, Lnts/ⴳ;->ᰛ(Z)V

    .line 34
    :cond_1
    iget-object p1, p0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    .line 35
    iget-object p1, p1, Lnts/ᣐ;->څ:Lnts/ᗋ;

    invoke-virtual {p1, v0}, Lnts/ᗋ;->Ͼ(Ljava/lang/String;)I

    .line 36
    iget-object p1, p0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    .line 37
    iget-object p1, p1, Lnts/ᣐ;->ദ:Lnts/ᗋ;

    invoke-virtual {p1, v0}, Lnts/ᗋ;->Ͼ(Ljava/lang/String;)I

    .line 38
    iget-object p1, p0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    .line 39
    iget-object p1, p1, Lnts/ᣐ;->ⴜ:Lnts/ᗋ;

    invoke-virtual {p1, v0}, Lnts/ᗋ;->Ͼ(Ljava/lang/String;)I

    .line 40
    iget-object p1, p0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    .line 41
    iput-boolean v1, p1, Lnts/ᣐ;->Ὗ:Z

    .line 42
    iget-object p1, p0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    .line 43
    iget-object p1, p1, Lnts/ᣐ;->ひ:Lnts/ᗋ;

    invoke-virtual {p1, v0}, Lnts/ᗋ;->Ͼ(Ljava/lang/String;)I

    .line 44
    iget-object p1, p0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    .line 45
    iget-object p1, p1, Lnts/ᣐ;->ᴭ:Lnts/ᗋ;

    invoke-virtual {p1, v0}, Lnts/ᗋ;->Ͼ(Ljava/lang/String;)I

    .line 46
    iget-object p1, p0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    const/16 p2, 0x1e

    invoke-virtual {p1, p2}, Lnts/ڊ;->Ͼ(I)V

    .line 47
    iget-object p1, p0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    .line 48
    iput-boolean v1, p1, Lnts/ᣐ;->Ⅰ:Z

    .line 49
    iget-object p1, p0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    .line 50
    iget-object p1, p1, Lnts/ᣐ;->ᒤ:Lnts/ᗋ;

    invoke-virtual {p1, v0}, Lnts/ᗋ;->Ͼ(Ljava/lang/String;)I
    :try_end_0
    .catch Lnts/ᛎ; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :catch_0
    iget-object p1, p0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    iput-boolean v1, p1, Lnts/ዧ;->ㆃ:Z

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnts/ዧ;->ᇭ()V
    :try_end_0
    .catch Lnts/ᛎ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    :try_start_1
    new-instance v1, Lnts/ᓬ;

    invoke-direct {v1, v0}, Lnts/ᓬ;-><init>(Lnts/ᛎ;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 5
    throw v0
.end method

.method public fireSSLServerAuthentication([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lnts/ⲽ;->ᾨ:Lnts/ἕ;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lnts/Ὥ;

    invoke-direct {v0, p0}, Lnts/Ὥ;-><init>(Ljava/lang/Object;)V

    .line 3
    iput-object p1, v0, Lnts/Ὥ;->ㆃ:[B

    .line 4
    iput-object p2, v0, Lnts/Ὥ;->ᾨ:Ljava/lang/String;

    .line 5
    iput-object p3, v0, Lnts/Ὥ;->ᇭ:Ljava/lang/String;

    .line 6
    iput-object p4, v0, Lnts/Ὥ;->ᰛ:Ljava/lang/String;

    const/4 p1, 0x0

    .line 7
    aget-boolean p2, p5, p1

    iput-boolean p2, v0, Lnts/Ὥ;->Ͼ:Z

    .line 10
    :try_start_0
    iget-object p2, p0, Lnts/ⲽ;->ᾨ:Lnts/ἕ;

    invoke-interface {p2, v0}, Lnts/ἕ;->ㆃ(Lnts/Ὥ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 12
    new-instance p3, Lnts/ᛎ;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x4a

    const/16 v2, 0x3e

    const/16 v3, 0x22a

    invoke-static {v3, v1, v2}, Lnts/ᾨ;->ᡲ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const/4 v1, -0x1

    invoke-direct {p3, p2, v1, p4}, Lnts/ᛎ;-><init>(Ljava/lang/Throwable;ILjava/lang/String;)V

    .line 13
    new-instance p2, Lnts/Ϩ;

    invoke-direct {p2, p0}, Lnts/Ϩ;-><init>(Ljava/lang/Object;)V

    .line 14
    iget p4, p3, Lnts/ᛎ;->ㆃ:I

    .line 15
    iput p4, p2, Lnts/Ϩ;->ㆃ:I

    .line 16
    invoke-virtual {p3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p2, Lnts/Ϩ;->ᾨ:Ljava/lang/String;

    .line 17
    iget-object p4, p0, Lnts/ⲽ;->ᾨ:Lnts/ἕ;

    invoke-interface {p4, p2}, Lnts/ἕ;->ㆃ(Lnts/Ϩ;)V

    .line 18
    iget-object p2, p0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    invoke-virtual {p2, p3}, Lnts/ዧ;->ㆃ(Ljava/lang/Exception;)V

    .line 20
    :goto_0
    iget-boolean p2, v0, Lnts/Ὥ;->Ͼ:Z

    aput-boolean p2, p5, p1

    :cond_0
    return-void
.end method

.method public fireSSLStatus(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lnts/ⲽ;->ᾨ:Lnts/ἕ;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lnts/ቓ;

    invoke-direct {v0, p0}, Lnts/ቓ;-><init>(Ljava/lang/Object;)V

    .line 3
    iput-object p1, v0, Lnts/ቓ;->ㆃ:Ljava/lang/String;

    .line 6
    :try_start_0
    iget-object p1, p0, Lnts/ⲽ;->ᾨ:Lnts/ἕ;

    invoke-interface {p1, v0}, Lnts/ἕ;->ㆃ(Lnts/ቓ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 8
    new-instance v0, Lnts/ᛎ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x3c

    const/16 v3, 0x7b

    const/16 v4, 0x274

    invoke-static {v4, v2, v3}, Lnts/ᾨ;->ᡲ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {v0, p1, v2, v1}, Lnts/ᛎ;-><init>(Ljava/lang/Throwable;ILjava/lang/String;)V

    .line 9
    new-instance p1, Lnts/Ϩ;

    invoke-direct {p1, p0}, Lnts/Ϩ;-><init>(Ljava/lang/Object;)V

    .line 10
    iget v1, v0, Lnts/ᛎ;->ㆃ:I

    .line 11
    iput v1, p1, Lnts/Ϩ;->ㆃ:I

    .line 12
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lnts/Ϩ;->ᾨ:Ljava/lang/String;

    .line 13
    iget-object v1, p0, Lnts/ⲽ;->ᾨ:Lnts/ἕ;

    invoke-interface {v1, p1}, Lnts/ἕ;->ㆃ(Lnts/Ϩ;)V

    .line 14
    iget-object p1, p0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    invoke-virtual {p1, v0}, Lnts/ዧ;->ㆃ(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public Ͼ()Lnts/ആ;
    .locals 3

    .line 1
    new-instance v0, Lnts/ആ;

    iget-object v1, p0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    .line 2
    iget-object v1, v1, Lnts/ᣐ;->ℐ:Ljava/util/Vector;

    const/4 v2, 0x1

    .line 3
    invoke-direct {v0, v1, v2}, Lnts/ആ;-><init>(Ljava/util/List;Z)V

    return-object v0
.end method

.method public Ͼ(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᓬ;
        }
    .end annotation

    .line 4
    :try_start_0
    iget-object v0, p0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    .line 5
    iget-object v0, v0, Lnts/ᣐ;->ひ:Lnts/ᗋ;

    invoke-virtual {v0, p1}, Lnts/ᗋ;->Ͼ(Ljava/lang/String;)I
    :try_end_0
    .catch Lnts/ᛎ; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Lnts/ᓬ;

    invoke-direct {v0, p1}, Lnts/ᓬ;-><init>(Lnts/ᛎ;)V

    throw v0
.end method

.method public ౠ()Lnts/ਜ਼;
    .locals 3

    .line 1
    new-instance v0, Lnts/ਜ਼;

    iget-object v1, p0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    .line 2
    iget-object v1, v1, Lnts/ᣐ;->ヒ:Ljava/util/Vector;

    const/4 v2, 0x0

    .line 3
    invoke-direct {v0, v1, v2}, Lnts/ਜ਼;-><init>(Ljava/util/List;Z)V

    return-object v0
.end method

.method public final ౠ(Ljava/lang/String;)V
    .locals 5

    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 6
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lnts/ⲽ;->Ͼ:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 8
    new-instance v4, Lnts/ⲽ$ㆃ;

    invoke-direct {v4, p0, v0, v3}, Lnts/ⲽ$ㆃ;-><init>(Lnts/ⲽ;ZLandroid/os/Handler;)V

    .line 21
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v1, "OK"

    .line 22
    invoke-virtual {p1, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_2

    .line 24
    new-instance p1, Lnts/ⲽ$ᾨ;

    invoke-direct {p1, p0, v2}, Lnts/ⲽ$ᾨ;-><init>(Lnts/ⲽ;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v3, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    invoke-static {}, Landroid/os/Looper;->loop()V

    const/4 p1, 0x3

    const/16 v0, 0x25

    const/16 v1, 0x10a

    .line 28
    invoke-static {v1, p1, v0}, Lnts/ᾨ;->ᡲ(III)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xe

    const/16 v1, 0x5f

    const/16 v2, 0x10d

    invoke-static {v2, v0, v1}, Lnts/ᾨ;->ᡲ(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 30
    :cond_2
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public ᇭ()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lnts/ᕗ;->ㆃ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ᇭ(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᓬ;
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    .line 3
    iget-object v0, v0, Lnts/ᣐ;->ദ:Lnts/ᗋ;

    invoke-virtual {v0, p1}, Lnts/ᗋ;->Ͼ(Ljava/lang/String;)I
    :try_end_0
    .catch Lnts/ᛎ; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Lnts/ᓬ;

    invoke-direct {v0, p1}, Lnts/ᓬ;-><init>(Lnts/ᛎ;)V

    throw v0
.end method

.method public ᙕ()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᓬ;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lnts/ⲽ;->ᰛ:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lnts/ⲽ;->ㆃ()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lnts/ⲽ;->ᰛ:Z

    .line 5
    :cond_0
    iget-object v0, p0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    .line 6
    invoke-virtual {v0}, Lnts/ᣐ;->ѻ()V
    :try_end_0
    .catch Lnts/ᛎ; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Lnts/ᓬ;

    invoke-direct {v1, v0}, Lnts/ᓬ;-><init>(Lnts/ᛎ;)V

    throw v1
.end method

.method public ᰛ()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᓬ;
        }
    .end annotation

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lnts/ⲽ;->ᰛ:Z

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lnts/ⲽ;->ㆃ()V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lnts/ⲽ;->ᰛ:Z

    .line 8
    :cond_0
    iget-object v0, p0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    invoke-virtual {v0}, Lnts/Ⱊ;->Ӥ()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lnts/ᛎ; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 10
    new-instance v1, Lnts/ᓬ;

    invoke-direct {v1, v0}, Lnts/ᓬ;-><init>(Lnts/ᛎ;)V

    throw v1
.end method

.method public ᰛ(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᓬ;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    .line 2
    iget-object v0, v0, Lnts/ᣐ;->ⴜ:Lnts/ᗋ;

    invoke-virtual {v0, p1}, Lnts/ᗋ;->Ͼ(Ljava/lang/String;)I
    :try_end_0
    .catch Lnts/ᛎ; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Lnts/ᓬ;

    invoke-direct {v0, p1}, Lnts/ᓬ;-><init>(Lnts/ᛎ;)V

    throw v0
.end method

.method public ᾨ(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᓬ;
        }
    .end annotation

    if-eqz p1, :cond_1

    const/16 v0, 0x11b

    const/16 v1, 0x61

    const/16 v2, 0x9

    .line 7
    :try_start_0
    invoke-static {v0, v2, v1}, Lnts/ᾨ;->ᡲ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lnts/ᛎ; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    if-eqz v0, :cond_0

    const/16 v0, 0x124

    const/16 v3, 0x55

    .line 8
    :try_start_1
    invoke-static {v0, v2, v3}, Lnts/ᾨ;->ᡲ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnts/ⲽ;->ౠ:Ljava/lang/String;

    return-object v1

    :cond_0
    const/16 v0, 0x12d

    const/16 v2, 0x54

    const/16 v3, 0x8

    .line 11
    invoke-static {v0, v3, v2}, Lnts/ᾨ;->ᡲ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x135

    const/16 v2, 0x65

    .line 12
    invoke-static {v0, v3, v2}, Lnts/ᾨ;->ᡲ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnts/ⲽ;->ᙕ:Ljava/lang/String;

    return-object v1

    .line 16
    :cond_1
    iget-boolean v0, p0, Lnts/ⲽ;->ᰛ:Z

    if-nez v0, :cond_2

    .line 17
    invoke-virtual {p0}, Lnts/ⲽ;->ㆃ()V

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lnts/ⲽ;->ᰛ:Z

    .line 20
    :cond_2
    iget-object v0, p0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    invoke-virtual {v0, p1}, Lnts/ዧ;->Ͼ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Lnts/ᛎ; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 22
    new-instance v0, Lnts/ᓬ;

    invoke-direct {v0, p1}, Lnts/ᓬ;-><init>(Lnts/ᛎ;)V

    throw v0
.end method

.method public ᾨ()Lnts/ᱨ;
    .locals 3

    .line 1
    new-instance v0, Lnts/ᱨ;

    iget-object v1, p0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    .line 2
    iget-object v1, v1, Lnts/ᣐ;->Ⰹ:Ljava/util/Vector;

    const/4 v2, 0x0

    .line 3
    invoke-direct {v0, v1, v2}, Lnts/ᱨ;-><init>(Ljava/util/List;Z)V

    return-object v0
.end method

.method public ᾨ(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᓬ;
        }
    .end annotation

    .line 4
    :try_start_0
    iget-object v0, p0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    .line 5
    iput-boolean p1, v0, Lnts/ᣐ;->Ⅰ:Z
    :try_end_0
    .catch Lnts/ᛎ; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Lnts/ᓬ;

    invoke-direct {v0, p1}, Lnts/ᓬ;-><init>(Lnts/ᛎ;)V

    throw v0
.end method

.method public て()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᓬ;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lnts/ⲽ;->ᰛ:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lnts/ⲽ;->ㆃ()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lnts/ⲽ;->ᰛ:Z

    .line 5
    :cond_0
    iget-object v0, p0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    invoke-virtual {v0}, Lnts/ᣐ;->Ꭲ()V
    :try_end_0
    .catch Lnts/ᛎ; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Lnts/ᓬ;

    invoke-direct {v1, v0}, Lnts/ᓬ;-><init>(Lnts/ᛎ;)V

    throw v1
.end method

.method public final ㆃ()V
    .locals 7

    const/4 v0, 0x0

    .line 8
    :try_start_0
    const-class v1, Lnts/ⲽ;

    iget-object v2, p0, Lnts/ⲽ;->ᇭ:Ljava/lang/String;

    const/16 v3, 0xe

    invoke-static {v3, v1, v2}, Lnts/ၚ;->ㆃ(ILjava/lang/Class;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    iput-object v0, p0, Lnts/ⲽ;->Ͼ:Landroid/content/Context;

    return-void

    :catchall_0
    move-exception v1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .line 33
    :try_start_1
    iget-object v2, p0, Lnts/ⲽ;->ౠ:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v2, p0, Lnts/ⲽ;->Ͼ:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 35
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x2a

    const/16 v5, 0x33

    const/4 v6, 0x6

    invoke-static {v4, v6, v5}, Lnts/ᾨ;->ᡲ(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x4e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 36
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x30

    const/16 v5, 0x36

    invoke-static {v4, v6, v5}, Lnts/ᾨ;->ᡲ(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x4f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lnts/ⲽ;->ౠ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3e

    const/16 v3, 0x1b

    invoke-static {v5, v2, v3}, Lnts/ᾨ;->ᡲ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x46

    const/16 v3, 0x1e

    const/16 v4, 0x74

    invoke-static {v4, v2, v3}, Lnts/ᾨ;->ᡲ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x43

    const/16 v3, 0x59

    const/16 v4, 0xba

    invoke-static {v4, v2, v3}, Lnts/ᾨ;->ᡲ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xd

    const/16 v3, 0x15

    const/16 v4, 0xfd

    invoke-static {v4, v2, v3}, Lnts/ᾨ;->ᡲ(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnts/ⲽ;->ᙕ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {p0, v1}, Lnts/ⲽ;->ౠ(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 50
    iput-boolean v1, p0, Lnts/ⲽ;->ᰛ:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    iput-object v0, p0, Lnts/ⲽ;->Ͼ:Landroid/content/Context;

    return-void

    .line 56
    :cond_0
    :try_start_2
    throw v1

    .line 69
    :cond_1
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    :goto_0
    iput-object v0, p0, Lnts/ⲽ;->Ͼ:Landroid/content/Context;

    .line 72
    throw v1
.end method

.method public ㆃ(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᓬ;
        }
    .end annotation

    .line 73
    :try_start_0
    iget-boolean v0, p0, Lnts/ⲽ;->ᰛ:Z

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lnts/ⲽ;->ㆃ()V

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lnts/ⲽ;->ᰛ:Z

    .line 77
    :cond_0
    iget-object v0, p0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    invoke-virtual {v0, p1}, Lnts/Ⱊ;->〵(Ljava/lang/String;)V
    :try_end_0
    .catch Lnts/ᛎ; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 79
    new-instance v0, Lnts/ᓬ;

    invoke-direct {v0, p1}, Lnts/ᓬ;-><init>(Lnts/ᛎ;)V

    throw v0
.end method

.method public ㆃ(Lnts/ᅙ;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᓬ;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Lnts/ᅙ;->ㆃ:Lnts/Ꭲ;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iput-object p1, v0, Lnts/ᣐ;->Ꮝ:Lnts/Ꭲ;
    :try_end_0
    .catch Lnts/ᛎ; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Lnts/ᓬ;

    invoke-direct {v0, p1}, Lnts/ᓬ;-><init>(Lnts/ᛎ;)V

    throw v0
.end method

.method public declared-synchronized ㆃ(Lnts/ἕ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/TooManyListenersException;
        }
    .end annotation

    monitor-enter p0

    .line 80
    :try_start_0
    iput-object p1, p0, Lnts/ⲽ;->ᾨ:Lnts/ἕ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public ㆃ(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᓬ;
        }
    .end annotation

    .line 5
    :try_start_0
    iget-object v0, p0, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    .line 6
    iput-boolean p1, v0, Lnts/ᣐ;->Ὗ:Z
    :try_end_0
    .catch Lnts/ᛎ; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7
    new-instance v0, Lnts/ᓬ;

    invoke-direct {v0, p1}, Lnts/ᓬ;-><init>(Lnts/ᛎ;)V

    throw v0
.end method
