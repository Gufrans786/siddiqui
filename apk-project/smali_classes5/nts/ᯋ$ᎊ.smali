.class public Lnts/ᯋ$ᎊ;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnts/ᯋ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u138a"
.end annotation


# instance fields
.field public ㆃ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lnts/\u1bcb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnts/ᯋ;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnts/ᯋ$ᎊ;->ㆃ:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget-object p1, p0, Lnts/ᯋ$ᎊ;->ㆃ:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnts/ᯋ;

    .line 4
    iget-object v0, p1, Lnts/ᯋ;->ㆃ:Lnts/ᯚ;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    :try_start_0
    iget-object v0, p1, Lnts/ᯋ;->ㆃ:Lnts/ᯚ;

    invoke-virtual {v0}, Lnts/ᯚ;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-object v0, p1, Lnts/ᯋ;->ㆃ:Lnts/ᯚ;

    :cond_1
    return-void
.end method
