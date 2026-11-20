.class public Lnts/ᯋ$ౠ;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnts/ᯋ;->ㆃ(Ljava/lang/String;Landroidx/appcompat/app/AppCompatActivity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic Ͼ:Lnts/ᯋ;

.field public final synthetic ᇭ:Ljava/lang/String;

.field public final synthetic ᰛ:Landroidx/appcompat/app/AppCompatActivity;

.field public final synthetic ᾨ:Z

.field public final synthetic ㆃ:Lnts/ⱪ;


# direct methods
.method public constructor <init>(Lnts/ᯋ;Lnts/ⱪ;ZLjava/lang/String;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnts/ᯋ$ౠ;->Ͼ:Lnts/ᯋ;

    iput-object p2, p0, Lnts/ᯋ$ౠ;->ㆃ:Lnts/ⱪ;

    iput-boolean p3, p0, Lnts/ᯋ$ౠ;->ᾨ:Z

    iput-object p4, p0, Lnts/ᯋ$ౠ;->ᇭ:Ljava/lang/String;

    iput-object p5, p0, Lnts/ᯋ$ౠ;->ᰛ:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    :try_start_0
    sget-object v0, Lnts/ᦝ;->Ͼ:Lnts/ᦝ;

    invoke-static {}, Lnts/ᾤ;->ㆃ()Lnts/ᦝ;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/16 v1, 0x15

    if-eqz v0, :cond_1

    .line 4
    :try_start_1
    iget-object v4, p0, Lnts/ᯋ$ౠ;->ㆃ:Lnts/ⱪ;

    invoke-virtual {v4, v3}, Lnts/ⱪ;->ᾨ(Z)V

    goto :goto_1

    .line 6
    :cond_1
    iget-boolean v4, p0, Lnts/ᯋ$ౠ;->ᾨ:Z

    if-eqz v4, :cond_2

    .line 7
    iget-object v4, p0, Lnts/ᯋ$ౠ;->ㆃ:Lnts/ⱪ;

    const/16 v5, 0x72

    const/16 v6, 0x26

    invoke-static {v5, v1, v6}, Lnts/ᾨ;->ᇭ(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnts/ⱪ;->ㆃ(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 9
    :cond_2
    iget-object v4, p0, Lnts/ᯋ$ౠ;->ㆃ:Lnts/ⱪ;

    iget-object v5, p0, Lnts/ᯋ$ౠ;->ᇭ:Ljava/lang/String;

    .line 10
    iget-object v4, v4, Lnts/ⱪ;->て:Lnts/ⲽ;

    if-eqz v4, :cond_3

    invoke-virtual {v4, v5}, Lnts/ⲽ;->ᇭ(Ljava/lang/String;)V
    :try_end_1
    .catch Lnts/ᓬ; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :cond_3
    :goto_1
    const/16 v4, 0x70

    const/16 v5, 0x14

    const/16 v6, 0x87

    .line 11
    :try_start_2
    iget-object v7, p0, Lnts/ᯋ$ౠ;->Ͼ:Lnts/ᯋ;

    .line 12
    iget-object v7, v7, Lnts/ᯋ;->ᰛ:Landroid/os/Handler;

    .line 13
    invoke-static {v7}, Lnts/ᯋ;->ㆃ(Landroid/os/Handler;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 14
    iget-object v0, p0, Lnts/ᯋ$ౠ;->ᰛ:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    :try_start_3
    iget-boolean v0, p0, Lnts/ᯋ$ౠ;->ᾨ:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    if-eqz v0, :cond_4

    .line 20
    :try_start_4
    iget-object v0, p0, Lnts/ᯋ$ౠ;->ㆃ:Lnts/ⱪ;

    invoke-static {v6, v5, v4}, Lnts/ᾨ;->ᇭ(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnts/ⱪ;->ㆃ(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 26
    :catch_0
    :cond_4
    :try_start_5
    iget-object v0, p0, Lnts/ᯋ$ౠ;->ㆃ:Lnts/ⱪ;

    invoke-virtual {v0, v2}, Lnts/ⱪ;->ᾨ(Z)V

    goto/16 :goto_5

    .line 27
    :cond_5
    iget-boolean v7, p0, Lnts/ᯋ$ౠ;->ᾨ:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    if-eqz v7, :cond_6

    .line 29
    :try_start_6
    iget-object v7, p0, Lnts/ᯋ$ౠ;->ㆃ:Lnts/ⱪ;

    invoke-static {v6, v5, v4}, Lnts/ᾨ;->ᇭ(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lnts/ⱪ;->ㆃ(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 35
    :catch_1
    :cond_6
    :try_start_7
    iget-object v4, p0, Lnts/ᯋ$ౠ;->ㆃ:Lnts/ⱪ;

    invoke-virtual {v4, v2}, Lnts/ⱪ;->ᾨ(Z)V

    .line 38
    iget-object v2, p0, Lnts/ᯋ$ౠ;->Ͼ:Lnts/ᯋ;

    invoke-static {v2}, Lnts/ᯋ;->ㆃ(Lnts/ᯋ;)V

    .line 39
    iget-object v2, p0, Lnts/ᯋ$ౠ;->ㆃ:Lnts/ⱪ;

    .line 40
    iget-object v2, v2, Lnts/ⱪ;->て:Lnts/ⲽ;

    if-nez v2, :cond_7

    move v2, v3

    goto :goto_2

    .line 41
    :cond_7
    iget-object v2, v2, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    .line 42
    iget-boolean v2, v2, Lnts/ᣐ;->ᱥ:Z

    :goto_2
    if-eqz v2, :cond_9

    .line 43
    iget-object v0, p0, Lnts/ᯋ$ౠ;->Ͼ:Lnts/ᯋ;

    iget-object v1, p0, Lnts/ᯋ$ౠ;->ㆃ:Lnts/ⱪ;

    invoke-virtual {v1}, Lnts/ⱪ;->て()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnts/ᯋ$ౠ;->ㆃ:Lnts/ⱪ;

    .line 44
    iget-object v2, v2, Lnts/ⱪ;->て:Lnts/ⲽ;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    if-nez v2, :cond_8

    const-string v2, ""

    goto :goto_3

    .line 45
    :cond_8
    :try_start_8
    iget-object v2, v2, Lnts/ⲽ;->ㆃ:Lnts/Ⱊ;

    .line 46
    iget-object v2, v2, Lnts/ᣐ;->ᶟ:Lnts/ᗋ;

    invoke-virtual {v2}, Lnts/ᗋ;->ㆃ()Ljava/lang/String;

    move-result-object v2

    .line 47
    :goto_3
    invoke-virtual {v0, v1, v2}, Lnts/ᯋ;->ㆃ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 53
    :cond_9
    iget-object v2, p0, Lnts/ᯋ$ౠ;->ᰛ:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v2}, Lnts/ᾨ;->ㆃ(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v0, :cond_a

    const/16 v0, 0x9b

    const/16 v4, 0x52

    .line 55
    invoke-static {v0, v1, v4}, Lnts/ᾨ;->ᇭ(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 57
    :cond_a
    iget-object v0, p0, Lnts/ᯋ$ౠ;->ᰛ:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/app/AppCompatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 59
    :goto_4
    iget-object v0, p0, Lnts/ᯋ$ౠ;->ᰛ:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 60
    iget-boolean v1, p0, Lnts/ᯋ$ౠ;->ᾨ:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    if-eqz v1, :cond_b

    .line 62
    :try_start_9
    iget-object v1, p0, Lnts/ᯋ$ౠ;->ㆃ:Lnts/ⱪ;

    invoke-static {v6, v5, v4}, Lnts/ᾨ;->ᇭ(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnts/ⱪ;->ㆃ(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 68
    :catch_2
    :cond_b
    :try_start_a
    iget-object v1, p0, Lnts/ᯋ$ౠ;->ㆃ:Lnts/ⱪ;

    invoke-virtual {v1, v2}, Lnts/ⱪ;->ᾨ(Z)V

    .line 69
    throw v0

    :catch_3
    move-exception v0

    .line 70
    sget-object v1, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    invoke-virtual {v1, v0}, Lnts/ᄎ;->ㆃ(Lnts/ᓬ;)V

    .line 71
    iget-object v0, p0, Lnts/ᯋ$ౠ;->Ͼ:Lnts/ᯋ;

    invoke-static {v0}, Lnts/ᯋ;->ㆃ(Lnts/ᯋ;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    .line 108
    sget-object v1, Lnts/ᄎ;->ᎊ:Lnts/ᄎ;

    invoke-virtual {v1}, Lnts/ᄎ;->ᾨ()Lnts/Ͼ;

    move-result-object v1

    new-instance v2, Lnts/ཞ;

    const/4 v3, 0x4

    const/16 v4, 0x59

    const/16 v5, 0xb0

    invoke-static {v5, v3, v4}, Lnts/ᾨ;->ᇭ(III)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lnts/ᾨ;->ㆃ(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lnts/ཞ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lnts/Ͼ;->runtimeError(Lcom/nsoftware/ipworks3ds/sdk/event/RuntimeErrorEvent;)V

    :goto_5
    return-void
.end method
