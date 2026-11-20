.class public Lcom/transistorsoft/locationmanager/event/SettingsFailureEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public message:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/event/SettingsFailureEvent;->title:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/event/SettingsFailureEvent;->message:Ljava/lang/String;

    return-void
.end method
