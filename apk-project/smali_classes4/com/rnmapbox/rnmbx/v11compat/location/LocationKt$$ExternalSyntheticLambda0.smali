.class public final synthetic Lcom/rnmapbox/rnmbx/v11compat/location/LocationKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rnmapbox/rnmbx/v11compat/location/LocationKt$$ExternalSyntheticLambda0;->f$0:Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineCallback;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/rnmapbox/rnmbx/v11compat/location/LocationKt$$ExternalSyntheticLambda0;->f$0:Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineCallback;

    check-cast p1, Lcom/rnmapbox/rnmbx/v11compat/location/LocationObserverAdapter;

    invoke-static {v0, p1}, Lcom/rnmapbox/rnmbx/v11compat/location/LocationKt;->$r8$lambda$2GHbRiNJVs7jULqQWokzUWK_Wlc(Lcom/rnmapbox/rnmbx/v11compat/location/LocationEngineCallback;Lcom/rnmapbox/rnmbx/v11compat/location/LocationObserverAdapter;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
