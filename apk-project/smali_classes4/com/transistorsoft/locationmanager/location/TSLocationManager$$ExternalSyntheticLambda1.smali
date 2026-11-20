.class public final synthetic Lcom/transistorsoft/locationmanager/location/TSLocationManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public synthetic constructor <init>(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$$ExternalSyntheticLambda1;->f$0:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/location/TSLocationManager$$ExternalSyntheticLambda1;->f$0:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/transistorsoft/locationmanager/location/TSLocationManager;->$r8$lambda$tBg6zRZJj41EWswWGuaG5By1JH8(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method
