.class public Lcom/transistorsoft/locationmanager/event/PersistEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/transistorsoft/locationmanager/location/TSLocation;

.field private final b:Lorg/json/JSONObject;

.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transistorsoft/locationmanager/location/TSLocation;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transistorsoft/locationmanager/event/PersistEvent;->c:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Lcom/transistorsoft/locationmanager/event/PersistEvent;->b:Lorg/json/JSONObject;

    .line 4
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/event/PersistEvent;->a:Lcom/transistorsoft/locationmanager/location/TSLocation;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/event/PersistEvent;->c:Landroid/content/Context;

    return-object v0
.end method

.method public getLocation()Lcom/transistorsoft/locationmanager/location/TSLocation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/event/PersistEvent;->a:Lcom/transistorsoft/locationmanager/location/TSLocation;

    return-object v0
.end method

.method public getParams()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/event/PersistEvent;->b:Lorg/json/JSONObject;

    return-object v0
.end method
