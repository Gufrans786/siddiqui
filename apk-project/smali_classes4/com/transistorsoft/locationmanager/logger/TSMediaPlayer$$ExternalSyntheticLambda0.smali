.class public final synthetic Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final synthetic f$0:Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer$$ExternalSyntheticLambda0;->f$0:Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer$$ExternalSyntheticLambda0;->f$0:Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->$r8$lambda$bUT6JYxaLA9onkyn-WlDu8s615U(Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;Landroid/content/Context;Landroid/media/MediaPlayer;)V

    return-void
.end method
