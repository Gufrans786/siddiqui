.class final Lim/zego/zim/internal/generated/ZIMGenMessage;
.super Ljava/lang/Object;
.source "ZIMGenMessage.java"


# instance fields
.field CbInnerID:Ljava/lang/String;

.field ChangeInfo:Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;

.field CombineID:Ljava/lang/String;

.field CombineMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            ">;"
        }
    .end annotation
.end field

.field CombineSummary:Ljava/lang/String;

.field CombineTitle:Ljava/lang/String;

.field CommandMessage:[B

.field ConversationID:Ljava/lang/String;

.field ConversationSeq:J

.field ConversationType:I

.field Direction:I

.field EditedTime:J

.field EditorUserID:Ljava/lang/String;

.field ExtendedData:Ljava/lang/String;

.field FailedIndexList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field FileLocalPath:Ljava/lang/String;

.field FileName:Ljava/lang/String;

.field FileSize:J

.field FileUid:Ljava/lang/String;

.field FileUrl:Ljava/lang/String;

.field IsBroadcastMessage:Z

.field IsGroupTargetedMessage:Z

.field IsMentionAll:Z

.field IsNull:Z

.field IsServerMessage:Z

.field IsUserInsert:Z

.field LargeImageDownloadUrl:Ljava/lang/String;

.field LargeImageHeight:I

.field LargeImageLocalPath:Ljava/lang/String;

.field LargeImageWidth:I

.field LocalExtendedData:Ljava/lang/String;

.field LocalMessageId:J

.field MediaDuration:J

.field MentionedUserIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field Message:Ljava/lang/String;

.field MessageID:J

.field MessageSeq:J

.field MultipleMessageInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;",
            ">;"
        }
    .end annotation
.end field

.field OperatedUser:Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;

.field OperatedUserId:Ljava/lang/String;

.field OrderKey:J

.field OriginalImageHeight:I

.field OriginalImageWidth:I

.field OriginalMessageType:I

.field OriginalTextMessage:Ljava/lang/String;

.field PinnedTime:J

.field PinnedUserID:Ljava/lang/String;

.field Reactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessageReaction;",
            ">;"
        }
    .end annotation
.end field

.field ReceiptStatus:I

.field RepliedInfo:Lim/zego/zim/internal/generated/ZIMGenMessageRepliedInfo;

.field RevokeExtendedData:Ljava/lang/String;

.field RevokeStatus:I

.field RevokeTimestamp:J

.field RevokeType:I

.field RootRepliedCount:I

.field SearchedContent:Ljava/lang/String;

.field SenderUserId:Ljava/lang/String;

.field SentStatus:I

.field SubType:I

.field TargetUserList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field ThumbnailDownloadUrl:Ljava/lang/String;

.field ThumbnailHeight:I

.field ThumbnailLocalPath:Ljava/lang/String;

.field ThumbnailWidth:I

.field Timestamp:J

.field TipsEvent:I

.field Type:I

.field VideoFirstFrameDownloadUrl:Ljava/lang/String;

.field VideoFirstFrameHeight:I

.field VideoFirstFrameLocalPath:Ljava/lang/String;

.field VideoFirstFrameWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZIJJZZLjava/lang/String;IIIIJJJLjava/lang/String;ZLjava/util/ArrayList;[BJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIIIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/util/ArrayList;ZLim/zego/zim/internal/generated/ZIMGenMessageRepliedInfo;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ILim/zego/zim/internal/generated/ZIMGenInnerUserInfo;Ljava/util/ArrayList;Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;JZLjava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "isNull",
            "type",
            "messageID",
            "localMessageId",
            "isUserInsert",
            "isBroadcastMessage",
            "conversationID",
            "direction",
            "sentStatus",
            "conversationType",
            "receiptStatus",
            "conversationSeq",
            "messageSeq",
            "timestamp",
            "message",
            "isMentionAll",
            "mentionedUserIDs",
            "commandMessage",
            "orderKey",
            "mediaDuration",
            "senderUserId",
            "fileLocalPath",
            "fileUid",
            "fileUrl",
            "fileName",
            "fileSize",
            "largeImageDownloadUrl",
            "largeImageLocalPath",
            "thumbnailDownloadUrl",
            "thumbnailLocalPath",
            "videoFirstFrameLocalPath",
            "videoFirstFrameDownloadUrl",
            "extendedData",
            "localExtendedData",
            "originalImageWidth",
            "originalImageHeight",
            "largeImageWidth",
            "largeImageHeight",
            "thumbnailWidth",
            "thumbnailHeight",
            "videoFirstFrameWidth",
            "videoFirstFrameHeight",
            "revokeType",
            "revokeTimestamp",
            "operatedUserId",
            "originalMessageType",
            "originalTextMessage",
            "revokeExtendedData",
            "revokeStatus",
            "subType",
            "searchedContent",
            "reactions",
            "isServerMessage",
            "repliedInfo",
            "rootRepliedCount",
            "combineTitle",
            "combineSummary",
            "combineMessages",
            "combineID",
            "cbInnerID",
            "tipsEvent",
            "operatedUser",
            "targetUserList",
            "changeInfo",
            "multipleMessageInfoList",
            "failedIndexList",
            "editorUserID",
            "editedTime",
            "isGroupTargetedMessage",
            "pinnedUserID",
            "pinnedTime"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIJJZZ",
            "Ljava/lang/String;",
            "IIIIJJJ",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;[BJJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIIIIIIJ",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessageReaction;",
            ">;Z",
            "Lim/zego/zim/internal/generated/ZIMGenMessageRepliedInfo;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;",
            ">;",
            "Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "JZ",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->IsNull:Z

    .line 178
    iput p2, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->Type:I

    .line 179
    iput-wide p3, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->MessageID:J

    .line 180
    iput-wide p5, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->LocalMessageId:J

    .line 181
    iput-boolean p7, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->IsUserInsert:Z

    .line 182
    iput-boolean p8, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->IsBroadcastMessage:Z

    .line 183
    iput-object p9, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->ConversationID:Ljava/lang/String;

    .line 184
    iput p10, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->Direction:I

    .line 185
    iput p11, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->SentStatus:I

    .line 186
    iput p12, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->ConversationType:I

    .line 187
    iput p13, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->ReceiptStatus:I

    .line 188
    iput-wide p14, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->ConversationSeq:J

    move-wide/from16 p1, p16

    .line 189
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->MessageSeq:J

    move-wide/from16 p1, p18

    .line 190
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->Timestamp:J

    move-object/from16 p1, p20

    .line 191
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->Message:Ljava/lang/String;

    move/from16 p1, p21

    .line 192
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->IsMentionAll:Z

    move-object/from16 p1, p22

    .line 193
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->MentionedUserIDs:Ljava/util/ArrayList;

    move-object/from16 p1, p23

    .line 194
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->CommandMessage:[B

    move-wide/from16 p1, p24

    .line 195
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->OrderKey:J

    move-wide/from16 p1, p26

    .line 196
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->MediaDuration:J

    move-object/from16 p1, p28

    .line 197
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->SenderUserId:Ljava/lang/String;

    move-object/from16 p1, p29

    .line 198
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->FileLocalPath:Ljava/lang/String;

    move-object/from16 p1, p30

    .line 199
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->FileUid:Ljava/lang/String;

    move-object/from16 p1, p31

    .line 200
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->FileUrl:Ljava/lang/String;

    move-object/from16 p1, p32

    .line 201
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->FileName:Ljava/lang/String;

    move-wide/from16 p1, p33

    .line 202
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->FileSize:J

    move-object/from16 p1, p35

    .line 203
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->LargeImageDownloadUrl:Ljava/lang/String;

    move-object/from16 p1, p36

    .line 204
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->LargeImageLocalPath:Ljava/lang/String;

    move-object/from16 p1, p37

    .line 205
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->ThumbnailDownloadUrl:Ljava/lang/String;

    move-object/from16 p1, p38

    .line 206
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->ThumbnailLocalPath:Ljava/lang/String;

    move-object/from16 p1, p39

    .line 207
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->VideoFirstFrameLocalPath:Ljava/lang/String;

    move-object/from16 p1, p40

    .line 208
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->VideoFirstFrameDownloadUrl:Ljava/lang/String;

    move-object/from16 p1, p41

    .line 209
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->ExtendedData:Ljava/lang/String;

    move-object/from16 p1, p42

    .line 210
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->LocalExtendedData:Ljava/lang/String;

    move/from16 p1, p43

    .line 211
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->OriginalImageWidth:I

    move/from16 p1, p44

    .line 212
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->OriginalImageHeight:I

    move/from16 p1, p45

    .line 213
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->LargeImageWidth:I

    move/from16 p1, p46

    .line 214
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->LargeImageHeight:I

    move/from16 p1, p47

    .line 215
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->ThumbnailWidth:I

    move/from16 p1, p48

    .line 216
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->ThumbnailHeight:I

    move/from16 p1, p49

    .line 217
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->VideoFirstFrameWidth:I

    move/from16 p1, p50

    .line 218
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->VideoFirstFrameHeight:I

    move/from16 p1, p51

    .line 219
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->RevokeType:I

    move-wide/from16 p1, p52

    .line 220
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->RevokeTimestamp:J

    move-object/from16 p1, p54

    .line 221
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->OperatedUserId:Ljava/lang/String;

    move/from16 p1, p55

    .line 222
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->OriginalMessageType:I

    move-object/from16 p1, p56

    .line 223
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->OriginalTextMessage:Ljava/lang/String;

    move-object/from16 p1, p57

    .line 224
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->RevokeExtendedData:Ljava/lang/String;

    move/from16 p1, p58

    .line 225
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->RevokeStatus:I

    move/from16 p1, p59

    .line 226
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->SubType:I

    move-object/from16 p1, p60

    .line 227
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->SearchedContent:Ljava/lang/String;

    move-object/from16 p1, p61

    .line 228
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->Reactions:Ljava/util/ArrayList;

    move/from16 p1, p62

    .line 229
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->IsServerMessage:Z

    move-object/from16 p1, p63

    .line 230
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->RepliedInfo:Lim/zego/zim/internal/generated/ZIMGenMessageRepliedInfo;

    move/from16 p1, p64

    .line 231
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->RootRepliedCount:I

    move-object/from16 p1, p65

    .line 232
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->CombineTitle:Ljava/lang/String;

    move-object/from16 p1, p66

    .line 233
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->CombineSummary:Ljava/lang/String;

    move-object/from16 p1, p67

    .line 234
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->CombineMessages:Ljava/util/ArrayList;

    move-object/from16 p1, p68

    .line 235
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->CombineID:Ljava/lang/String;

    move-object/from16 p1, p69

    .line 236
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->CbInnerID:Ljava/lang/String;

    move/from16 p1, p70

    .line 237
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->TipsEvent:I

    move-object/from16 p1, p71

    .line 238
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->OperatedUser:Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;

    move-object/from16 p1, p72

    .line 239
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->TargetUserList:Ljava/util/ArrayList;

    move-object/from16 p1, p73

    .line 240
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->ChangeInfo:Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;

    move-object/from16 p1, p74

    .line 241
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->MultipleMessageInfoList:Ljava/util/ArrayList;

    move-object/from16 p1, p75

    .line 242
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->FailedIndexList:Ljava/util/ArrayList;

    move-object/from16 p1, p76

    .line 243
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->EditorUserID:Ljava/lang/String;

    move-wide/from16 p1, p77

    .line 244
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->EditedTime:J

    move/from16 p1, p79

    .line 245
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->IsGroupTargetedMessage:Z

    move-object/from16 p1, p80

    .line 246
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->PinnedUserID:Ljava/lang/String;

    move-wide/from16 p1, p81

    .line 247
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->PinnedTime:J

    return-void
.end method


# virtual methods
.method public getCbInnerID()Ljava/lang/String;
    .locals 1

    .line 475
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->CbInnerID:Ljava/lang/String;

    return-object v0
.end method

.method public getChangeInfo()Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;
    .locals 1

    .line 491
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->ChangeInfo:Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;

    return-object v0
.end method

.method public getCombineID()Ljava/lang/String;
    .locals 1

    .line 472
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->CombineID:Ljava/lang/String;

    return-object v0
.end method

.method public getCombineMessages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            ">;"
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->CombineMessages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCombineSummary()Ljava/lang/String;
    .locals 1

    .line 464
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->CombineSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getCombineTitle()Ljava/lang/String;
    .locals 1

    .line 461
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->CombineTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getCommandMessage()[B
    .locals 1

    .line 307
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->CommandMessage:[B

    return-object v0
.end method

.method public getConversationID()Ljava/lang/String;
    .locals 1

    .line 270
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->ConversationID:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationSeq()J
    .locals 2

    .line 287
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->ConversationSeq:J

    return-wide v0
.end method

.method public getConversationType()I
    .locals 1

    .line 279
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->ConversationType:I

    return v0
.end method

.method public getDirection()I
    .locals 1

    .line 273
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->Direction:I

    return v0
.end method

.method public getEditedTime()J
    .locals 2

    .line 512
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->EditedTime:J

    return-wide v0
.end method

.method public getEditorUserID()Ljava/lang/String;
    .locals 1

    .line 509
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->EditorUserID:Ljava/lang/String;

    return-object v0
.end method

.method public getExtendedData()Ljava/lang/String;
    .locals 1

    .line 364
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->ExtendedData:Ljava/lang/String;

    return-object v0
.end method

.method public getFailedIndexList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 504
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->FailedIndexList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFileLocalPath()Ljava/lang/String;
    .locals 1

    .line 319
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->FileLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 328
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->FileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .line 331
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->FileSize:J

    return-wide v0
.end method

.method public getFileUid()Ljava/lang/String;
    .locals 1

    .line 322
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->FileUid:Ljava/lang/String;

    return-object v0
.end method

.method public getFileUrl()Ljava/lang/String;
    .locals 1

    .line 325
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->FileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIsBroadcastMessage()Z
    .locals 1

    .line 265
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->IsBroadcastMessage:Z

    return v0
.end method

.method public getIsGroupTargetedMessage()Z
    .locals 1

    .line 515
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->IsGroupTargetedMessage:Z

    return v0
.end method

.method public getIsMentionAll()Z
    .locals 1

    .line 299
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->IsMentionAll:Z

    return v0
.end method

.method public getIsNull()Z
    .locals 1

    .line 250
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->IsNull:Z

    return v0
.end method

.method public getIsServerMessage()Z
    .locals 1

    .line 446
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->IsServerMessage:Z

    return v0
.end method

.method public getIsUserInsert()Z
    .locals 1

    .line 262
    iget-boolean v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->IsUserInsert:Z

    return v0
.end method

.method public getLargeImageDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 334
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->LargeImageDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLargeImageHeight()I
    .locals 1

    .line 385
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->LargeImageHeight:I

    return v0
.end method

.method public getLargeImageLocalPath()Ljava/lang/String;
    .locals 1

    .line 339
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->LargeImageLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method public getLargeImageWidth()I
    .locals 1

    .line 382
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->LargeImageWidth:I

    return v0
.end method

.method public getLocalExtendedData()Ljava/lang/String;
    .locals 1

    .line 367
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->LocalExtendedData:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalMessageId()J
    .locals 2

    .line 259
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->LocalMessageId:J

    return-wide v0
.end method

.method public getMediaDuration()J
    .locals 2

    .line 313
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->MediaDuration:J

    return-wide v0
.end method

.method public getMentionedUserIDs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->MentionedUserIDs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 296
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->Message:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageID()J
    .locals 2

    .line 256
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->MessageID:J

    return-wide v0
.end method

.method public getMessageSeq()J
    .locals 2

    .line 290
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->MessageSeq:J

    return-wide v0
.end method

.method public getMultipleMessageInfoList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;",
            ">;"
        }
    .end annotation

    .line 497
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->MultipleMessageInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOperatedUser()Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;
    .locals 1

    .line 481
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->OperatedUser:Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;

    return-object v0
.end method

.method public getOperatedUserId()Ljava/lang/String;
    .locals 1

    .line 412
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->OperatedUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderKey()J
    .locals 2

    .line 310
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->OrderKey:J

    return-wide v0
.end method

.method public getOriginalImageHeight()I
    .locals 1

    .line 377
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->OriginalImageHeight:I

    return v0
.end method

.method public getOriginalImageWidth()I
    .locals 1

    .line 372
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->OriginalImageWidth:I

    return v0
.end method

.method public getOriginalMessageType()I
    .locals 1

    .line 415
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->OriginalMessageType:I

    return v0
.end method

.method public getOriginalTextMessage()Ljava/lang/String;
    .locals 1

    .line 420
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->OriginalTextMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getPinnedTime()J
    .locals 2

    .line 523
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->PinnedTime:J

    return-wide v0
.end method

.method public getPinnedUserID()Ljava/lang/String;
    .locals 1

    .line 520
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->PinnedUserID:Ljava/lang/String;

    return-object v0
.end method

.method public getReactions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessageReaction;",
            ">;"
        }
    .end annotation

    .line 441
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->Reactions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getReceiptStatus()I
    .locals 1

    .line 284
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->ReceiptStatus:I

    return v0
.end method

.method public getRepliedInfo()Lim/zego/zim/internal/generated/ZIMGenMessageRepliedInfo;
    .locals 1

    .line 451
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->RepliedInfo:Lim/zego/zim/internal/generated/ZIMGenMessageRepliedInfo;

    return-object v0
.end method

.method public getRevokeExtendedData()Ljava/lang/String;
    .locals 1

    .line 425
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->RevokeExtendedData:Ljava/lang/String;

    return-object v0
.end method

.method public getRevokeStatus()I
    .locals 1

    .line 430
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->RevokeStatus:I

    return v0
.end method

.method public getRevokeTimestamp()J
    .locals 2

    .line 409
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->RevokeTimestamp:J

    return-wide v0
.end method

.method public getRevokeType()I
    .locals 1

    .line 406
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->RevokeType:I

    return v0
.end method

.method public getRootRepliedCount()I
    .locals 1

    .line 456
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->RootRepliedCount:I

    return v0
.end method

.method public getSearchedContent()Ljava/lang/String;
    .locals 1

    .line 436
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->SearchedContent:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderUserId()Ljava/lang/String;
    .locals 1

    .line 316
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->SenderUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getSentStatus()I
    .locals 1

    .line 276
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->SentStatus:I

    return v0
.end method

.method public getSubType()I
    .locals 1

    .line 433
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->SubType:I

    return v0
.end method

.method public getTargetUserList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;",
            ">;"
        }
    .end annotation

    .line 486
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->TargetUserList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getThumbnailDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 344
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->ThumbnailDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailHeight()I
    .locals 1

    .line 393
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->ThumbnailHeight:I

    return v0
.end method

.method public getThumbnailLocalPath()Ljava/lang/String;
    .locals 1

    .line 349
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->ThumbnailLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailWidth()I
    .locals 1

    .line 390
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->ThumbnailWidth:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 293
    iget-wide v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->Timestamp:J

    return-wide v0
.end method

.method public getTipsEvent()I
    .locals 1

    .line 478
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->TipsEvent:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 253
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->Type:I

    return v0
.end method

.method public getVideoFirstFrameDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 359
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->VideoFirstFrameDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoFirstFrameHeight()I
    .locals 1

    .line 401
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->VideoFirstFrameHeight:I

    return v0
.end method

.method public getVideoFirstFrameLocalPath()Ljava/lang/String;
    .locals 1

    .line 354
    iget-object v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->VideoFirstFrameLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoFirstFrameWidth()I
    .locals 1

    .line 396
    iget v0, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->VideoFirstFrameWidth:I

    return v0
.end method

.method public setCbInnerID(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cbInnerID"
        }
    .end annotation

    .line 476
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->CbInnerID:Ljava/lang/String;

    return-void
.end method

.method public setChangeInfo(Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "changeInfo"
        }
    .end annotation

    .line 493
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->ChangeInfo:Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;

    return-void
.end method

.method public setCombineID(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "combineID"
        }
    .end annotation

    .line 473
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->CombineID:Ljava/lang/String;

    return-void
.end method

.method public setCombineMessages(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "combineMessages"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessage;",
            ">;)V"
        }
    .end annotation

    .line 469
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->CombineMessages:Ljava/util/ArrayList;

    return-void
.end method

.method public setCombineSummary(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "combineSummary"
        }
    .end annotation

    .line 465
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->CombineSummary:Ljava/lang/String;

    return-void
.end method

.method public setCombineTitle(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "combineTitle"
        }
    .end annotation

    .line 462
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->CombineTitle:Ljava/lang/String;

    return-void
.end method

.method public setCommandMessage([B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandMessage"
        }
    .end annotation

    .line 308
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->CommandMessage:[B

    return-void
.end method

.method public setConversationID(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "conversationID"
        }
    .end annotation

    .line 271
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->ConversationID:Ljava/lang/String;

    return-void
.end method

.method public setConversationSeq(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "conversationSeq"
        }
    .end annotation

    .line 288
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->ConversationSeq:J

    return-void
.end method

.method public setConversationType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "conversationType"
        }
    .end annotation

    .line 281
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->ConversationType:I

    return-void
.end method

.method public setDirection(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 274
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->Direction:I

    return-void
.end method

.method public setEditedTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editedTime"
        }
    .end annotation

    .line 513
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->EditedTime:J

    return-void
.end method

.method public setEditorUserID(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editorUserID"
        }
    .end annotation

    .line 510
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->EditorUserID:Ljava/lang/String;

    return-void
.end method

.method public setExtendedData(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extendedData"
        }
    .end annotation

    .line 365
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->ExtendedData:Ljava/lang/String;

    return-void
.end method

.method public setFailedIndexList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failedIndexList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 506
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->FailedIndexList:Ljava/util/ArrayList;

    return-void
.end method

.method public setFileLocalPath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileLocalPath"
        }
    .end annotation

    .line 320
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->FileLocalPath:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileName"
        }
    .end annotation

    .line 329
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->FileName:Ljava/lang/String;

    return-void
.end method

.method public setFileSize(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileSize"
        }
    .end annotation

    .line 332
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->FileSize:J

    return-void
.end method

.method public setFileUid(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileUid"
        }
    .end annotation

    .line 323
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->FileUid:Ljava/lang/String;

    return-void
.end method

.method public setFileUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileUrl"
        }
    .end annotation

    .line 326
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->FileUrl:Ljava/lang/String;

    return-void
.end method

.method public setIsBroadcastMessage(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isBroadcastMessage"
        }
    .end annotation

    .line 267
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->IsBroadcastMessage:Z

    return-void
.end method

.method public setIsGroupTargetedMessage(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isGroupTargetedMessage"
        }
    .end annotation

    .line 517
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->IsGroupTargetedMessage:Z

    return-void
.end method

.method public setIsMentionAll(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isMentionAll"
        }
    .end annotation

    .line 300
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->IsMentionAll:Z

    return-void
.end method

.method public setIsNull(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isNull"
        }
    .end annotation

    .line 251
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->IsNull:Z

    return-void
.end method

.method public setIsServerMessage(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isServerMessage"
        }
    .end annotation

    .line 448
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->IsServerMessage:Z

    return-void
.end method

.method public setIsUserInsert(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isUserInsert"
        }
    .end annotation

    .line 263
    iput-boolean p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->IsUserInsert:Z

    return-void
.end method

.method public setLargeImageDownloadUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "largeImageDownloadUrl"
        }
    .end annotation

    .line 336
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->LargeImageDownloadUrl:Ljava/lang/String;

    return-void
.end method

.method public setLargeImageHeight(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "largeImageHeight"
        }
    .end annotation

    .line 387
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->LargeImageHeight:I

    return-void
.end method

.method public setLargeImageLocalPath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "largeImageLocalPath"
        }
    .end annotation

    .line 341
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->LargeImageLocalPath:Ljava/lang/String;

    return-void
.end method

.method public setLargeImageWidth(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "largeImageWidth"
        }
    .end annotation

    .line 383
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->LargeImageWidth:I

    return-void
.end method

.method public setLocalExtendedData(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "localExtendedData"
        }
    .end annotation

    .line 369
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->LocalExtendedData:Ljava/lang/String;

    return-void
.end method

.method public setLocalMessageId(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "localMessageId"
        }
    .end annotation

    .line 260
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->LocalMessageId:J

    return-void
.end method

.method public setMediaDuration(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaDuration"
        }
    .end annotation

    .line 314
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->MediaDuration:J

    return-void
.end method

.method public setMentionedUserIDs(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mentionedUserIDs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 304
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->MentionedUserIDs:Ljava/util/ArrayList;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 297
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->Message:Ljava/lang/String;

    return-void
.end method

.method public setMessageID(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageID"
        }
    .end annotation

    .line 257
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->MessageID:J

    return-void
.end method

.method public setMessageSeq(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageSeq"
        }
    .end annotation

    .line 291
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->MessageSeq:J

    return-void
.end method

.method public setMultipleMessageInfoList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "multipleMessageInfoList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessageLiteInfo;",
            ">;)V"
        }
    .end annotation

    .line 501
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->MultipleMessageInfoList:Ljava/util/ArrayList;

    return-void
.end method

.method public setOperatedUser(Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "operatedUser"
        }
    .end annotation

    .line 483
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->OperatedUser:Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;

    return-void
.end method

.method public setOperatedUserId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "operatedUserId"
        }
    .end annotation

    .line 413
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->OperatedUserId:Ljava/lang/String;

    return-void
.end method

.method public setOrderKey(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orderKey"
        }
    .end annotation

    .line 311
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->OrderKey:J

    return-void
.end method

.method public setOriginalImageHeight(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "originalImageHeight"
        }
    .end annotation

    .line 379
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->OriginalImageHeight:I

    return-void
.end method

.method public setOriginalImageWidth(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "originalImageWidth"
        }
    .end annotation

    .line 374
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->OriginalImageWidth:I

    return-void
.end method

.method public setOriginalMessageType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "originalMessageType"
        }
    .end annotation

    .line 417
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->OriginalMessageType:I

    return-void
.end method

.method public setOriginalTextMessage(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "originalTextMessage"
        }
    .end annotation

    .line 422
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->OriginalTextMessage:Ljava/lang/String;

    return-void
.end method

.method public setPinnedTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pinnedTime"
        }
    .end annotation

    .line 524
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->PinnedTime:J

    return-void
.end method

.method public setPinnedUserID(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pinnedUserID"
        }
    .end annotation

    .line 521
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->PinnedUserID:Ljava/lang/String;

    return-void
.end method

.method public setReactions(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reactions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenMessageReaction;",
            ">;)V"
        }
    .end annotation

    .line 443
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->Reactions:Ljava/util/ArrayList;

    return-void
.end method

.method public setReceiptStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "receiptStatus"
        }
    .end annotation

    .line 285
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->ReceiptStatus:I

    return-void
.end method

.method public setRepliedInfo(Lim/zego/zim/internal/generated/ZIMGenMessageRepliedInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "repliedInfo"
        }
    .end annotation

    .line 453
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->RepliedInfo:Lim/zego/zim/internal/generated/ZIMGenMessageRepliedInfo;

    return-void
.end method

.method public setRevokeExtendedData(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "revokeExtendedData"
        }
    .end annotation

    .line 427
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->RevokeExtendedData:Ljava/lang/String;

    return-void
.end method

.method public setRevokeStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "revokeStatus"
        }
    .end annotation

    .line 431
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->RevokeStatus:I

    return-void
.end method

.method public setRevokeTimestamp(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "revokeTimestamp"
        }
    .end annotation

    .line 410
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->RevokeTimestamp:J

    return-void
.end method

.method public setRevokeType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "revokeType"
        }
    .end annotation

    .line 407
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->RevokeType:I

    return-void
.end method

.method public setRootRepliedCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootRepliedCount"
        }
    .end annotation

    .line 458
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->RootRepliedCount:I

    return-void
.end method

.method public setSearchedContent(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "searchedContent"
        }
    .end annotation

    .line 438
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->SearchedContent:Ljava/lang/String;

    return-void
.end method

.method public setSenderUserId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "senderUserId"
        }
    .end annotation

    .line 317
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->SenderUserId:Ljava/lang/String;

    return-void
.end method

.method public setSentStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sentStatus"
        }
    .end annotation

    .line 277
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->SentStatus:I

    return-void
.end method

.method public setSubType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subType"
        }
    .end annotation

    .line 434
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->SubType:I

    return-void
.end method

.method public setTargetUserList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetUserList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;",
            ">;)V"
        }
    .end annotation

    .line 488
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->TargetUserList:Ljava/util/ArrayList;

    return-void
.end method

.method public setThumbnailDownloadUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thumbnailDownloadUrl"
        }
    .end annotation

    .line 346
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->ThumbnailDownloadUrl:Ljava/lang/String;

    return-void
.end method

.method public setThumbnailHeight(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thumbnailHeight"
        }
    .end annotation

    .line 394
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->ThumbnailHeight:I

    return-void
.end method

.method public setThumbnailLocalPath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thumbnailLocalPath"
        }
    .end annotation

    .line 351
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->ThumbnailLocalPath:Ljava/lang/String;

    return-void
.end method

.method public setThumbnailWidth(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thumbnailWidth"
        }
    .end annotation

    .line 391
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->ThumbnailWidth:I

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestamp"
        }
    .end annotation

    .line 294
    iput-wide p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->Timestamp:J

    return-void
.end method

.method public setTipsEvent(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tipsEvent"
        }
    .end annotation

    .line 479
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->TipsEvent:I

    return-void
.end method

.method public setType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 254
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->Type:I

    return-void
.end method

.method public setVideoFirstFrameDownloadUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoFirstFrameDownloadUrl"
        }
    .end annotation

    .line 361
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->VideoFirstFrameDownloadUrl:Ljava/lang/String;

    return-void
.end method

.method public setVideoFirstFrameHeight(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoFirstFrameHeight"
        }
    .end annotation

    .line 403
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->VideoFirstFrameHeight:I

    return-void
.end method

.method public setVideoFirstFrameLocalPath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoFirstFrameLocalPath"
        }
    .end annotation

    .line 356
    iput-object p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->VideoFirstFrameLocalPath:Ljava/lang/String;

    return-void
.end method

.method public setVideoFirstFrameWidth(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoFirstFrameWidth"
        }
    .end annotation

    .line 398
    iput p1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->VideoFirstFrameWidth:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIMGenMessage{IsNull="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->IsNull:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->Type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",MessageID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->MessageID:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",LocalMessageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->LocalMessageId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsUserInsert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->IsUserInsert:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsBroadcastMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->IsBroadcastMessage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ConversationID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->ConversationID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->Direction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",SentStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->SentStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ConversationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->ConversationType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ReceiptStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->ReceiptStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ConversationSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->ConversationSeq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",MessageSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->MessageSeq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->Timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->Message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsMentionAll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->IsMentionAll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",MentionedUserIDs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->MentionedUserIDs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",CommandMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->CommandMessage:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",OrderKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->OrderKey:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",MediaDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->MediaDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",SenderUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->SenderUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",FileLocalPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->FileLocalPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",FileUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->FileUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",FileUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->FileUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",FileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->FileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",FileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->FileSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",LargeImageDownloadUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->LargeImageDownloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",LargeImageLocalPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->LargeImageLocalPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ThumbnailDownloadUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->ThumbnailDownloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ThumbnailLocalPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->ThumbnailLocalPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",VideoFirstFrameLocalPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->VideoFirstFrameLocalPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",VideoFirstFrameDownloadUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->VideoFirstFrameDownloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ExtendedData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->ExtendedData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",LocalExtendedData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->LocalExtendedData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",OriginalImageWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->OriginalImageWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",OriginalImageHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->OriginalImageHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",LargeImageWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->LargeImageWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",LargeImageHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->LargeImageHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ThumbnailWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->ThumbnailWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ThumbnailHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->ThumbnailHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",VideoFirstFrameWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->VideoFirstFrameWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",VideoFirstFrameHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->VideoFirstFrameHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",RevokeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->RevokeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",RevokeTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->RevokeTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",OperatedUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->OperatedUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",OriginalMessageType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->OriginalMessageType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",OriginalTextMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->OriginalTextMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",RevokeExtendedData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->RevokeExtendedData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",RevokeStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->RevokeStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",SubType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->SubType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",SearchedContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->SearchedContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Reactions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->Reactions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsServerMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->IsServerMessage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",RepliedInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->RepliedInfo:Lim/zego/zim/internal/generated/ZIMGenMessageRepliedInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",RootRepliedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->RootRepliedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",CombineTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->CombineTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",CombineSummary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->CombineSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",CombineMessages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->CombineMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",CombineID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->CombineID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",CbInnerID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->CbInnerID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",TipsEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->TipsEvent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",OperatedUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->OperatedUser:Lim/zego/zim/internal/generated/ZIMGenInnerUserInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",TargetUserList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->TargetUserList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ChangeInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->ChangeInfo:Lim/zego/zim/internal/generated/ZIMGenTipsMessageChangeInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",MultipleMessageInfoList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->MultipleMessageInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",FailedIndexList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->FailedIndexList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",EditorUserID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->EditorUserID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",EditedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->EditedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IsGroupTargetedMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->IsGroupTargetedMessage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",PinnedUserID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->PinnedUserID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",PinnedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lim/zego/zim/internal/generated/ZIMGenMessage;->PinnedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
