.class public Lcom/transistorsoft/locationmanager/event/LocationErrorEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public errorCode:I

.field public message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transistorsoft/locationmanager/event/LocationErrorEvent;->errorCode:I

    .line 6
    const-string p1, ""

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/event/LocationErrorEvent;->message:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transistorsoft/locationmanager/event/LocationErrorEvent;->errorCode:I

    .line 3
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/event/LocationErrorEvent;->message:Ljava/lang/String;

    return-void
.end method
