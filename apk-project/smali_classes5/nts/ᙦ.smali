.class public Lnts/ᙦ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public Ͼ:Ljava/lang/String;

.field public ౠ:Ljava/lang/Object;

.field public ᇭ:I

.field public ዲ:Ljava/lang/String;

.field public ᎊ:Ljava/lang/String;

.field public ᙕ:Ljava/lang/Object;

.field public ᡲ:Ljava/lang/String;

.field public ᰛ:Lnts/ᛎ;

.field public ᾨ:Ljava/lang/Object;

.field public Ὺ:[Z

.field public て:[B

.field public ㆃ:Lnts/ڊ;


# direct methods
.method public constructor <init>(Lnts/ڊ;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lnts/ᙦ;->ㆃ:Lnts/ڊ;

    .line 3
    iget-object p1, p1, Lnts/ዧ;->ౠ:Ljava/lang/Object;

    iput-object p1, p0, Lnts/ᙦ;->ᾨ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public ㆃ()V
    .locals 8

    .line 1
    iget-object v1, p0, Lnts/ᙦ;->ᾨ:Ljava/lang/Object;

    monitor-enter v1

    .line 2
    :try_start_0
    iget v0, p0, Lnts/ᙦ;->ᇭ:I

    const/4 v2, 0x0

    .line 3
    iput v2, p0, Lnts/ᙦ;->ᇭ:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 20
    :pswitch_0
    iget-object v0, p0, Lnts/ᙦ;->ㆃ:Lnts/ڊ;

    iget-object v2, p0, Lnts/ᙦ;->ᰛ:Lnts/ᛎ;

    invoke-virtual {v0, v2}, Lnts/ڊ;->Ͼ(Lnts/ᛎ;)V

    goto :goto_1

    .line 30
    :pswitch_1
    iget-object v0, p0, Lnts/ᙦ;->ㆃ:Lnts/ڊ;

    iget-object v2, p0, Lnts/ᙦ;->Ͼ:Ljava/lang/String;

    iget-object v3, p0, Lnts/ᙦ;->ᰛ:Lnts/ᛎ;

    invoke-virtual {v0, v2, v3}, Lnts/ڊ;->ㆃ(Ljava/lang/String;Lnts/ᛎ;)V

    goto :goto_1

    .line 31
    :pswitch_2
    iget-object v0, p0, Lnts/ᙦ;->ㆃ:Lnts/ڊ;

    iget-object v2, p0, Lnts/ᙦ;->ᰛ:Lnts/ᛎ;

    iget-object v3, p0, Lnts/ᙦ;->ౠ:Ljava/lang/Object;

    iget-object v4, p0, Lnts/ᙦ;->ᙕ:Ljava/lang/Object;

    .line 32
    iget-object v5, v0, Lnts/ڊ;->ᒃ:Lnts/ᶧ;

    .line 33
    iget-object v5, v5, Lnts/ᶧ;->ཊ:Ljava/net/Socket;

    if-eq v5, v3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    .line 34
    invoke-virtual {v0, v2}, Lnts/ዧ;->ㆃ(Ljava/lang/Exception;)V

    const/16 v5, 0x16

    const/16 v6, 0x62

    const/16 v7, 0x119c

    .line 35
    invoke-static {v7, v5, v6}, Lnts/ݶ;->ᯚ(III)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lnts/ዧ;->ᇭ:Lnts/ᛎ;

    invoke-virtual {v0, v5, v6}, Lnts/ڊ;->ㆃ(Ljava/lang/String;Lnts/ᛎ;)V

    goto :goto_0

    :cond_1
    const/16 v5, 0x17

    const/16 v6, 0x7c

    const/16 v7, 0x11b2

    .line 37
    invoke-static {v7, v5, v6}, Lnts/ݶ;->ᯚ(III)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lnts/ዧ;->ᇭ:Lnts/ᛎ;

    invoke-virtual {v0, v5, v6}, Lnts/ڊ;->ㆃ(Ljava/lang/String;Lnts/ᛎ;)V

    :goto_0
    const/4 v5, 0x1

    .line 39
    invoke-virtual {v0, v2, v3, v4, v5}, Lnts/ڊ;->ㆃ(Lnts/ᛎ;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto :goto_1

    .line 40
    :pswitch_3
    iget-object v0, p0, Lnts/ᙦ;->ㆃ:Lnts/ڊ;

    iget-object v2, p0, Lnts/ᙦ;->ᰛ:Lnts/ᛎ;

    invoke-virtual {v0, v2}, Lnts/ڊ;->ᇭ(Lnts/ᛎ;)V

    goto :goto_1

    .line 41
    :pswitch_4
    iget-object v0, p0, Lnts/ᙦ;->ㆃ:Lnts/ڊ;

    iget-object v2, p0, Lnts/ᙦ;->ᰛ:Lnts/ᛎ;

    invoke-virtual {v0, v2}, Lnts/ڊ;->ᾨ(Lnts/ᛎ;)V

    goto :goto_1

    .line 42
    :pswitch_5
    iget-object v2, p0, Lnts/ᙦ;->ㆃ:Lnts/ڊ;

    iget-object v3, p0, Lnts/ᙦ;->て:[B

    iget-object v4, p0, Lnts/ᙦ;->ዲ:Ljava/lang/String;

    iget-object v5, p0, Lnts/ᙦ;->ᎊ:Ljava/lang/String;

    iget-object v6, p0, Lnts/ᙦ;->ᡲ:Ljava/lang/String;

    iget-object v7, p0, Lnts/ᙦ;->Ὺ:[Z

    .line 43
    invoke-virtual/range {v2 .. v7}, Lnts/ڊ;->fireSSLServerAuthentication([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Z)V

    goto :goto_1

    .line 44
    :pswitch_6
    iget-object v0, p0, Lnts/ᙦ;->ㆃ:Lnts/ڊ;

    iget-object v2, p0, Lnts/ᙦ;->ᡲ:Ljava/lang/String;

    .line 45
    invoke-virtual {v0, v2}, Lnts/ڊ;->fireSSLStatus(Ljava/lang/String;)V

    .line 46
    :goto_1
    iget-object v0, p0, Lnts/ᙦ;->ᾨ:Ljava/lang/Object;

    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 48
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
