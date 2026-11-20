.class public Lcom/transistorsoft/locationmanager/event/BatteryOptimizationEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/transistorsoft/locationmanager/event/BatteryOptimizationEvent;->a:Z

    return-void
.end method


# virtual methods
.method public isIgnoringBatteryOptimizations()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transistorsoft/locationmanager/event/BatteryOptimizationEvent;->a:Z

    return v0
.end method
