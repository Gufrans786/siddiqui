.class Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lch/qos/logback/classic/android/SQLiteLogCleaner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->getLogCleaner()Lch/qos/logback/classic/android/SQLiteLogCleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;


# direct methods
.method constructor <init>(Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender$a;->a:Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public performLogCleanup(Landroid/database/sqlite/SQLiteDatabase;Lch/qos/logback/core/util/Duration;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender$a;->a:Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;->a(Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender$c;

    iget-object v2, p0, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender$a;->a:Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;

    invoke-direct {v1, v2, p1, p2}, Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender$c;-><init>(Lcom/transistorsoft/locationmanager/logger/TSSQLiteAppender;Landroid/database/sqlite/SQLiteDatabase;Lch/qos/logback/core/util/Duration;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
