.class public Lcom/intentfilter/androidpermissions/NotificationSettings$Builder;
.super Ljava/lang/Object;
.source "NotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intentfilter/androidpermissions/NotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final notificationSettings:Lcom/intentfilter/androidpermissions/NotificationSettings;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Lcom/intentfilter/androidpermissions/NotificationSettings;->getDefault()Lcom/intentfilter/androidpermissions/NotificationSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/intentfilter/androidpermissions/NotificationSettings$Builder;->notificationSettings:Lcom/intentfilter/androidpermissions/NotificationSettings;

    return-void
.end method


# virtual methods
.method public build()Lcom/intentfilter/androidpermissions/NotificationSettings;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/NotificationSettings$Builder;->notificationSettings:Lcom/intentfilter/androidpermissions/NotificationSettings;

    return-object v0
.end method

.method public withMessage(I)Lcom/intentfilter/androidpermissions/NotificationSettings$Builder;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/NotificationSettings$Builder;->notificationSettings:Lcom/intentfilter/androidpermissions/NotificationSettings;

    invoke-static {v0, p1}, Lcom/intentfilter/androidpermissions/NotificationSettings;->access$102(Lcom/intentfilter/androidpermissions/NotificationSettings;I)I

    return-object p0
.end method

.method public withSmallIcon(I)Lcom/intentfilter/androidpermissions/NotificationSettings$Builder;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/NotificationSettings$Builder;->notificationSettings:Lcom/intentfilter/androidpermissions/NotificationSettings;

    invoke-static {v0, p1}, Lcom/intentfilter/androidpermissions/NotificationSettings;->access$202(Lcom/intentfilter/androidpermissions/NotificationSettings;I)I

    return-object p0
.end method

.method public withTitle(I)Lcom/intentfilter/androidpermissions/NotificationSettings$Builder;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/NotificationSettings$Builder;->notificationSettings:Lcom/intentfilter/androidpermissions/NotificationSettings;

    invoke-static {v0, p1}, Lcom/intentfilter/androidpermissions/NotificationSettings;->access$002(Lcom/intentfilter/androidpermissions/NotificationSettings;I)I

    return-object p0
.end method
