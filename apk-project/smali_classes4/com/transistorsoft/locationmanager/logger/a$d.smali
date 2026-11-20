.class Lcom/transistorsoft/locationmanager/logger/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/logger/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/logger/a;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/logger/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/logger/a$d;->a:Lcom/transistorsoft/locationmanager/logger/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/a$d;->a:Lcom/transistorsoft/locationmanager/logger/a;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/a;->c(Lcom/transistorsoft/locationmanager/logger/a;)Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/transistorsoft/locationmanager/adapter/callback/TSCallback;->onSuccess()V

    return-void
.end method
