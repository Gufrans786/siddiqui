.class public final synthetic Lcom/transistorsoft/locationmanager/service/BackgroundTaskService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/transistorsoft/locationmanager/util/BackgroundTaskManager$Callback;


# instance fields
.field public final synthetic f$0:Lcom/transistorsoft/locationmanager/service/BackgroundTaskService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/transistorsoft/locationmanager/service/BackgroundTaskService;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/service/BackgroundTaskService$$ExternalSyntheticLambda0;->f$0:Lcom/transistorsoft/locationmanager/service/BackgroundTaskService;

    iput p2, p0, Lcom/transistorsoft/locationmanager/service/BackgroundTaskService$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/service/BackgroundTaskService$$ExternalSyntheticLambda0;->f$0:Lcom/transistorsoft/locationmanager/service/BackgroundTaskService;

    iget v1, p0, Lcom/transistorsoft/locationmanager/service/BackgroundTaskService$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1}, Lcom/transistorsoft/locationmanager/service/BackgroundTaskService;->$r8$lambda$kr4imu66CbZI5CgPPyZRh5MUSOc(Lcom/transistorsoft/locationmanager/service/BackgroundTaskService;I)V

    return-void
.end method
