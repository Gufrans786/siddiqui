package im.zego.zim.internal.generated;

import java.util.ArrayList;

public final class ZIMGenMessage {
    String CbInnerID;
    ZIMGenTipsMessageChangeInfo ChangeInfo;
    String CombineID;
    ArrayList<ZIMGenMessage> CombineMessages;
    String CombineSummary;
    String CombineTitle;
    byte[] CommandMessage;
    String ConversationID;
    long ConversationSeq;
    int ConversationType;
    int Direction;
    long EditedTime;
    String EditorUserID;
    String ExtendedData;
    ArrayList<Integer> FailedIndexList;
    String FileLocalPath;
    String FileName;
    long FileSize;
    String FileUid;
    String FileUrl;
    boolean IsBroadcastMessage;
    boolean IsGroupTargetedMessage;
    boolean IsMentionAll;
    boolean IsNull;
    boolean IsServerMessage;
    boolean IsUserInsert;
    String LargeImageDownloadUrl;
    int LargeImageHeight;
    String LargeImageLocalPath;
    int LargeImageWidth;
    String LocalExtendedData;
    long LocalMessageId;
    long MediaDuration;
    ArrayList<String> MentionedUserIDs;
    String Message;
    long MessageID;
    long MessageSeq;
    ArrayList<ZIMGenMessageLiteInfo> MultipleMessageInfoList;
    ZIMGenInnerUserInfo OperatedUser;
    String OperatedUserId;
    long OrderKey;
    int OriginalImageHeight;
    int OriginalImageWidth;
    int OriginalMessageType;
    String OriginalTextMessage;
    long PinnedTime;
    String PinnedUserID;
    ArrayList<ZIMGenMessageReaction> Reactions;
    int ReceiptStatus;
    ZIMGenMessageRepliedInfo RepliedInfo;
    String RevokeExtendedData;
    int RevokeStatus;
    long RevokeTimestamp;
    int RevokeType;
    int RootRepliedCount;
    String SearchedContent;
    String SenderUserId;
    int SentStatus;
    int SubType;
    ArrayList<ZIMGenInnerUserInfo> TargetUserList;
    String ThumbnailDownloadUrl;
    int ThumbnailHeight;
    String ThumbnailLocalPath;
    int ThumbnailWidth;
    long Timestamp;
    int TipsEvent;
    int Type;
    String VideoFirstFrameDownloadUrl;
    int VideoFirstFrameHeight;
    String VideoFirstFrameLocalPath;
    int VideoFirstFrameWidth;

    public ZIMGenMessage() {
    }

    public ZIMGenMessage(boolean isNull, int type, long messageID, long localMessageId, boolean isUserInsert, boolean isBroadcastMessage, String conversationID, int direction, int sentStatus, int conversationType, int receiptStatus, long conversationSeq, long messageSeq, long timestamp, String message, boolean isMentionAll, ArrayList<String> mentionedUserIDs, byte[] commandMessage, long orderKey, long mediaDuration, String senderUserId, String fileLocalPath, String fileUid, String fileUrl, String fileName, long fileSize, String largeImageDownloadUrl, String largeImageLocalPath, String thumbnailDownloadUrl, String thumbnailLocalPath, String videoFirstFrameLocalPath, String videoFirstFrameDownloadUrl, String extendedData, String localExtendedData, int originalImageWidth, int originalImageHeight, int largeImageWidth, int largeImageHeight, int thumbnailWidth, int thumbnailHeight, int videoFirstFrameWidth, int videoFirstFrameHeight, int revokeType, long revokeTimestamp, String operatedUserId, int originalMessageType, String originalTextMessage, String revokeExtendedData, int revokeStatus, int subType, String searchedContent, ArrayList<ZIMGenMessageReaction> reactions, boolean isServerMessage, ZIMGenMessageRepliedInfo repliedInfo, int rootRepliedCount, String combineTitle, String combineSummary, ArrayList<ZIMGenMessage> combineMessages, String combineID, String cbInnerID, int tipsEvent, ZIMGenInnerUserInfo operatedUser, ArrayList<ZIMGenInnerUserInfo> targetUserList, ZIMGenTipsMessageChangeInfo changeInfo, ArrayList<ZIMGenMessageLiteInfo> multipleMessageInfoList, ArrayList<Integer> failedIndexList, String editorUserID, long editedTime, boolean isGroupTargetedMessage, String pinnedUserID, long pinnedTime) {
        this.IsNull = isNull;
        this.Type = type;
        this.MessageID = messageID;
        this.LocalMessageId = localMessageId;
        this.IsUserInsert = isUserInsert;
        this.IsBroadcastMessage = isBroadcastMessage;
        this.ConversationID = conversationID;
        this.Direction = direction;
        this.SentStatus = sentStatus;
        this.ConversationType = conversationType;
        this.ReceiptStatus = receiptStatus;
        this.ConversationSeq = conversationSeq;
        this.MessageSeq = messageSeq;
        this.Timestamp = timestamp;
        this.Message = message;
        this.IsMentionAll = isMentionAll;
        this.MentionedUserIDs = mentionedUserIDs;
        this.CommandMessage = commandMessage;
        this.OrderKey = orderKey;
        this.MediaDuration = mediaDuration;
        this.SenderUserId = senderUserId;
        this.FileLocalPath = fileLocalPath;
        this.FileUid = fileUid;
        this.FileUrl = fileUrl;
        this.FileName = fileName;
        this.FileSize = fileSize;
        this.LargeImageDownloadUrl = largeImageDownloadUrl;
        this.LargeImageLocalPath = largeImageLocalPath;
        this.ThumbnailDownloadUrl = thumbnailDownloadUrl;
        this.ThumbnailLocalPath = thumbnailLocalPath;
        this.VideoFirstFrameLocalPath = videoFirstFrameLocalPath;
        this.VideoFirstFrameDownloadUrl = videoFirstFrameDownloadUrl;
        this.ExtendedData = extendedData;
        this.LocalExtendedData = localExtendedData;
        this.OriginalImageWidth = originalImageWidth;
        this.OriginalImageHeight = originalImageHeight;
        this.LargeImageWidth = largeImageWidth;
        this.LargeImageHeight = largeImageHeight;
        this.ThumbnailWidth = thumbnailWidth;
        this.ThumbnailHeight = thumbnailHeight;
        this.VideoFirstFrameWidth = videoFirstFrameWidth;
        this.VideoFirstFrameHeight = videoFirstFrameHeight;
        this.RevokeType = revokeType;
        this.RevokeTimestamp = revokeTimestamp;
        this.OperatedUserId = operatedUserId;
        this.OriginalMessageType = originalMessageType;
        this.OriginalTextMessage = originalTextMessage;
        this.RevokeExtendedData = revokeExtendedData;
        this.RevokeStatus = revokeStatus;
        this.SubType = subType;
        this.SearchedContent = searchedContent;
        this.Reactions = reactions;
        this.IsServerMessage = isServerMessage;
        this.RepliedInfo = repliedInfo;
        this.RootRepliedCount = rootRepliedCount;
        this.CombineTitle = combineTitle;
        this.CombineSummary = combineSummary;
        this.CombineMessages = combineMessages;
        this.CombineID = combineID;
        this.CbInnerID = cbInnerID;
        this.TipsEvent = tipsEvent;
        this.OperatedUser = operatedUser;
        this.TargetUserList = targetUserList;
        this.ChangeInfo = changeInfo;
        this.MultipleMessageInfoList = multipleMessageInfoList;
        this.FailedIndexList = failedIndexList;
        this.EditorUserID = editorUserID;
        this.EditedTime = editedTime;
        this.IsGroupTargetedMessage = isGroupTargetedMessage;
        this.PinnedUserID = pinnedUserID;
        this.PinnedTime = pinnedTime;
    }

    public boolean getIsNull() {
        return this.IsNull;
    }

    public void setIsNull(boolean isNull) {
        this.IsNull = isNull;
    }

    public int getType() {
        return this.Type;
    }

    public void setType(int type) {
        this.Type = type;
    }

    public long getMessageID() {
        return this.MessageID;
    }

    public void setMessageID(long messageID) {
        this.MessageID = messageID;
    }

    public long getLocalMessageId() {
        return this.LocalMessageId;
    }

    public void setLocalMessageId(long localMessageId) {
        this.LocalMessageId = localMessageId;
    }

    public boolean getIsUserInsert() {
        return this.IsUserInsert;
    }

    public void setIsUserInsert(boolean isUserInsert) {
        this.IsUserInsert = isUserInsert;
    }

    public boolean getIsBroadcastMessage() {
        return this.IsBroadcastMessage;
    }

    public void setIsBroadcastMessage(boolean isBroadcastMessage) {
        this.IsBroadcastMessage = isBroadcastMessage;
    }

    public String getConversationID() {
        return this.ConversationID;
    }

    public void setConversationID(String conversationID) {
        this.ConversationID = conversationID;
    }

    public int getDirection() {
        return this.Direction;
    }

    public void setDirection(int direction) {
        this.Direction = direction;
    }

    public int getSentStatus() {
        return this.SentStatus;
    }

    public void setSentStatus(int sentStatus) {
        this.SentStatus = sentStatus;
    }

    public int getConversationType() {
        return this.ConversationType;
    }

    public void setConversationType(int conversationType) {
        this.ConversationType = conversationType;
    }

    public int getReceiptStatus() {
        return this.ReceiptStatus;
    }

    public void setReceiptStatus(int receiptStatus) {
        this.ReceiptStatus = receiptStatus;
    }

    public long getConversationSeq() {
        return this.ConversationSeq;
    }

    public void setConversationSeq(long conversationSeq) {
        this.ConversationSeq = conversationSeq;
    }

    public long getMessageSeq() {
        return this.MessageSeq;
    }

    public void setMessageSeq(long messageSeq) {
        this.MessageSeq = messageSeq;
    }

    public long getTimestamp() {
        return this.Timestamp;
    }

    public void setTimestamp(long timestamp) {
        this.Timestamp = timestamp;
    }

    public String getMessage() {
        return this.Message;
    }

    public void setMessage(String message) {
        this.Message = message;
    }

    public boolean getIsMentionAll() {
        return this.IsMentionAll;
    }

    public void setIsMentionAll(boolean isMentionAll) {
        this.IsMentionAll = isMentionAll;
    }

    public ArrayList<String> getMentionedUserIDs() {
        return this.MentionedUserIDs;
    }

    public void setMentionedUserIDs(ArrayList<String> mentionedUserIDs) {
        this.MentionedUserIDs = mentionedUserIDs;
    }

    public byte[] getCommandMessage() {
        return this.CommandMessage;
    }

    public void setCommandMessage(byte[] commandMessage) {
        this.CommandMessage = commandMessage;
    }

    public long getOrderKey() {
        return this.OrderKey;
    }

    public void setOrderKey(long orderKey) {
        this.OrderKey = orderKey;
    }

    public long getMediaDuration() {
        return this.MediaDuration;
    }

    public void setMediaDuration(long mediaDuration) {
        this.MediaDuration = mediaDuration;
    }

    public String getSenderUserId() {
        return this.SenderUserId;
    }

    public void setSenderUserId(String senderUserId) {
        this.SenderUserId = senderUserId;
    }

    public String getFileLocalPath() {
        return this.FileLocalPath;
    }

    public void setFileLocalPath(String fileLocalPath) {
        this.FileLocalPath = fileLocalPath;
    }

    public String getFileUid() {
        return this.FileUid;
    }

    public void setFileUid(String fileUid) {
        this.FileUid = fileUid;
    }

    public String getFileUrl() {
        return this.FileUrl;
    }

    public void setFileUrl(String fileUrl) {
        this.FileUrl = fileUrl;
    }

    public String getFileName() {
        return this.FileName;
    }

    public void setFileName(String fileName) {
        this.FileName = fileName;
    }

    public long getFileSize() {
        return this.FileSize;
    }

    public void setFileSize(long fileSize) {
        this.FileSize = fileSize;
    }

    public String getLargeImageDownloadUrl() {
        return this.LargeImageDownloadUrl;
    }

    public void setLargeImageDownloadUrl(String largeImageDownloadUrl) {
        this.LargeImageDownloadUrl = largeImageDownloadUrl;
    }

    public String getLargeImageLocalPath() {
        return this.LargeImageLocalPath;
    }

    public void setLargeImageLocalPath(String largeImageLocalPath) {
        this.LargeImageLocalPath = largeImageLocalPath;
    }

    public String getThumbnailDownloadUrl() {
        return this.ThumbnailDownloadUrl;
    }

    public void setThumbnailDownloadUrl(String thumbnailDownloadUrl) {
        this.ThumbnailDownloadUrl = thumbnailDownloadUrl;
    }

    public String getThumbnailLocalPath() {
        return this.ThumbnailLocalPath;
    }

    public void setThumbnailLocalPath(String thumbnailLocalPath) {
        this.ThumbnailLocalPath = thumbnailLocalPath;
    }

    public String getVideoFirstFrameLocalPath() {
        return this.VideoFirstFrameLocalPath;
    }

    public void setVideoFirstFrameLocalPath(String videoFirstFrameLocalPath) {
        this.VideoFirstFrameLocalPath = videoFirstFrameLocalPath;
    }

    public String getVideoFirstFrameDownloadUrl() {
        return this.VideoFirstFrameDownloadUrl;
    }

    public void setVideoFirstFrameDownloadUrl(String videoFirstFrameDownloadUrl) {
        this.VideoFirstFrameDownloadUrl = videoFirstFrameDownloadUrl;
    }

    public String getExtendedData() {
        return this.ExtendedData;
    }

    public void setExtendedData(String extendedData) {
        this.ExtendedData = extendedData;
    }

    public String getLocalExtendedData() {
        return this.LocalExtendedData;
    }

    public void setLocalExtendedData(String localExtendedData) {
        this.LocalExtendedData = localExtendedData;
    }

    public int getOriginalImageWidth() {
        return this.OriginalImageWidth;
    }

    public void setOriginalImageWidth(int originalImageWidth) {
        this.OriginalImageWidth = originalImageWidth;
    }

    public int getOriginalImageHeight() {
        return this.OriginalImageHeight;
    }

    public void setOriginalImageHeight(int originalImageHeight) {
        this.OriginalImageHeight = originalImageHeight;
    }

    public int getLargeImageWidth() {
        return this.LargeImageWidth;
    }

    public void setLargeImageWidth(int largeImageWidth) {
        this.LargeImageWidth = largeImageWidth;
    }

    public int getLargeImageHeight() {
        return this.LargeImageHeight;
    }

    public void setLargeImageHeight(int largeImageHeight) {
        this.LargeImageHeight = largeImageHeight;
    }

    public int getThumbnailWidth() {
        return this.ThumbnailWidth;
    }

    public void setThumbnailWidth(int thumbnailWidth) {
        this.ThumbnailWidth = thumbnailWidth;
    }

    public int getThumbnailHeight() {
        return this.ThumbnailHeight;
    }

    public void setThumbnailHeight(int thumbnailHeight) {
        this.ThumbnailHeight = thumbnailHeight;
    }

    public int getVideoFirstFrameWidth() {
        return this.VideoFirstFrameWidth;
    }

    public void setVideoFirstFrameWidth(int videoFirstFrameWidth) {
        this.VideoFirstFrameWidth = videoFirstFrameWidth;
    }

    public int getVideoFirstFrameHeight() {
        return this.VideoFirstFrameHeight;
    }

    public void setVideoFirstFrameHeight(int videoFirstFrameHeight) {
        this.VideoFirstFrameHeight = videoFirstFrameHeight;
    }

    public int getRevokeType() {
        return this.RevokeType;
    }

    public void setRevokeType(int revokeType) {
        this.RevokeType = revokeType;
    }

    public long getRevokeTimestamp() {
        return this.RevokeTimestamp;
    }

    public void setRevokeTimestamp(long revokeTimestamp) {
        this.RevokeTimestamp = revokeTimestamp;
    }

    public String getOperatedUserId() {
        return this.OperatedUserId;
    }

    public void setOperatedUserId(String operatedUserId) {
        this.OperatedUserId = operatedUserId;
    }

    public int getOriginalMessageType() {
        return this.OriginalMessageType;
    }

    public void setOriginalMessageType(int originalMessageType) {
        this.OriginalMessageType = originalMessageType;
    }

    public String getOriginalTextMessage() {
        return this.OriginalTextMessage;
    }

    public void setOriginalTextMessage(String originalTextMessage) {
        this.OriginalTextMessage = originalTextMessage;
    }

    public String getRevokeExtendedData() {
        return this.RevokeExtendedData;
    }

    public void setRevokeExtendedData(String revokeExtendedData) {
        this.RevokeExtendedData = revokeExtendedData;
    }

    public int getRevokeStatus() {
        return this.RevokeStatus;
    }

    public void setRevokeStatus(int revokeStatus) {
        this.RevokeStatus = revokeStatus;
    }

    public int getSubType() {
        return this.SubType;
    }

    public void setSubType(int subType) {
        this.SubType = subType;
    }

    public String getSearchedContent() {
        return this.SearchedContent;
    }

    public void setSearchedContent(String searchedContent) {
        this.SearchedContent = searchedContent;
    }

    public ArrayList<ZIMGenMessageReaction> getReactions() {
        return this.Reactions;
    }

    public void setReactions(ArrayList<ZIMGenMessageReaction> reactions) {
        this.Reactions = reactions;
    }

    public boolean getIsServerMessage() {
        return this.IsServerMessage;
    }

    public void setIsServerMessage(boolean isServerMessage) {
        this.IsServerMessage = isServerMessage;
    }

    public ZIMGenMessageRepliedInfo getRepliedInfo() {
        return this.RepliedInfo;
    }

    public void setRepliedInfo(ZIMGenMessageRepliedInfo repliedInfo) {
        this.RepliedInfo = repliedInfo;
    }

    public int getRootRepliedCount() {
        return this.RootRepliedCount;
    }

    public void setRootRepliedCount(int rootRepliedCount) {
        this.RootRepliedCount = rootRepliedCount;
    }

    public String getCombineTitle() {
        return this.CombineTitle;
    }

    public void setCombineTitle(String combineTitle) {
        this.CombineTitle = combineTitle;
    }

    public String getCombineSummary() {
        return this.CombineSummary;
    }

    public void setCombineSummary(String combineSummary) {
        this.CombineSummary = combineSummary;
    }

    public ArrayList<ZIMGenMessage> getCombineMessages() {
        return this.CombineMessages;
    }

    public void setCombineMessages(ArrayList<ZIMGenMessage> combineMessages) {
        this.CombineMessages = combineMessages;
    }

    public String getCombineID() {
        return this.CombineID;
    }

    public void setCombineID(String combineID) {
        this.CombineID = combineID;
    }

    public String getCbInnerID() {
        return this.CbInnerID;
    }

    public void setCbInnerID(String cbInnerID) {
        this.CbInnerID = cbInnerID;
    }

    public int getTipsEvent() {
        return this.TipsEvent;
    }

    public void setTipsEvent(int tipsEvent) {
        this.TipsEvent = tipsEvent;
    }

    public ZIMGenInnerUserInfo getOperatedUser() {
        return this.OperatedUser;
    }

    public void setOperatedUser(ZIMGenInnerUserInfo operatedUser) {
        this.OperatedUser = operatedUser;
    }

    public ArrayList<ZIMGenInnerUserInfo> getTargetUserList() {
        return this.TargetUserList;
    }

    public void setTargetUserList(ArrayList<ZIMGenInnerUserInfo> targetUserList) {
        this.TargetUserList = targetUserList;
    }

    public ZIMGenTipsMessageChangeInfo getChangeInfo() {
        return this.ChangeInfo;
    }

    public void setChangeInfo(ZIMGenTipsMessageChangeInfo changeInfo) {
        this.ChangeInfo = changeInfo;
    }

    public ArrayList<ZIMGenMessageLiteInfo> getMultipleMessageInfoList() {
        return this.MultipleMessageInfoList;
    }

    public void setMultipleMessageInfoList(ArrayList<ZIMGenMessageLiteInfo> multipleMessageInfoList) {
        this.MultipleMessageInfoList = multipleMessageInfoList;
    }

    public ArrayList<Integer> getFailedIndexList() {
        return this.FailedIndexList;
    }

    public void setFailedIndexList(ArrayList<Integer> failedIndexList) {
        this.FailedIndexList = failedIndexList;
    }

    public String getEditorUserID() {
        return this.EditorUserID;
    }

    public void setEditorUserID(String editorUserID) {
        this.EditorUserID = editorUserID;
    }

    public long getEditedTime() {
        return this.EditedTime;
    }

    public void setEditedTime(long editedTime) {
        this.EditedTime = editedTime;
    }

    public boolean getIsGroupTargetedMessage() {
        return this.IsGroupTargetedMessage;
    }

    public void setIsGroupTargetedMessage(boolean isGroupTargetedMessage) {
        this.IsGroupTargetedMessage = isGroupTargetedMessage;
    }

    public String getPinnedUserID() {
        return this.PinnedUserID;
    }

    public void setPinnedUserID(String pinnedUserID) {
        this.PinnedUserID = pinnedUserID;
    }

    public long getPinnedTime() {
        return this.PinnedTime;
    }

    public void setPinnedTime(long pinnedTime) {
        this.PinnedTime = pinnedTime;
    }

    public String toString() {
        return "ZIMGenMessage{IsNull=" + this.IsNull + ",Type=" + this.Type + ",MessageID=" + this.MessageID + ",LocalMessageId=" + this.LocalMessageId + ",IsUserInsert=" + this.IsUserInsert + ",IsBroadcastMessage=" + this.IsBroadcastMessage + ",ConversationID=" + this.ConversationID + ",Direction=" + this.Direction + ",SentStatus=" + this.SentStatus + ",ConversationType=" + this.ConversationType + ",ReceiptStatus=" + this.ReceiptStatus + ",ConversationSeq=" + this.ConversationSeq + ",MessageSeq=" + this.MessageSeq + ",Timestamp=" + this.Timestamp + ",Message=" + this.Message + ",IsMentionAll=" + this.IsMentionAll + ",MentionedUserIDs=" + this.MentionedUserIDs + ",CommandMessage=" + this.CommandMessage + ",OrderKey=" + this.OrderKey + ",MediaDuration=" + this.MediaDuration + ",SenderUserId=" + this.SenderUserId + ",FileLocalPath=" + this.FileLocalPath + ",FileUid=" + this.FileUid + ",FileUrl=" + this.FileUrl + ",FileName=" + this.FileName + ",FileSize=" + this.FileSize + ",LargeImageDownloadUrl=" + this.LargeImageDownloadUrl + ",LargeImageLocalPath=" + this.LargeImageLocalPath + ",ThumbnailDownloadUrl=" + this.ThumbnailDownloadUrl + ",ThumbnailLocalPath=" + this.ThumbnailLocalPath + ",VideoFirstFrameLocalPath=" + this.VideoFirstFrameLocalPath + ",VideoFirstFrameDownloadUrl=" + this.VideoFirstFrameDownloadUrl + ",ExtendedData=" + this.ExtendedData + ",LocalExtendedData=" + this.LocalExtendedData + ",OriginalImageWidth=" + this.OriginalImageWidth + ",OriginalImageHeight=" + this.OriginalImageHeight + ",LargeImageWidth=" + this.LargeImageWidth + ",LargeImageHeight=" + this.LargeImageHeight + ",ThumbnailWidth=" + this.ThumbnailWidth + ",ThumbnailHeight=" + this.ThumbnailHeight + ",VideoFirstFrameWidth=" + this.VideoFirstFrameWidth + ",VideoFirstFrameHeight=" + this.VideoFirstFrameHeight + ",RevokeType=" + this.RevokeType + ",RevokeTimestamp=" + this.RevokeTimestamp + ",OperatedUserId=" + this.OperatedUserId + ",OriginalMessageType=" + this.OriginalMessageType + ",OriginalTextMessage=" + this.OriginalTextMessage + ",RevokeExtendedData=" + this.RevokeExtendedData + ",RevokeStatus=" + this.RevokeStatus + ",SubType=" + this.SubType + ",SearchedContent=" + this.SearchedContent + ",Reactions=" + this.Reactions + ",IsServerMessage=" + this.IsServerMessage + ",RepliedInfo=" + this.RepliedInfo + ",RootRepliedCount=" + this.RootRepliedCount + ",CombineTitle=" + this.CombineTitle + ",CombineSummary=" + this.CombineSummary + ",CombineMessages=" + this.CombineMessages + ",CombineID=" + this.CombineID + ",CbInnerID=" + this.CbInnerID + ",TipsEvent=" + this.TipsEvent + ",OperatedUser=" + this.OperatedUser + ",TargetUserList=" + this.TargetUserList + ",ChangeInfo=" + this.ChangeInfo + ",MultipleMessageInfoList=" + this.MultipleMessageInfoList + ",FailedIndexList=" + this.FailedIndexList + ",EditorUserID=" + this.EditorUserID + ",EditedTime=" + this.EditedTime + ",IsGroupTargetedMessage=" + this.IsGroupTargetedMessage + ",PinnedUserID=" + this.PinnedUserID + ",PinnedTime=" + this.PinnedTime + "}";
    }
}
