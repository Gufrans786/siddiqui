.class synthetic Lim/zego/zpns/internal/dispatcher/ZPNsBroadcastDispatcher$3;
.super Ljava/lang/Object;
.source "ZPNsBroadcastDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/zego/zpns/internal/dispatcher/ZPNsBroadcastDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$im$zego$zpns$enums$ZPNsType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 121
    invoke-static {}, Lim/zego/zpns/enums/ZPNsType;->values()[Lim/zego/zpns/enums/ZPNsType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lim/zego/zpns/internal/dispatcher/ZPNsBroadcastDispatcher$3;->$SwitchMap$im$zego$zpns$enums$ZPNsType:[I

    :try_start_0
    sget-object v1, Lim/zego/zpns/enums/ZPNsType;->NOTIFICATION_THROUGH:Lim/zego/zpns/enums/ZPNsType;

    invoke-virtual {v1}, Lim/zego/zpns/enums/ZPNsType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lim/zego/zpns/internal/dispatcher/ZPNsBroadcastDispatcher$3;->$SwitchMap$im$zego$zpns$enums$ZPNsType:[I

    sget-object v1, Lim/zego/zpns/enums/ZPNsType;->NOTIFICATION_CLICK:Lim/zego/zpns/enums/ZPNsType;

    invoke-virtual {v1}, Lim/zego/zpns/enums/ZPNsType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lim/zego/zpns/internal/dispatcher/ZPNsBroadcastDispatcher$3;->$SwitchMap$im$zego$zpns$enums$ZPNsType:[I

    sget-object v1, Lim/zego/zpns/enums/ZPNsType;->NOTIFICATION_ARRIVED:Lim/zego/zpns/enums/ZPNsType;

    invoke-virtual {v1}, Lim/zego/zpns/enums/ZPNsType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
