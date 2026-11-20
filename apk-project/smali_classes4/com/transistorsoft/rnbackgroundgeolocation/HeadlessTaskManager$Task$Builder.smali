.class public Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;
.super Ljava/lang/Object;
.source "HeadlessTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT:I = 0xea60


# instance fields
.field private name:Ljava/lang/String;

.field private onErrorCallback:Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$OnErrorCallback;

.field private onFinishCallback:Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$OnFinishCallback;

.field private onInvokeCallback:Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$OnInvokeCallback;

.field private params:Lcom/facebook/react/bridge/WritableMap;

.field private timeout:I


# direct methods
.method static bridge synthetic -$$Nest$fgetname(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonErrorCallback(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;)Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$OnErrorCallback;
    .locals 0

    iget-object p0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;->onErrorCallback:Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$OnErrorCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonFinishCallback(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;)Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$OnFinishCallback;
    .locals 0

    iget-object p0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;->onFinishCallback:Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$OnFinishCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonInvokeCallback(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;)Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$OnInvokeCallback;
    .locals 0

    iget-object p0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;->onInvokeCallback:Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$OnInvokeCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetparams(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;)Lcom/facebook/react/bridge/WritableMap;
    .locals 0

    iget-object p0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;->params:Lcom/facebook/react/bridge/WritableMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettimeout(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;)I
    .locals 0

    iget p0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;->timeout:I

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xea60

    .line 415
    iput v0, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;->timeout:I

    return-void
.end method


# virtual methods
.method public build()Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;
    .locals 1

    .line 442
    new-instance v0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;

    invoke-direct {v0, p0}, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task;-><init>(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;)V

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setOnErrorCallback(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$OnErrorCallback;)Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;->onErrorCallback:Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$OnErrorCallback;

    return-object p0
.end method

.method public setOnFinishCallback(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$OnFinishCallback;)Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;->onFinishCallback:Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$OnFinishCallback;

    return-object p0
.end method

.method public setOnInvokeCallback(Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$OnInvokeCallback;)Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;->onInvokeCallback:Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$OnInvokeCallback;

    return-object p0
.end method

.method public setParams(Lcom/facebook/react/bridge/WritableMap;)Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;->params:Lcom/facebook/react/bridge/WritableMap;

    return-object p0
.end method

.method public setTimeout(I)Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;
    .locals 0

    .line 438
    iput p1, p0, Lcom/transistorsoft/rnbackgroundgeolocation/HeadlessTaskManager$Task$Builder;->timeout:I

    return-object p0
.end method
