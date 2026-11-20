.class Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$1$1;
.super Ljava/lang/Object;
.source "BackgroundFetchConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$1;

.field final synthetic val$result:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$1;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 349
    iput-object p1, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$1$1;->this$0:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$1;

    iput-object p2, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$1$1;->val$result:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$1$1;->this$0:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$1;

    iget-object v0, v0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$1;->val$callback:Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$OnLoadCallback;

    iget-object v1, p0, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$1$1;->val$result:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/transistorsoft/tsbackgroundfetch/BackgroundFetchConfig$OnLoadCallback;->onLoad(Ljava/util/List;)V

    return-void
.end method
