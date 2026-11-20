.class public Lnts/ᯋ$ᙕ;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnts/ᯋ;->ㆃ(Landroidx/appcompat/app/AppCompatActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic ᾨ:Lnts/ᯋ;

.field public final synthetic ㆃ:Landroidx/appcompat/app/AppCompatActivity;


# direct methods
.method public constructor <init>(Lnts/ᯋ;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnts/ᯋ$ᙕ;->ᾨ:Lnts/ᯋ;

    iput-object p2, p0, Lnts/ᯋ$ᙕ;->ㆃ:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    invoke-virtual {v0}, Lnts/ᄎ;->ᇭ()Lnts/ⱪ;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x21

    const/16 v2, 0x5e

    const/16 v3, 0xb4

    .line 3
    :try_start_1
    invoke-static {v3, v1, v2}, Lnts/ᾨ;->ᇭ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnts/ⱪ;->ㆃ(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lnts/ᓬ; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    iget-object v0, p0, Lnts/ᯋ$ᙕ;->ᾨ:Lnts/ᯋ;

    .line 11
    iget-object v0, v0, Lnts/ᯋ;->ᰛ:Landroid/os/Handler;

    .line 12
    invoke-static {v0}, Lnts/ᯋ;->ㆃ(Landroid/os/Handler;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    sget-object v0, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    const/16 v1, 0x32

    const/16 v2, 0x43

    const/16 v3, 0xd5

    invoke-static {v3, v1, v2}, Lnts/ᾨ;->ᇭ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnts/ᄎ;->ᇭ(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    iget-object v0, p0, Lnts/ᯋ$ᙕ;->ᾨ:Lnts/ᯋ;

    invoke-static {v0}, Lnts/ᯋ;->ㆃ(Lnts/ᯋ;)V

    .line 23
    iget-object v0, p0, Lnts/ᯋ$ᙕ;->ㆃ:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    return-void

    .line 24
    :cond_0
    :try_start_3
    sget-object v0, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    invoke-virtual {v0}, Lnts/ᄎ;->ᾨ()Lnts/Ͼ;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lnts/Ͼ;->cancelled()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 28
    iget-object v0, p0, Lnts/ᯋ$ᙕ;->ᾨ:Lnts/ᯋ;

    invoke-static {v0}, Lnts/ᯋ;->ㆃ(Lnts/ᯋ;)V

    .line 29
    iget-object v0, p0, Lnts/ᯋ$ᙕ;->ㆃ:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :catch_0
    move-exception v0

    .line 30
    :try_start_4
    sget-object v1, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    invoke-virtual {v1, v0}, Lnts/ᄎ;->ㆃ(Lnts/ᓬ;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 45
    iget-object v0, p0, Lnts/ᯋ$ᙕ;->ᾨ:Lnts/ᯋ;

    invoke-static {v0}, Lnts/ᯋ;->ㆃ(Lnts/ᯋ;)V

    .line 46
    iget-object v0, p0, Lnts/ᯋ$ᙕ;->ㆃ:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :catchall_0
    move-exception v0

    .line 47
    iget-object v1, p0, Lnts/ᯋ$ᙕ;->ᾨ:Lnts/ᯋ;

    invoke-static {v1}, Lnts/ᯋ;->ㆃ(Lnts/ᯋ;)V

    .line 48
    iget-object v1, p0, Lnts/ᯋ$ᙕ;->ㆃ:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    .line 49
    throw v0
.end method
