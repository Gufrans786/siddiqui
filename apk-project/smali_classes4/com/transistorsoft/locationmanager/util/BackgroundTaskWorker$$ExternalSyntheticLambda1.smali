.class public final synthetic Lcom/transistorsoft/locationmanager/util/BackgroundTaskWorker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Lcom/transistorsoft/locationmanager/util/BackgroundTaskWorker;


# direct methods
.method public synthetic constructor <init>(Lcom/transistorsoft/locationmanager/util/BackgroundTaskWorker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskWorker$$ExternalSyntheticLambda1;->f$0:Lcom/transistorsoft/locationmanager/util/BackgroundTaskWorker;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/util/BackgroundTaskWorker$$ExternalSyntheticLambda1;->f$0:Lcom/transistorsoft/locationmanager/util/BackgroundTaskWorker;

    invoke-static {v0, p1}, Lcom/transistorsoft/locationmanager/util/BackgroundTaskWorker;->$r8$lambda$uqQpUMQLuXEc_WJtdauFceUtTBQ(Lcom/transistorsoft/locationmanager/util/BackgroundTaskWorker;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
