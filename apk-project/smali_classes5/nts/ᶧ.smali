.class public Lnts/ᶧ;
.super Lnts/ዧ;
.source "SourceFile"

# interfaces
.implements Lnts/Ѷ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnts/ᶧ$ᾨ;,
        Lnts/ᶧ$ᇭ;,
        Lnts/ᶧ$ㆃ;
    }
.end annotation


# instance fields
.field public η:I

.field public Ϯ:Ljava/lang/String;

.field public ϴ:J

.field public Ё:I

.field public И:Lnts/ᶧ$ㆃ;

.field public ߛ:Lnts/ᇾ;

.field public લ:I

.field public ଙ:I

.field public ఋ:I

.field public ཊ:Ljava/net/Socket;

.field public ཞ:I

.field public ᄎ:I

.field public ᅌ:Ljava/util/Hashtable;

.field public ᇌ:Lnts/ሠ;

.field public ᇢ:Z

.field public ጊ:J

.field public Ꮆ:Lnts/ᶧ$ᾨ;

.field public ᐘ:I

.field public ᒃ:Z

.field public ᒸ:Z

.field public ᚇ:I

.field public ᛩ:Lnts/ڊ;

.field public ᜧ:Z

.field public យ:Lnts/ᶧ$ᇭ;

.field public ᡤ:Z

.field public ᦝ:[B

.field public ᨍ:I

.field public ᬋ:J

.field public ᬌ:Z

.field public ᯋ:I

.field public ᴨ:I

.field public Ἂ:I

.field public ᾤ:Z

.field public ₑ:J

.field public Ⱐ:Z

.field public ⱋ:I

.field public ⶦ:Ljava/lang/String;

.field public パ:Z

.field public ㇸ:Z


# direct methods
.method public constructor <init>(Lnts/ڊ;Ljava/net/Socket;Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-direct {p0, p3}, Lnts/ዧ;-><init>(Ljava/lang/Object;)V

    const/4 p3, 0x0

    .line 2
    iput p3, p0, Lnts/ᶧ;->ཞ:I

    .line 3
    iput p3, p0, Lnts/ᶧ;->ᯋ:I

    .line 4
    iput p3, p0, Lnts/ᶧ;->ⱋ:I

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lnts/ᶧ;->ཊ:Ljava/net/Socket;

    .line 7
    iput-object v0, p0, Lnts/ᶧ;->И:Lnts/ᶧ$ㆃ;

    .line 8
    iput-object v0, p0, Lnts/ᶧ;->យ:Lnts/ᶧ$ᇭ;

    .line 10
    const-string v1, ""

    iput-object v1, p0, Lnts/ᶧ;->Ϯ:Ljava/lang/String;

    .line 11
    iput p3, p0, Lnts/ᶧ;->Ἂ:I

    .line 12
    iput-object v1, p0, Lnts/ᶧ;->ⶦ:Ljava/lang/String;

    .line 13
    iput p3, p0, Lnts/ᶧ;->ᚇ:I

    const/high16 v1, 0x100000

    .line 15
    iput v1, p0, Lnts/ᶧ;->ᄎ:I

    const/high16 v1, 0x40000

    .line 16
    iput v1, p0, Lnts/ᶧ;->ᴨ:I

    .line 18
    iput-boolean p3, p0, Lnts/ᶧ;->ᾤ:Z

    .line 19
    sget-object v1, Lnts/ዧ;->ዲ:[B

    iput-object v1, p0, Lnts/ᶧ;->ᦝ:[B

    const/16 v1, 0x800

    .line 20
    iput v1, p0, Lnts/ᶧ;->Ё:I

    .line 21
    iput p3, p0, Lnts/ᶧ;->ᨍ:I

    const/4 v1, 0x1

    .line 22
    iput-boolean v1, p0, Lnts/ᶧ;->ᜧ:Z

    .line 24
    iput-boolean v1, p0, Lnts/ᶧ;->ᬌ:Z

    .line 25
    iput p3, p0, Lnts/ᶧ;->η:I

    .line 27
    iput-boolean p3, p0, Lnts/ᶧ;->ᡤ:Z

    .line 28
    iput-boolean p3, p0, Lnts/ᶧ;->ㇸ:Z

    .line 29
    iput p3, p0, Lnts/ᶧ;->ఋ:I

    .line 30
    iput p3, p0, Lnts/ᶧ;->લ:I

    .line 32
    iput-boolean p3, p0, Lnts/ᶧ;->ᇢ:Z

    .line 33
    iput p3, p0, Lnts/ᶧ;->ଙ:I

    .line 35
    iput v1, p0, Lnts/ᶧ;->ᐘ:I

    const-wide/16 v1, 0x0

    .line 38
    iput-wide v1, p0, Lnts/ᶧ;->ϴ:J

    .line 39
    iput-wide v1, p0, Lnts/ᶧ;->ₑ:J

    .line 40
    iput-wide v1, p0, Lnts/ᶧ;->ጊ:J

    .line 41
    iput-wide v1, p0, Lnts/ᶧ;->ᬋ:J

    .line 43
    iput-boolean p3, p0, Lnts/ᶧ;->パ:Z

    .line 45
    iput-object v0, p0, Lnts/ᶧ;->ߛ:Lnts/ᇾ;

    .line 46
    iput-object v0, p0, Lnts/ᶧ;->Ꮆ:Lnts/ᶧ$ᾨ;

    .line 47
    iput-object v0, p0, Lnts/ᶧ;->ᇌ:Lnts/ሠ;

    .line 48
    iput-boolean p3, p0, Lnts/ᶧ;->ᒸ:Z

    .line 49
    iput-boolean p3, p0, Lnts/ᶧ;->Ⱐ:Z

    .line 51
    iput-boolean p3, p0, Lnts/ᶧ;->ᒃ:Z

    .line 53
    iput-object v0, p0, Lnts/ᶧ;->ᅌ:Ljava/util/Hashtable;

    .line 58
    iput-object p1, p0, Lnts/ᶧ;->ᛩ:Lnts/ڊ;

    .line 59
    iput-object p2, p0, Lnts/ᶧ;->ཊ:Ljava/net/Socket;

    return-void
.end method

.method public static synthetic ᇭ(Lnts/ᶧ;)I
    .locals 0

    .line 1
    iget p0, p0, Lnts/ᶧ;->ᴨ:I

    return p0
.end method

.method public static synthetic ᰛ(Lnts/ᶧ;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnts/ᶧ;->ᛃ()V

    return-void
.end method

.method public static synthetic ᾨ(Lnts/ᶧ;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lnts/ᶧ;->ᛩ:Lnts/ڊ;

    invoke-virtual {p0}, Lnts/ڊ;->ଙ()Z

    move-result p0

    return p0
.end method

.method public static synthetic ㆃ(Lnts/ᶧ;)Ljava/net/Socket;
    .locals 0

    .line 1
    iget-object p0, p0, Lnts/ᶧ;->ཊ:Ljava/net/Socket;

    return-object p0
.end method

.method public static synthetic ㆃ(Lnts/ᶧ;Ljava/net/Socket;)V
    .locals 5

    .line 301
    iput-object p1, p0, Lnts/ᶧ;->ཊ:Ljava/net/Socket;

    .line 303
    iget-object v0, p0, Lnts/ᶧ;->យ:Lnts/ᶧ$ᇭ;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lnts/ᶧ$ᇭ;->ᾨ(Lnts/ᶧ$ᇭ;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lnts/ᶧ;->យ:Lnts/ᶧ$ᇭ;

    const/4 v3, 0x5

    .line 306
    iput v3, v0, Lnts/ᶧ$ᇭ;->ㆃ:I

    .line 307
    iput-boolean v2, v0, Lnts/ᶧ$ᇭ;->ᡲ:Z

    .line 308
    iput-object v1, p0, Lnts/ᶧ;->យ:Lnts/ᶧ$ᇭ;

    .line 311
    :cond_0
    iget-object v0, p0, Lnts/ᶧ;->យ:Lnts/ᶧ$ᇭ;

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 313
    new-instance v0, Lnts/ᶧ$ᇭ;

    iget-object v4, p0, Lnts/ᶧ;->ᛩ:Lnts/ڊ;

    if-eqz v4, :cond_1

    iget-boolean v4, v4, Lnts/ⴳ;->ཞ:Z

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    invoke-direct {v0, p0, v4}, Lnts/ᶧ$ᇭ;-><init>(Lnts/ᶧ;Z)V

    iput-object v0, p0, Lnts/ᶧ;->យ:Lnts/ᶧ$ᇭ;

    .line 314
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 318
    :cond_2
    iget-object p0, p0, Lnts/ᶧ;->យ:Lnts/ᶧ$ᇭ;

    .line 319
    iput-object p1, p0, Lnts/ᶧ$ᇭ;->ᾨ:Ljava/net/Socket;

    .line 320
    iput v3, p0, Lnts/ᶧ$ᇭ;->ㆃ:I

    .line 322
    iput v2, p0, Lnts/ᶧ$ᇭ;->ᰛ:I

    .line 323
    iget-object v0, p0, Lnts/ᶧ$ᇭ;->Ὺ:Lnts/ᶧ;

    invoke-static {v0}, Lnts/ᶧ;->ᇭ(Lnts/ᶧ;)I

    move-result v0

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v0, v4, v3

    const/4 v0, 0x3

    aput v0, v4, v2

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lnts/ᶧ$ᇭ;->Ͼ:[[B

    .line 324
    iget-object v0, p0, Lnts/ᶧ$ᇭ;->Ͼ:[[B

    iget-byte v4, p0, Lnts/ᶧ$ᇭ;->て:B

    aget-object v0, v0, v4

    iput-object v0, p0, Lnts/ᶧ$ᇭ;->ౠ:[B

    .line 325
    iput v2, p0, Lnts/ᶧ$ᇭ;->ᙕ:I

    .line 326
    iput-byte v2, p0, Lnts/ᶧ$ᇭ;->て:B

    .line 327
    iput-boolean v2, p0, Lnts/ᶧ$ᇭ;->ዲ:Z

    .line 328
    iput-boolean v2, p0, Lnts/ᶧ$ᇭ;->ᎊ:Z

    .line 329
    iput-boolean v3, p0, Lnts/ᶧ$ᇭ;->ᡲ:Z

    .line 332
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lnts/ᶧ$ᇭ;->ᇭ:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 334
    iput-object v1, p0, Lnts/ᶧ$ᇭ;->ᇭ:Ljava/io/OutputStream;

    .line 335
    iget-object p0, p0, Lnts/ᶧ$ᇭ;->Ὺ:Lnts/ᶧ;

    new-instance v0, Lnts/ᛎ;

    invoke-direct {v0, p1}, Lnts/ᛎ;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lnts/ዧ;->ㆃ(Lnts/ᛎ;)V

    return-void
.end method

.method public static synthetic ㆃ(Lnts/ᶧ;Lnts/ᛎ;)V
    .locals 1

    const/4 v0, 0x0

    .line 245
    iput v0, p0, Lnts/ᶧ;->ཞ:I

    .line 247
    iget v0, p0, Lnts/ᶧ;->ⱋ:I

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lnts/ᶧ;->ᛩ:Lnts/ڊ;

    invoke-virtual {v0, p1}, Lnts/ዧ;->ㆃ(Ljava/lang/Exception;)V

    .line 254
    iget-object p0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    .line 255
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void

    .line 256
    :cond_0
    invoke-virtual {p0, p1}, Lnts/ᶧ;->ᾨ(Lnts/ᛎ;)V

    return-void
.end method


# virtual methods
.method public Ͼ(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 24
    :try_start_0
    iput p1, p0, Lnts/ᶧ;->લ:I

    .line 26
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public Ͼ(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ᶧ;->ᇌ:Lnts/ሠ;

    if-eqz v0, :cond_1

    .line 2
    iget v1, v0, Lnts/ሠ;->ᾨ:I

    if-lez v1, :cond_1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 3
    :try_start_0
    iget-object p1, v0, Lnts/ሠ;->ㆃ:[B

    .line 4
    invoke-virtual {p0, p1, v3, v1, v2}, Lnts/ᶧ;->ㆃ([BIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p1, p0, Lnts/ᶧ;->ᇌ:Lnts/ሠ;

    iget v0, p0, Lnts/ᶧ;->ଙ:I

    invoke-virtual {p1, v3, v0}, Lnts/ሠ;->ㆃ(II)Lnts/ሠ;

    .line 7
    iput v3, p0, Lnts/ᶧ;->ଙ:I

    return-void

    :catchall_0
    move-exception p1

    .line 8
    iget-object v0, p0, Lnts/ᶧ;->ᇌ:Lnts/ሠ;

    iget v1, p0, Lnts/ᶧ;->ଙ:I

    invoke-virtual {v0, v3, v1}, Lnts/ሠ;->ㆃ(II)Lnts/ሠ;

    .line 9
    iput v3, p0, Lnts/ᶧ;->ଙ:I

    .line 10
    throw p1

    .line 11
    :cond_0
    :try_start_1
    iget-object p1, v0, Lnts/ሠ;->ㆃ:[B

    .line 12
    invoke-virtual {p0, p1, v3, v1, v2}, Lnts/ᶧ;->ᾨ([BIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    iget-object p1, p0, Lnts/ᶧ;->ᇌ:Lnts/ሠ;

    iget-object v0, p0, Lnts/ᶧ;->យ:Lnts/ᶧ$ᇭ;

    .line 15
    iget v0, v0, Lnts/ᶧ$ᇭ;->ᰛ:I

    .line 16
    invoke-virtual {p1, v3, v0}, Lnts/ሠ;->ㆃ(II)Lnts/ሠ;

    .line 17
    iput v3, p0, Lnts/ᶧ;->ଙ:I

    return-void

    :catchall_1
    move-exception p1

    .line 18
    iget-object v0, p0, Lnts/ᶧ;->ᇌ:Lnts/ሠ;

    iget-object v1, p0, Lnts/ᶧ;->យ:Lnts/ᶧ$ᇭ;

    .line 19
    iget v1, v1, Lnts/ᶧ$ᇭ;->ᰛ:I

    .line 20
    invoke-virtual {v0, v3, v1}, Lnts/ሠ;->ㆃ(II)Lnts/ሠ;

    .line 21
    iput v3, p0, Lnts/ᶧ;->ଙ:I

    .line 22
    throw p1

    :cond_1
    return-void
.end method

.method public ౠ(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 13
    :try_start_0
    iput p1, p0, Lnts/ᶧ;->ఋ:I

    .line 15
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ౠ(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-boolean p1, p0, Lnts/ᶧ;->ᜧ:Z

    .line 4
    iget v1, p0, Lnts/ᶧ;->ཞ:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 11
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ᇭ(I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget v1, p0, Lnts/ᶧ;->Ё:I

    if-le p1, v1, :cond_0

    move p1, v1

    .line 7
    :cond_0
    iput p1, p0, Lnts/ᶧ;->ᨍ:I

    .line 8
    iget p1, p0, Lnts/ᶧ;->ཞ:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 9
    iget-object p1, p0, Lnts/ᶧ;->И:Lnts/ᶧ$ㆃ;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lnts/ᶧ$ㆃ;->ㆃ(Lnts/ᶧ$ㆃ;Z)Z

    .line 10
    iget-object p1, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 12
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ᇭ(Lnts/ᛎ;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public ዲ()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public ዲ(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iput p1, p0, Lnts/ᶧ;->ᴨ:I

    .line 7
    iget v1, p0, Lnts/ᶧ;->ཞ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 9
    :try_start_1
    sget-object v1, Lnts/ⴳ;->ㇸ:Lnts/ẜ;

    iget-object v2, p0, Lnts/ᶧ;->ཊ:Ljava/net/Socket;

    invoke-interface {v1, v2, p1}, Lnts/ẜ;->ᾨ(Ljava/net/Socket;I)V

    .line 10
    iget-object p1, p0, Lnts/ᶧ;->យ:Lnts/ᶧ$ᇭ;

    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p1, Lnts/ᶧ$ᇭ;->ዲ:Z
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    :try_start_2
    new-instance v1, Lnts/ᛎ;

    invoke-direct {v1, p1}, Lnts/ᛎ;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 15
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public ዲ(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget-object v0, p0, Lnts/ᶧ;->Ꮆ:Lnts/ᶧ$ᾨ;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, v0, Lnts/ᶧ$ᾨ;->ㆃ:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lnts/ᶧ;->И:Lnts/ᶧ$ㆃ;

    invoke-virtual {v0, p1}, Lnts/ᶧ$ㆃ;->ㆃ(Z)V

    return-void
.end method

.method public ᎊ()Ljava/lang/String;
    .locals 3

    .line 4
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget v1, p0, Lnts/ᶧ;->ཞ:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 6
    iget-object v1, p0, Lnts/ᶧ;->ཊ:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 8
    :cond_0
    iget-object v1, p0, Lnts/ᶧ;->ⶦ:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public ᎊ(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 12
    :try_start_0
    iget v1, p0, Lnts/ᶧ;->ཞ:I

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x47

    const/16 v1, 0x26

    const/16 v2, 0x17a

    .line 15
    invoke-static {v2, p1, v1}, Lnts/ݶ;->ⱪ(III)Ljava/lang/String;

    move-result-object p1

    .line 16
    new-instance v1, Lnts/ᛎ;

    const/16 v2, 0x64

    invoke-direct {v1, v2, p1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v1

    .line 17
    :cond_1
    :goto_0
    iput p1, p0, Lnts/ᶧ;->Ἂ:I

    .line 22
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ᎊ(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-boolean p1, p0, Lnts/ᶧ;->ᾤ:Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ᙕ()V
    .locals 4

    const/4 v0, 0x3

    .line 1
    iput v0, p0, Lnts/ᶧ;->ཞ:I

    .line 3
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lnts/ᶧ;->И:Lnts/ᶧ$ㆃ;

    if-eqz v1, :cond_1

    .line 6
    iget v2, v1, Lnts/ᶧ$ㆃ;->ㆃ:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    .line 9
    iput v2, v1, Lnts/ᶧ$ㆃ;->ㆃ:I

    .line 10
    iget-object v1, v1, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    iget-object v1, v1, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 12
    :cond_1
    :goto_0
    iget-object v1, p0, Lnts/ᶧ;->យ:Lnts/ᶧ$ᇭ;

    if-eqz v1, :cond_2

    .line 13
    invoke-static {v1}, Lnts/ᶧ$ᇭ;->ᇭ(Lnts/ᶧ$ᇭ;)V

    .line 15
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lnts/ᶧ;->ཊ:Ljava/net/Socket;

    return-void

    :catchall_0
    move-exception v1

    .line 19
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public ᙕ(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 44
    :try_start_0
    iget v1, p0, Lnts/ᶧ;->ཞ:I

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x46

    const/16 v1, 0x70

    const/16 v2, 0xed

    .line 47
    invoke-static {v2, p1, v1}, Lnts/ݶ;->ⱪ(III)Ljava/lang/String;

    move-result-object p1

    .line 48
    new-instance v1, Lnts/ᛎ;

    const/16 v2, 0x6a

    invoke-direct {v1, v2, p1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v1

    .line 49
    :cond_1
    :goto_0
    iput p1, p0, Lnts/ᶧ;->ᚇ:I

    .line 54
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ᙕ(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 32
    :try_start_0
    iget v1, p0, Lnts/ᶧ;->ཞ:I

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x46

    const/16 v1, 0x2e

    const/16 v2, 0xa7

    .line 35
    invoke-static {v2, p1, v1}, Lnts/ݶ;->ⱪ(III)Ljava/lang/String;

    move-result-object p1

    .line 36
    new-instance v1, Lnts/ᛎ;

    const/16 v2, 0x6b

    invoke-direct {v1, v2, p1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, ""

    .line 37
    :goto_1
    :try_start_1
    iput-object p1, p0, Lnts/ᶧ;->ⶦ:Ljava/lang/String;

    .line 42
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public ᙕ(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 21
    :try_start_0
    iput-boolean p1, p0, Lnts/ᶧ;->ㇸ:Z

    .line 23
    iget v1, p0, Lnts/ᶧ;->ཞ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 25
    :try_start_1
    iget-object v1, p0, Lnts/ᶧ;->ཊ:Ljava/net/Socket;

    invoke-virtual {v1, p1}, Ljava/net/Socket;->setKeepAlive(Z)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 27
    :try_start_2
    new-instance v1, Lnts/ᛎ;

    invoke-direct {v1, p1}, Lnts/ᛎ;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 30
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final ᛃ()V
    .locals 2

    .line 1
    iget v0, p0, Lnts/ᶧ;->ᯋ:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lnts/ᶧ;->ᯋ:I

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lnts/ᶧ;->て()V

    .line 6
    :goto_0
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public ᡲ()I
    .locals 3

    .line 11
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 12
    :try_start_0
    iget v1, p0, Lnts/ᶧ;->ཞ:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 13
    iget-object v1, p0, Lnts/ᶧ;->ཊ:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getLocalPort()I

    move-result v1

    monitor-exit v0

    return v1

    .line 15
    :cond_0
    iget v1, p0, Lnts/ᶧ;->ᚇ:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public ᡲ(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-boolean p1, p0, Lnts/ᶧ;->ᡤ:Z

    .line 4
    iget p1, p0, Lnts/ᶧ;->ཞ:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :cond_0
    new-instance p1, Lnts/ᛎ;

    const/16 v1, 0x28

    const/16 v2, 0x56

    const/16 v3, 0x7f

    invoke-static {v3, v1, v2}, Lnts/ݶ;->ⱪ(III)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd4

    invoke-direct {p1, v2, v1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ᰛ(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iput p1, p0, Lnts/ᶧ;->ᄎ:I

    .line 5
    iget v1, p0, Lnts/ᶧ;->ཞ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 7
    :try_start_1
    sget-object v1, Lnts/ⴳ;->ㇸ:Lnts/ẜ;

    iget-object v2, p0, Lnts/ᶧ;->ཊ:Ljava/net/Socket;

    invoke-interface {v1, v2, p1}, Lnts/ẜ;->ㆃ(Ljava/net/Socket;I)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    :try_start_2
    new-instance v1, Lnts/ᛎ;

    invoke-direct {v1, p1}, Lnts/ᛎ;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 12
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public ᰛ(Z)V
    .locals 2

    .line 13
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 14
    :try_start_0
    iput p1, p0, Lnts/ᶧ;->ཞ:I

    .line 15
    :cond_0
    iget-object p1, p0, Lnts/ᶧ;->ߛ:Lnts/ᇾ;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 17
    iget-object p1, p1, Lnts/ᇾ;->ᇢ:Ljava/util/Hashtable;

    .line 18
    iput-object p1, p0, Lnts/ᶧ;->ᅌ:Ljava/util/Hashtable;

    .line 19
    iput-object v1, p0, Lnts/ᶧ;->ߛ:Lnts/ᇾ;

    :cond_1
    const/4 p1, 0x1

    .line 21
    invoke-virtual {p0, p1}, Lnts/ᶧ;->Ͼ(Z)V

    .line 22
    iput-object v1, p0, Lnts/ᶧ;->ᇌ:Lnts/ሠ;

    .line 23
    iget-object p1, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 24
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ᵑ()V
    .locals 0

    return-void
.end method

.method public ᾨ(Lnts/ᛎ;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public ᾨ([B)V
    .locals 2

    .line 43
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 44
    :try_start_0
    invoke-static {p1}, Lnts/ၽ;->ౠ([B)[B

    move-result-object p1

    iput-object p1, p0, Lnts/ᶧ;->ᦝ:[B

    .line 46
    iget p1, p0, Lnts/ᶧ;->ཞ:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 47
    iget-object p1, p0, Lnts/ᶧ;->И:Lnts/ᶧ$ㆃ;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lnts/ᶧ$ㆃ;->ㆃ(Lnts/ᶧ$ㆃ;Z)Z

    .line 48
    iget-object p1, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 50
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ᾨ([BIII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 2
    iget v0, p0, Lnts/ᶧ;->ཞ:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 3
    iget-object v0, p0, Lnts/ᶧ;->ᛩ:Lnts/ڊ;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, p2, p3}, Lnts/ⴳ;->ㆃ(I[BII)V

    const/4 v0, 0x1

    .line 6
    :try_start_0
    iget-object v3, p0, Lnts/ᶧ;->យ:Lnts/ᶧ$ᇭ;

    invoke-static {v3, p1, p2, p3}, Lnts/ᶧ$ᇭ;->ㆃ(Lnts/ᶧ$ᇭ;[BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p3, p0, Lnts/ᶧ;->យ:Lnts/ᶧ$ᇭ;

    .line 9
    iget p3, p3, Lnts/ᶧ$ᇭ;->ᰛ:I

    .line 10
    iget-object v3, p0, Lnts/ᶧ;->ᛩ:Lnts/ڊ;

    invoke-virtual {v3}, Lnts/ⴳ;->て()V

    if-eq p4, v0, :cond_1

    .line 12
    sget-object v0, Lnts/ዧ;->ዲ:[B

    if-ne p4, v1, :cond_0

    .line 14
    new-array v0, p3, [B

    .line 15
    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    :cond_0
    invoke-virtual {p0, p3, v0}, Lnts/ᶧ;->ㆃ(I[B)V

    .line 22
    :cond_1
    iget-object p1, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    return-void

    :catchall_0
    move-exception p3

    .line 24
    iget-object v3, p0, Lnts/ᶧ;->យ:Lnts/ᶧ$ᇭ;

    .line 25
    iget v3, v3, Lnts/ᶧ$ᇭ;->ᰛ:I

    .line 26
    iget-object v4, p0, Lnts/ᶧ;->ᛩ:Lnts/ڊ;

    invoke-virtual {v4}, Lnts/ⴳ;->て()V

    if-eq p4, v0, :cond_3

    .line 28
    sget-object v0, Lnts/ዧ;->ዲ:[B

    if-ne p4, v1, :cond_2

    .line 30
    new-array v0, v3, [B

    .line 31
    invoke-static {p1, p2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    :cond_2
    invoke-virtual {p0, v3, v0}, Lnts/ᶧ;->ㆃ(I[B)V

    .line 38
    :cond_3
    iget-object p1, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 40
    throw p3

    .line 42
    :cond_4
    new-instance p1, Lnts/ᛎ;

    const/16 p2, 0x26

    const/16 p3, 0xa

    const/16 p4, 0x35

    invoke-static {p4, p2, p3}, Lnts/ݶ;->ⱪ(III)Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x45d

    invoke-direct {p1, p3, p2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public Ὺ()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lnts/ᶧ;->ཞ:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v1, p0, Lnts/ᶧ;->ཊ:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 5
    :cond_0
    iget-object v1, p0, Lnts/ᶧ;->Ϯ:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public Ⲳ()Ljava/util/Hashtable;
    .locals 1

    .line 1
    iget-object v0, p0, Lnts/ᶧ;->ߛ:Lnts/ᇾ;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lnts/ᇾ;->ᇢ:Ljava/util/Hashtable;

    .line 3
    iput-object v0, p0, Lnts/ᶧ;->ᅌ:Ljava/util/Hashtable;

    .line 4
    :cond_0
    iget-object v0, p0, Lnts/ᶧ;->ᅌ:Ljava/util/Hashtable;

    return-object v0
.end method

.method public ⴗ()V
    .locals 4

    .line 1
    iget-object v0, p0, Lnts/ᶧ;->Ꮆ:Lnts/ᶧ$ᾨ;

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, v0, Lnts/ᶧ$ᾨ;->ㆃ:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lnts/ᶧ;->Ꮆ:Lnts/ᶧ$ᾨ;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v2, p0, Lnts/ᶧ;->ᛩ:Lnts/ڊ;

    invoke-virtual {v2}, Lnts/ڊ;->ᒃ()V

    .line 7
    iget-object v2, p0, Lnts/ᶧ;->ᛩ:Lnts/ڊ;

    iget-object v3, p0, Lnts/ᶧ;->ཊ:Ljava/net/Socket;

    invoke-virtual {v2, v1, v3, v1}, Lnts/ڊ;->ᾨ(Lnts/ᛎ;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Lnts/ᶧ;->ዲ(Z)V

    :cond_1
    return-void
.end method

.method public て()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public て(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    if-gtz p1, :cond_0

    .line 3
    :try_start_0
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    iput p1, p0, Lnts/ᶧ;->Ё:I

    .line 7
    iget p1, p0, Lnts/ᶧ;->ཞ:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 8
    iget-object p1, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 10
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public て(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 31
    :try_start_0
    iget v1, p0, Lnts/ᶧ;->ཞ:I

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x47

    const/16 v1, 0x18

    const/16 v2, 0x133

    .line 34
    invoke-static {v2, p1, v1}, Lnts/ݶ;->ⱪ(III)Ljava/lang/String;

    move-result-object p1

    .line 35
    new-instance v1, Lnts/ᛎ;

    const/16 v2, 0x65

    invoke-direct {v1, v2, p1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, ""

    .line 36
    :goto_1
    :try_start_1
    iput-object p1, p0, Lnts/ᶧ;->Ϯ:Ljava/lang/String;

    .line 41
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public て(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 12
    :try_start_0
    iput-boolean p1, p0, Lnts/ᶧ;->ᬌ:Z

    .line 14
    iget v1, p0, Lnts/ᶧ;->ཞ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 17
    :try_start_1
    iget p1, p0, Lnts/ᶧ;->η:I

    if-nez p1, :cond_0

    .line 18
    iget-object p1, p0, Lnts/ᶧ;->ཊ:Ljava/net/Socket;

    invoke-virtual {p1, v2, v2}, Ljava/net/Socket;->setSoLinger(ZI)V

    goto :goto_0

    .line 20
    :cond_0
    iget-object v2, p0, Lnts/ᶧ;->ཊ:Ljava/net/Socket;

    invoke-virtual {v2, v1, p1}, Ljava/net/Socket;->setSoLinger(ZI)V

    goto :goto_0

    .line 23
    :cond_1
    iget-object p1, p0, Lnts/ᶧ;->ཊ:Ljava/net/Socket;

    invoke-virtual {p1, v1, v2}, Ljava/net/Socket;->setSoLinger(ZI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 26
    :try_start_2
    new-instance v1, Lnts/ᛎ;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xe

    const/16 v4, 0x33

    const/16 v5, 0x5b

    invoke-static {v5, v3, v4}, Lnts/ݶ;->ⱪ(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x2bc

    invoke-direct {v1, v2, p1}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw v1

    .line 29
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public ㆃ(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public ㆃ(I[B)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public ㆃ(Ljava/net/Socket;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iput-object p1, p0, Lnts/ᶧ;->ཊ:Ljava/net/Socket;

    .line 4
    iget-object v1, p0, Lnts/ᶧ;->И:Lnts/ᶧ$ㆃ;

    if-eqz v1, :cond_0

    .line 5
    invoke-static {v1}, Lnts/ᶧ$ㆃ;->ㆃ(Lnts/ᶧ$ㆃ;)V

    .line 7
    :cond_0
    iget-object v1, p0, Lnts/ᶧ;->យ:Lnts/ᶧ$ᇭ;

    if-eqz v1, :cond_1

    .line 8
    invoke-static {v1}, Lnts/ᶧ$ᇭ;->ㆃ(Lnts/ᶧ$ᇭ;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    :cond_2
    invoke-virtual {p0}, Lnts/ᶧ;->ᙕ()V

    .line 13
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ㆃ(Ljava/net/Socket;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const p2, 0xffff

    .line 257
    :try_start_0
    sget-object v1, Lnts/ⴳ;->ㇸ:Lnts/ẜ;

    invoke-interface {v1, p1, p2}, Lnts/ẜ;->ᾨ(Ljava/net/Socket;I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :catch_0
    :try_start_1
    sget-object v1, Lnts/ⴳ;->ㇸ:Lnts/ẜ;

    invoke-interface {v1, p1, p2}, Lnts/ẜ;->ㆃ(Ljava/net/Socket;I)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    .line 263
    :catch_1
    :try_start_2
    invoke-virtual {p1, v0, v0}, Ljava/net/Socket;->setSoLinger(ZI)V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2

    .line 266
    :catch_2
    :try_start_3
    invoke-virtual {p1, v0}, Ljava/net/Socket;->setTcpNoDelay(Z)V
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_3

    .line 269
    :catch_3
    :try_start_4
    invoke-virtual {p1, v0}, Ljava/net/Socket;->setKeepAlive(Z)V
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_4

    .line 272
    :catch_4
    :try_start_5
    invoke-virtual {p1, v0}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_a

    goto :goto_1

    .line 276
    :cond_0
    :try_start_6
    sget-object p2, Lnts/ⴳ;->ㇸ:Lnts/ẜ;

    iget v1, p0, Lnts/ᶧ;->ᴨ:I

    invoke-interface {p2, p1, v1}, Lnts/ẜ;->ᾨ(Ljava/net/Socket;I)V
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_5

    .line 279
    :catch_5
    :try_start_7
    sget-object p2, Lnts/ⴳ;->ㇸ:Lnts/ẜ;

    iget v1, p0, Lnts/ᶧ;->ᄎ:I

    invoke-interface {p2, p1, v1}, Lnts/ẜ;->ㆃ(Ljava/net/Socket;I)V
    :try_end_7
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_6

    .line 280
    :catch_6
    iget-boolean p2, p0, Lnts/ᶧ;->ᬌ:Z

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    .line 281
    iget p2, p0, Lnts/ᶧ;->η:I

    if-nez p2, :cond_1

    .line 283
    :try_start_8
    invoke-virtual {p1, v0, v0}, Ljava/net/Socket;->setSoLinger(ZI)V

    goto :goto_0

    .line 287
    :cond_1
    invoke-virtual {p1, v1, p2}, Ljava/net/Socket;->setSoLinger(ZI)V

    goto :goto_0

    .line 292
    :cond_2
    invoke-virtual {p1, v1, v0}, Ljava/net/Socket;->setSoLinger(ZI)V
    :try_end_8
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_7

    .line 293
    :catch_7
    :goto_0
    iget-boolean p2, p0, Lnts/ᶧ;->ᡤ:Z

    if-eqz p2, :cond_3

    .line 294
    :try_start_9
    invoke-virtual {p1, p2}, Ljava/net/Socket;->setTcpNoDelay(Z)V
    :try_end_9
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_8

    .line 295
    :catch_8
    :cond_3
    iget-boolean p2, p0, Lnts/ᶧ;->ㇸ:Z

    if-eqz p2, :cond_4

    .line 296
    :try_start_a
    invoke-virtual {p1, v1}, Ljava/net/Socket;->setKeepAlive(Z)V
    :try_end_a
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_9

    :catch_9
    :cond_4
    const/16 p2, 0x64

    .line 300
    :try_start_b
    invoke-virtual {p1, p2}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_b
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_b} :catch_a

    :catch_a
    :goto_1
    return-void
.end method

.method public ㆃ(Lnts/ᇾ;)V
    .locals 3

    .line 14
    iput-object p1, p0, Lnts/ᶧ;->ߛ:Lnts/ᇾ;

    .line 15
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lnts/ᶧ;->И:Lnts/ᶧ$ㆃ;

    if-eqz v1, :cond_0

    .line 17
    invoke-static {v1}, Lnts/ᶧ$ㆃ;->ㆃ(Lnts/ᶧ$ㆃ;)V

    .line 19
    :cond_0
    iget-object v1, p0, Lnts/ᶧ;->យ:Lnts/ᶧ$ᇭ;

    if-eqz v1, :cond_1

    .line 20
    invoke-static {v1}, Lnts/ᶧ$ᇭ;->ㆃ(Lnts/ᶧ$ᇭ;)V

    .line 22
    :cond_1
    iget-object v1, p0, Lnts/ᶧ;->ཊ:Ljava/net/Socket;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 23
    :cond_2
    invoke-virtual {p0}, Lnts/ᶧ;->ᙕ()V

    .line 25
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_7

    .line 27
    iget-object p1, p0, Lnts/ᶧ;->Ꮆ:Lnts/ᶧ$ᾨ;

    if-nez p1, :cond_5

    .line 28
    new-instance p1, Lnts/ᶧ$ᾨ;

    iget-object v0, p0, Lnts/ᶧ;->ᛩ:Lnts/ڊ;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-boolean v0, v0, Lnts/ⴳ;->ཞ:Z

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lnts/ᶧ;->ཊ:Ljava/net/Socket;

    invoke-direct {p1, p0, v0, v2, p0}, Lnts/ᶧ$ᾨ;-><init>(Lnts/ᶧ;ZLjava/net/Socket;Lnts/ᶧ;)V

    iput-object p1, p0, Lnts/ᶧ;->Ꮆ:Lnts/ᶧ$ᾨ;

    .line 29
    invoke-virtual {p0, v1}, Lnts/ᶧ;->ዲ(Z)V

    .line 30
    iget-object p1, p0, Lnts/ᶧ;->Ꮆ:Lnts/ᶧ$ᾨ;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 32
    :cond_5
    iget-object p1, p0, Lnts/ᶧ;->ߛ:Lnts/ᇾ;

    .line 33
    iput-object p0, p1, Lnts/ᇾ;->ᛩ:Lnts/Ѷ;

    const/4 v0, 0x0

    .line 35
    :try_start_1
    iput-object v0, p1, Lnts/ᇾ;->ౠ:Lnts/ጻ;

    iput-object v0, p1, Lnts/ᇾ;->Ͼ:Lnts/ጻ;

    const-string v0, ""

    .line 36
    iput-object v0, p1, Lnts/ᇾ;->ཊ:Ljava/lang/String;

    .line 37
    iget-boolean v0, p1, Lnts/ᇾ;->ㆃ:Z

    if-eqz v0, :cond_6

    .line 38
    invoke-virtual {p1}, Lnts/ᇾ;->Ṳ()V

    return-void

    :cond_6
    const/4 v0, 0x2

    .line 41
    iput v0, p1, Lnts/ᇾ;->ᙕ:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 44
    invoke-virtual {p1, v0}, Lnts/ᇾ;->ㆃ(Ljava/lang/Exception;)V

    .line 45
    new-instance p1, Lnts/ᛎ;

    invoke-direct {p1, v0}, Lnts/ᛎ;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_7
    return-void

    :catchall_0
    move-exception p1

    .line 46
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public ㆃ(ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 47
    iget v0, p0, Lnts/ᶧ;->ᯋ:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x4

    .line 48
    iput v0, p0, Lnts/ᶧ;->ᯋ:I

    .line 50
    :catch_0
    :goto_0
    iget v1, p0, Lnts/ᶧ;->ᯋ:I

    if-ne v1, v0, :cond_1

    if-eqz p2, :cond_1

    .line 52
    :try_start_0
    iget-object v1, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    xor-int/2addr p2, v0

    .line 60
    iput p2, p0, Lnts/ᶧ;->ⱋ:I

    .line 62
    iget p2, p0, Lnts/ᶧ;->ཞ:I

    if-eqz p1, :cond_6

    .line 63
    iput v0, p0, Lnts/ᶧ;->ཞ:I

    const/4 p1, 0x0

    .line 66
    iput p1, p0, Lnts/ᶧ;->ᯋ:I

    .line 68
    iget-object v1, p0, Lnts/ᶧ;->И:Lnts/ᶧ$ㆃ;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lnts/ᶧ$ㆃ;->ᾨ(Lnts/ᶧ$ㆃ;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 70
    iget-object v1, p0, Lnts/ᶧ;->И:Lnts/ᶧ$ㆃ;

    const/4 v2, 0x5

    .line 71
    iput v2, v1, Lnts/ᶧ$ㆃ;->ㆃ:I

    const/4 v1, 0x0

    .line 72
    iput-object v1, p0, Lnts/ᶧ;->И:Lnts/ᶧ$ㆃ;

    .line 75
    :cond_2
    iget-object v1, p0, Lnts/ᶧ;->И:Lnts/ᶧ$ㆃ;

    if-nez v1, :cond_4

    .line 77
    new-instance v1, Lnts/ᶧ$ㆃ;

    iget-object v2, p0, Lnts/ᶧ;->ᛩ:Lnts/ڊ;

    if-eqz v2, :cond_3

    iget-boolean v2, v2, Lnts/ⴳ;->ཞ:Z

    if-eqz v2, :cond_3

    move v2, v0

    goto :goto_1

    :cond_3
    move v2, p1

    :goto_1
    invoke-direct {v1, p0, v2}, Lnts/ᶧ$ㆃ;-><init>(Lnts/ᶧ;Z)V

    iput-object v1, p0, Lnts/ᶧ;->И:Lnts/ᶧ$ㆃ;

    .line 78
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 81
    :cond_4
    iget-object v1, p0, Lnts/ᶧ;->យ:Lnts/ᶧ$ᇭ;

    if-eqz v1, :cond_5

    .line 82
    iput-boolean p1, v1, Lnts/ᶧ$ᇭ;->ᡲ:Z

    .line 83
    invoke-static {v1}, Lnts/ᶧ$ᇭ;->ᇭ(Lnts/ᶧ$ᇭ;)V

    .line 87
    :cond_5
    iget-object p1, p0, Lnts/ᶧ;->И:Lnts/ᶧ$ㆃ;

    iget-object v1, p0, Lnts/ᶧ;->ཊ:Ljava/net/Socket;

    .line 88
    iput-object v1, p1, Lnts/ᶧ$ㆃ;->ᾨ:Ljava/net/Socket;

    .line 89
    iput v0, p1, Lnts/ᶧ$ㆃ;->ㆃ:I

    .line 90
    iget-object p1, p1, Lnts/ᶧ$ㆃ;->ⱪ:Lnts/ᶧ;

    iget-object p1, p1, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_2

    :cond_6
    if-nez p2, :cond_7

    goto :goto_4

    .line 92
    :cond_7
    invoke-virtual {p0}, Lnts/ᶧ;->ᙕ()V

    .line 95
    :goto_2
    iget p1, p0, Lnts/ᶧ;->ⱋ:I

    if-nez p1, :cond_8

    .line 97
    :goto_3
    iget p1, p0, Lnts/ᶧ;->ཞ:I

    if-ne p2, p1, :cond_8

    .line 100
    :try_start_1
    iget-object p1, p0, Lnts/ᶧ;->ᛩ:Lnts/ڊ;

    invoke-virtual {p1}, Lnts/ⴳ;->ᙕ()V
    :try_end_1
    .catch Lnts/ᛎ; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 104
    invoke-virtual {p0}, Lnts/ᶧ;->ᙕ()V

    .line 106
    throw p1

    :cond_8
    :goto_4
    return-void
.end method

.method public ㆃ([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 107
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnts/ᶧ;->ㆃ([BII)V

    return-void
.end method

.method public ㆃ([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    :try_start_0
    iget v1, p0, Lnts/ᶧ;->ᯋ:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4

    if-nez p1, :cond_0

    .line 120
    monitor-exit v0

    return-void

    .line 122
    :cond_0
    iget-object v1, p0, Lnts/ᶧ;->ᛩ:Lnts/ڊ;

    iget v1, v1, Lnts/ⴳ;->ᯋ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 123
    :try_start_1
    invoke-virtual {p0, v1}, Lnts/ᶧ;->Ͼ(Z)V

    .line 124
    iget-object v2, p0, Lnts/ᶧ;->ߛ:Lnts/ᇾ;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_1

    .line 126
    :try_start_2
    iput-boolean v3, p0, Lnts/ᶧ;->ᒸ:Z

    .line 127
    invoke-virtual {v2, p1, p2, p3, v3}, Lnts/ᇾ;->ㆃ([BIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    :try_start_3
    iput-boolean v1, p0, Lnts/ᶧ;->ᒸ:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Lnts/ᶧ;->ᒸ:Z

    .line 130
    throw p1

    .line 132
    :cond_1
    invoke-virtual {p0, p1, p2, p3, v3}, Lnts/ᶧ;->ᾨ([BIII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 133
    :goto_0
    :try_start_4
    iput v3, p0, Lnts/ᶧ;->ᯋ:I

    goto :goto_1

    :catchall_1
    move-exception p1

    iput v3, p0, Lnts/ᶧ;->ᯋ:I

    .line 134
    throw p1

    .line 135
    :cond_2
    iget-object v1, p0, Lnts/ᶧ;->ߛ:Lnts/ᇾ;

    if-eqz v1, :cond_3

    .line 136
    invoke-virtual {v1, p1, p2, p3, v3}, Lnts/ᇾ;->ㆃ([BIII)V

    goto :goto_1

    .line 138
    :cond_3
    invoke-virtual {p0, p1, p2, p3, v3}, Lnts/ᶧ;->ㆃ([BIII)V

    .line 139
    :goto_1
    monitor-exit v0

    return-void

    .line 140
    :cond_4
    iput-boolean v3, p0, Lnts/ᶧ;->ᇢ:Z

    .line 141
    invoke-virtual {p0}, Lnts/ᶧ;->ዲ()V

    .line 142
    new-instance p1, Lnts/ᛎ;

    const/16 p2, 0x1f

    const/16 p3, 0x16

    invoke-static {p2, p3, p3}, Lnts/ݶ;->ⱪ(III)Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x87

    invoke-direct {p1, p3, p2}, Lnts/ᛎ;-><init>(ILjava/lang/String;)V

    throw p1

    :catchall_2
    move-exception p1

    .line 161
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public ㆃ([BIII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnts/ᛎ;
        }
    .end annotation

    const/4 v0, 0x0

    .line 162
    iput v0, p0, Lnts/ᶧ;->ଙ:I

    .line 163
    iput-boolean v0, p0, Lnts/ᶧ;->ᇢ:Z

    const/4 v1, 0x3

    .line 164
    iput v1, p0, Lnts/ᶧ;->ᯋ:I

    move v2, v0

    .line 172
    :goto_0
    :try_start_0
    iget v3, p0, Lnts/ᶧ;->ᯋ:I

    if-ne v3, v1, :cond_0

    .line 174
    invoke-virtual {p0, p1, p2, p3, p4}, Lnts/ᶧ;->ᾨ([BIII)V

    .line 175
    iget-object v3, p0, Lnts/ᶧ;->យ:Lnts/ᶧ$ᇭ;

    .line 176
    iget p1, v3, Lnts/ᶧ$ᇭ;->ᰛ:I
    :try_end_0
    .catch Lnts/ᛎ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v2, p1

    goto :goto_1

    :cond_0
    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 203
    :goto_1
    iput v0, p0, Lnts/ᶧ;->ᯋ:I

    .line 207
    iget-boolean p1, p0, Lnts/ᶧ;->ᇢ:Z

    if-nez p1, :cond_1

    .line 208
    iput v2, p0, Lnts/ᶧ;->ଙ:I

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v3

    .line 209
    :try_start_1
    iget v4, v3, Lnts/ᛎ;->ㆃ:I

    const/16 v5, 0x87

    if-ne v4, v5, :cond_3

    .line 210
    iget-object v3, p0, Lnts/ᶧ;->យ:Lnts/ᶧ$ᇭ;

    .line 211
    iget v3, v3, Lnts/ᶧ$ᇭ;->ᰛ:I

    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    add-int/2addr v2, v3

    const/4 v3, 0x2

    .line 212
    iput v3, p0, Lnts/ᶧ;->ᯋ:I

    .line 216
    :cond_2
    iget-object v3, p0, Lnts/ᶧ;->ᛩ:Lnts/ڊ;

    invoke-virtual {v3}, Lnts/ⴳ;->ᙕ()V

    goto :goto_0

    .line 217
    :cond_3
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    :goto_2
    iput v0, p0, Lnts/ᶧ;->ᯋ:I

    .line 241
    iget-boolean p2, p0, Lnts/ᶧ;->ᇢ:Z

    if-nez p2, :cond_4

    .line 242
    iput v2, p0, Lnts/ᶧ;->ଙ:I

    .line 244
    :cond_4
    throw p1
.end method

.method public ㆃ([BIIII)V
    .locals 1

    .line 336
    iget-boolean v0, p0, Lnts/ᶧ;->ᒸ:Z

    if-eqz v0, :cond_1

    .line 337
    iget-object p4, p0, Lnts/ᶧ;->ᇌ:Lnts/ሠ;

    if-nez p4, :cond_0

    new-instance p4, Lnts/ሠ;

    invoke-direct {p4}, Lnts/ሠ;-><init>()V

    iput-object p4, p0, Lnts/ᶧ;->ᇌ:Lnts/ሠ;

    .line 338
    :cond_0
    iget-object p4, p0, Lnts/ᶧ;->ᇌ:Lnts/ሠ;

    invoke-virtual {p4, p1, p2, p3}, Lnts/ሠ;->ㆃ([BII)Lnts/ሠ;

    .line 339
    iput p5, p0, Lnts/ᶧ;->ଙ:I

    const/4 p1, 0x0

    .line 340
    invoke-virtual {p0, p1}, Lnts/ᶧ;->Ͼ(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 342
    invoke-virtual {p0, v0}, Lnts/ᶧ;->Ͼ(Z)V

    .line 343
    invoke-virtual {p0, p1, p2, p3, p4}, Lnts/ᶧ;->ㆃ([BIII)V

    .line 344
    iput p5, p0, Lnts/ᶧ;->ଙ:I

    .line 346
    :goto_0
    iput p5, p0, Lnts/ᶧ;->ଙ:I

    return-void
.end method

.method public ㆃ([BZ)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method
