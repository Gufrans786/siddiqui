.class synthetic Lim/zego/RNZIMConverter$1;
.super Ljava/lang/Object;
.source "RNZIMConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/zego/RNZIMConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$im$zego$zim$enums$ZIMMessageType:[I

.field static final synthetic $SwitchMap$im$zego$zim$enums$ZIMTipsMessageChangeInfoType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1792
    invoke-static {}, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->values()[Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lim/zego/RNZIMConverter$1;->$SwitchMap$im$zego$zim$enums$ZIMTipsMessageChangeInfoType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->GROUP_DATA_CHANGED:Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    invoke-virtual {v2}, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lim/zego/RNZIMConverter$1;->$SwitchMap$im$zego$zim$enums$ZIMTipsMessageChangeInfoType:[I

    sget-object v3, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->GROUP_NOTICE_CHANGED:Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    invoke-virtual {v3}, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lim/zego/RNZIMConverter$1;->$SwitchMap$im$zego$zim$enums$ZIMTipsMessageChangeInfoType:[I

    sget-object v4, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->GROUP_NAME_CHANGED:Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    invoke-virtual {v4}, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lim/zego/RNZIMConverter$1;->$SwitchMap$im$zego$zim$enums$ZIMTipsMessageChangeInfoType:[I

    sget-object v5, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->GROUP_AVATAR_URL_CHANGED:Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    invoke-virtual {v5}, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lim/zego/RNZIMConverter$1;->$SwitchMap$im$zego$zim$enums$ZIMTipsMessageChangeInfoType:[I

    sget-object v6, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->GROUP_MUTE_CHANGED:Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    invoke-virtual {v6}, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lim/zego/RNZIMConverter$1;->$SwitchMap$im$zego$zim$enums$ZIMTipsMessageChangeInfoType:[I

    sget-object v7, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->GROUP_OWNER_TRANSFERRED:Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    invoke-virtual {v7}, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v6, 0x7

    :try_start_6
    sget-object v7, Lim/zego/RNZIMConverter$1;->$SwitchMap$im$zego$zim$enums$ZIMTipsMessageChangeInfoType:[I

    sget-object v8, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->GROUP_MEMBER_ROLE_CHANGED:Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    invoke-virtual {v8}, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/16 v7, 0x8

    :try_start_7
    sget-object v8, Lim/zego/RNZIMConverter$1;->$SwitchMap$im$zego$zim$enums$ZIMTipsMessageChangeInfoType:[I

    sget-object v9, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->GROUP_MEMBER_MUTE_CHANGED:Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;

    invoke-virtual {v9}, Lim/zego/zim/enums/ZIMTipsMessageChangeInfoType;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 326
    :catch_7
    invoke-static {}, Lim/zego/zim/enums/ZIMMessageType;->values()[Lim/zego/zim/enums/ZIMMessageType;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Lim/zego/RNZIMConverter$1;->$SwitchMap$im$zego$zim$enums$ZIMMessageType:[I

    :try_start_8
    sget-object v9, Lim/zego/zim/enums/ZIMMessageType;->TEXT:Lim/zego/zim/enums/ZIMMessageType;

    invoke-virtual {v9}, Lim/zego/zim/enums/ZIMMessageType;->ordinal()I

    move-result v9

    aput v1, v8, v9
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v1, Lim/zego/RNZIMConverter$1;->$SwitchMap$im$zego$zim$enums$ZIMMessageType:[I

    sget-object v8, Lim/zego/zim/enums/ZIMMessageType;->COMMAND:Lim/zego/zim/enums/ZIMMessageType;

    invoke-virtual {v8}, Lim/zego/zim/enums/ZIMMessageType;->ordinal()I

    move-result v8

    aput v0, v1, v8
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lim/zego/RNZIMConverter$1;->$SwitchMap$im$zego$zim$enums$ZIMMessageType:[I

    sget-object v1, Lim/zego/zim/enums/ZIMMessageType;->BARRAGE:Lim/zego/zim/enums/ZIMMessageType;

    invoke-virtual {v1}, Lim/zego/zim/enums/ZIMMessageType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lim/zego/RNZIMConverter$1;->$SwitchMap$im$zego$zim$enums$ZIMMessageType:[I

    sget-object v1, Lim/zego/zim/enums/ZIMMessageType;->REVOKE:Lim/zego/zim/enums/ZIMMessageType;

    invoke-virtual {v1}, Lim/zego/zim/enums/ZIMMessageType;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lim/zego/RNZIMConverter$1;->$SwitchMap$im$zego$zim$enums$ZIMMessageType:[I

    sget-object v1, Lim/zego/zim/enums/ZIMMessageType;->TIPS:Lim/zego/zim/enums/ZIMMessageType;

    invoke-virtual {v1}, Lim/zego/zim/enums/ZIMMessageType;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lim/zego/RNZIMConverter$1;->$SwitchMap$im$zego$zim$enums$ZIMMessageType:[I

    sget-object v1, Lim/zego/zim/enums/ZIMMessageType;->CUSTOM:Lim/zego/zim/enums/ZIMMessageType;

    invoke-virtual {v1}, Lim/zego/zim/enums/ZIMMessageType;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Lim/zego/RNZIMConverter$1;->$SwitchMap$im$zego$zim$enums$ZIMMessageType:[I

    sget-object v1, Lim/zego/zim/enums/ZIMMessageType;->COMBINE:Lim/zego/zim/enums/ZIMMessageType;

    invoke-virtual {v1}, Lim/zego/zim/enums/ZIMMessageType;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Lim/zego/RNZIMConverter$1;->$SwitchMap$im$zego$zim$enums$ZIMMessageType:[I

    sget-object v1, Lim/zego/zim/enums/ZIMMessageType;->IMAGE:Lim/zego/zim/enums/ZIMMessageType;

    invoke-virtual {v1}, Lim/zego/zim/enums/ZIMMessageType;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v0, Lim/zego/RNZIMConverter$1;->$SwitchMap$im$zego$zim$enums$ZIMMessageType:[I

    sget-object v1, Lim/zego/zim/enums/ZIMMessageType;->FILE:Lim/zego/zim/enums/ZIMMessageType;

    invoke-virtual {v1}, Lim/zego/zim/enums/ZIMMessageType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v0, Lim/zego/RNZIMConverter$1;->$SwitchMap$im$zego$zim$enums$ZIMMessageType:[I

    sget-object v1, Lim/zego/zim/enums/ZIMMessageType;->VIDEO:Lim/zego/zim/enums/ZIMMessageType;

    invoke-virtual {v1}, Lim/zego/zim/enums/ZIMMessageType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v0, Lim/zego/RNZIMConverter$1;->$SwitchMap$im$zego$zim$enums$ZIMMessageType:[I

    sget-object v1, Lim/zego/zim/enums/ZIMMessageType;->AUDIO:Lim/zego/zim/enums/ZIMMessageType;

    invoke-virtual {v1}, Lim/zego/zim/enums/ZIMMessageType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v0, Lim/zego/RNZIMConverter$1;->$SwitchMap$im$zego$zim$enums$ZIMMessageType:[I

    sget-object v1, Lim/zego/zim/enums/ZIMMessageType;->MULTIPLE:Lim/zego/zim/enums/ZIMMessageType;

    invoke-virtual {v1}, Lim/zego/zim/enums/ZIMMessageType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    return-void
.end method
