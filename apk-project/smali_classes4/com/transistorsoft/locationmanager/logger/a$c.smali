.class Lcom/transistorsoft/locationmanager/logger/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/logger/a;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/transistorsoft/locationmanager/logger/a;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/logger/a;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/logger/a$c;->b:Lcom/transistorsoft/locationmanager/logger/a;

    iput-object p2, p0, Lcom/transistorsoft/locationmanager/logger/a$c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/a$c;->b:Lcom/transistorsoft/locationmanager/logger/a;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/a;->c(Lcom/transistorsoft/locationmanager/logger/a;)Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/a$c;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method
