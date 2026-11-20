.class public Lim/zego/zpns/internal/util/PushIDGenerateTools;
.super Ljava/lang/Object;
.source "PushIDGenerateTools.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PushIDGenerateTools"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPushID(Ljava/lang/String;ZLim/zego/zpns/enums/ZPNsConstants$PushSource;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "device token:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PushIDGenerateTools"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_12

    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_c

    :cond_0
    const/4 v0, 0x0

    .line 27
    new-array v2, v0, [B

    .line 29
    invoke-static {}, Lim/zego/zpns/internal/ZPNsManagerInternal;->getInstance()Lim/zego/zpns/ZPNsManager;

    move-result-object v3

    invoke-virtual {v3}, Lim/zego/zpns/ZPNsManager;->getPushConfig()Lim/zego/zpns/util/ZPNsConfig;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 30
    invoke-static {}, Lim/zego/zpns/internal/ZPNsManagerInternal;->getInstance()Lim/zego/zpns/ZPNsManager;

    move-result-object v3

    invoke-virtual {v3}, Lim/zego/zpns/ZPNsManager;->getPushConfig()Lim/zego/zpns/util/ZPNsConfig;

    move-result-object v3

    invoke-virtual {v3}, Lim/zego/zpns/util/ZPNsConfig;->getAppType()I

    move-result v3

    .line 31
    invoke-static {}, Lim/zego/zpns/internal/ZPNsManagerInternal;->getInstance()Lim/zego/zpns/ZPNsManager;

    move-result-object v4

    invoke-virtual {v4}, Lim/zego/zpns/ZPNsManager;->getPushConfig()Lim/zego/zpns/util/ZPNsConfig;

    move-result-object v4

    invoke-virtual {v4}, Lim/zego/zpns/util/ZPNsConfig;->isEnableHWBadge()Z

    move-result v4

    .line 32
    invoke-static {v3, v4}, Lim/zego/zpns/internal/ZPNsBridge;->getPayloadSize(IZ)I

    move-result v5

    if-lez v5, :cond_1

    .line 34
    new-array v2, v5, [B

    .line 35
    invoke-static {v3, v2, v4}, Lim/zego/zpns/internal/ZPNsBridge;->getPayload(I[BZ)V

    .line 37
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "payload:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v1, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    move p1, v3

    goto :goto_0

    :cond_3
    move p1, v1

    :goto_0
    int-to-byte p1, p1

    .line 45
    sget-object v4, Lim/zego/zpns/enums/ZPNsConstants$PushSource;->HUAWEI:Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    if-ne p2, v4, :cond_4

    move v1, v3

    goto :goto_1

    .line 47
    :cond_4
    sget-object v4, Lim/zego/zpns/enums/ZPNsConstants$PushSource;->XIAOMI:Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    if-ne p2, v4, :cond_5

    goto :goto_1

    .line 49
    :cond_5
    sget-object v1, Lim/zego/zpns/enums/ZPNsConstants$PushSource;->VIVO:Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    if-ne p2, v1, :cond_6

    const/4 v1, 0x3

    goto :goto_1

    .line 51
    :cond_6
    sget-object v1, Lim/zego/zpns/enums/ZPNsConstants$PushSource;->OPPO:Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    if-ne p2, v1, :cond_7

    const/4 v1, 0x4

    goto :goto_1

    .line 53
    :cond_7
    sget-object v1, Lim/zego/zpns/enums/ZPNsConstants$PushSource;->FCM:Lim/zego/zpns/enums/ZPNsConstants$PushSource;

    if-ne p2, v1, :cond_8

    const/4 v1, 0x6

    goto :goto_1

    :cond_8
    move v1, v0

    .line 56
    :goto_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    .line 57
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    .line 58
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 59
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/16 v7, -0x51

    .line 60
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    int-to-short p1, v5

    .line 65
    invoke-static {p1}, Lim/zego/zpns/internal/util/PushIDGenerateTools;->toHH(S)[B

    move-result-object p1

    array-length v1, p1

    move v5, v0

    :goto_2
    if-ge v5, v1, :cond_9

    aget-byte v7, p1, v5

    .line 66
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_9
    int-to-short p1, p2

    .line 68
    invoke-static {p1}, Lim/zego/zpns/internal/util/PushIDGenerateTools;->toHH(S)[B

    move-result-object p1

    array-length p2, p1

    move v1, v0

    :goto_3
    if-ge v1, p2, :cond_a

    aget-byte v5, p1, v1

    .line 69
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 72
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    int-to-short p1, p1

    invoke-static {p1}, Lim/zego/zpns/internal/util/PushIDGenerateTools;->toHH2(S)[B

    move-result-object p1

    array-length p2, p1

    move v1, v0

    :goto_4
    if-ge v1, p2, :cond_b

    aget-byte v5, p1, v1

    .line 73
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 77
    :cond_b
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p2, p1

    move v1, v0

    :goto_5
    if-ge v1, p2, :cond_c

    aget-byte v4, p1, v1

    .line 78
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 80
    :cond_c
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p2, p1

    move p3, v0

    :goto_6
    if-ge p3, p2, :cond_d

    aget-byte v1, p1, p3

    .line 81
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_6

    .line 83
    :cond_d
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p1, p0

    move p2, v0

    :goto_7
    if-ge p2, p1, :cond_e

    aget-byte p3, p0, p2

    .line 84
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    invoke-interface {v6, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    .line 99
    :cond_e
    array-length p0, v2

    int-to-short p0, p0

    invoke-static {p0}, Lim/zego/zpns/internal/util/PushIDGenerateTools;->toHH2(S)[B

    move-result-object p0

    array-length p1, p0

    move p2, v0

    :goto_8
    if-ge p2, p1, :cond_f

    aget-byte p3, p0, p2

    .line 100
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    invoke-interface {v6, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    .line 103
    :cond_f
    array-length p0, v2

    move p1, v0

    :goto_9
    if-ge p1, p0, :cond_10

    aget-byte p2, v2, p1

    .line 104
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-interface {v6, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    .line 107
    :cond_10
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [B

    move p1, v0

    .line 108
    :goto_a
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_11

    .line 109
    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    aput-byte p2, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    .line 114
    :cond_11
    :try_start_0
    const-string p1, "im.zego.zim.internal.ZIMImpl"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 115
    const-string/jumbo p2, "setPushID"

    new-array p3, v3, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, p3, v0

    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 116
    invoke-static {}, Lim/zego/zpns/internal/util/Base64;->getEncoder()Lim/zego/zpns/internal/util/Base64$Encoder;

    move-result-object p3

    invoke-virtual {p3, p0}, Lim/zego/zpns/internal/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p3

    .line 117
    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    move-exception p1

    .line 121
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    :goto_b
    invoke-static {}, Lim/zego/zpns/internal/util/Base64;->getEncoder()Lim/zego/zpns/internal/util/Base64$Encoder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lim/zego/zpns/internal/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 24
    :cond_12
    :goto_c
    const-string p0, ""

    return-object p0
.end method

.method public static toHH(S)[B
    .locals 2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v0, 0x1

    .line 130
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static toHH2(S)[B
    .locals 3

    const/4 v0, 0x2

    .line 136
    new-array v0, v0, [B

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    .line 137
    aput-byte v1, v0, v2

    shr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x0

    .line 138
    aput-byte p0, v0, v1

    return-object v0
.end method
