.class public Lcom/transistorsoft/locationmanager/event/SecurityExceptionEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public action:I

.field public exception:Ljava/lang/SecurityException;


# direct methods
.method public constructor <init>(Ljava/lang/SecurityException;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/transistorsoft/locationmanager/event/SecurityExceptionEvent;->action:I

    .line 3
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/event/SecurityExceptionEvent;->exception:Ljava/lang/SecurityException;

    return-void
.end method
