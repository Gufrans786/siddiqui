.class public Lim/zego/zim/entity/ZIMVoIPConfig;
.super Ljava/lang/Object;
.source "ZIMVoIPConfig.java"


# instance fields
.field public iOSVoIPHandleType:Lim/zego/zim/enums/ZIMCXHandleType;

.field public iOSVoIPHandleValue:Ljava/lang/String;

.field public iOSVoIPHasVideo:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lim/zego/zim/enums/ZIMCXHandleType;->Generic:Lim/zego/zim/enums/ZIMCXHandleType;

    iput-object v0, p0, Lim/zego/zim/entity/ZIMVoIPConfig;->iOSVoIPHandleType:Lim/zego/zim/enums/ZIMCXHandleType;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lim/zego/zim/entity/ZIMVoIPConfig;->iOSVoIPHandleValue:Ljava/lang/String;

    const/4 v0, 0x0

    .line 16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lim/zego/zim/entity/ZIMVoIPConfig;->iOSVoIPHasVideo:Ljava/lang/Boolean;

    return-void
.end method
