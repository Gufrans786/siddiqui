.class Lcom/microsoft/codepush/react/CodePushNativeModule$3$1$1$1;
.super Ljava/lang/Object;
.source "CodePushNativeModule.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/codepush/react/CodePushNativeModule$3$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/microsoft/codepush/react/CodePushNativeModule$3$1$1;


# direct methods
.method constructor <init>(Lcom/microsoft/codepush/react/CodePushNativeModule$3$1$1;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$3$1$1$1;->this$3:Lcom/microsoft/codepush/react/CodePushNativeModule$3$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 0

    .line 460
    iget-object p1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$3$1$1$1;->this$3:Lcom/microsoft/codepush/react/CodePushNativeModule$3$1$1;

    iget-object p1, p1, Lcom/microsoft/codepush/react/CodePushNativeModule$3$1$1;->this$2:Lcom/microsoft/codepush/react/CodePushNativeModule$3$1;

    invoke-static {p1}, Lcom/microsoft/codepush/react/CodePushNativeModule$3$1;->-$$Nest$fgetlatestDownloadProgress(Lcom/microsoft/codepush/react/CodePushNativeModule$3$1;)Lcom/microsoft/codepush/react/DownloadProgress;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/codepush/react/DownloadProgress;->isCompleted()Z

    move-result p1

    if-nez p1, :cond_0

    .line 461
    iget-object p1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$3$1$1$1;->this$3:Lcom/microsoft/codepush/react/CodePushNativeModule$3$1$1;

    iget-object p1, p1, Lcom/microsoft/codepush/react/CodePushNativeModule$3$1$1;->this$2:Lcom/microsoft/codepush/react/CodePushNativeModule$3$1;

    invoke-virtual {p1}, Lcom/microsoft/codepush/react/CodePushNativeModule$3$1;->dispatchDownloadProgressEvent()V

    .line 464
    :cond_0
    iget-object p1, p0, Lcom/microsoft/codepush/react/CodePushNativeModule$3$1$1$1;->this$3:Lcom/microsoft/codepush/react/CodePushNativeModule$3$1$1;

    iget-object p1, p1, Lcom/microsoft/codepush/react/CodePushNativeModule$3$1$1;->this$2:Lcom/microsoft/codepush/react/CodePushNativeModule$3$1;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/microsoft/codepush/react/CodePushNativeModule$3$1;->-$$Nest$fputhasScheduledNextFrame(Lcom/microsoft/codepush/react/CodePushNativeModule$3$1;Z)V

    return-void
.end method
