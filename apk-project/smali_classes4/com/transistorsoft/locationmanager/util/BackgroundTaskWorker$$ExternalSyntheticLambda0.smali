.class public final synthetic Lcom/transistorsoft/locationmanager/util/BackgroundTaskWorker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Callback;


# instance fields
.field public final synthetic f$0:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;


# direct methods
.method public synthetic constructor <init>(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskWorker$$ExternalSyntheticLambda0;->f$0:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskWorker$$ExternalSyntheticLambda0;->f$0:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskWorker;->$r8$lambda$VrtaASs6KREl9CV2NMMaBcG647E(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method
