.class public Lcom/transistorsoft/locationmanager/event/StartedEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public success:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/event/StartedEvent;->success:Ljava/lang/Boolean;

    return-void
.end method
