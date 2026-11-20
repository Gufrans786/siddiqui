package im.zego.zim.entity;

import im.zego.zim.enums.ZIMConversationType;
import im.zego.zim.enums.ZIMMessageDirection;
import im.zego.zim.enums.ZIMMessageReceiptStatus;
import im.zego.zim.enums.ZIMMessageSentStatus;
import im.zego.zim.enums.ZIMMessageType;
import java.io.Serializable;
import java.util.ArrayList;

public class ZIMMessage implements Serializable {
    private String cbInnerID;
    private String conversationID;
    private long conversationSeq;
    private ZIMConversationType conversationType;
    private ZIMMessageDirection direction;
    private long editedTime;
    private String editorUserID;
    private boolean isBroadcastMessage;
    private boolean isGroupTargetedMessage;
    private boolean isMentionAll;
    private boolean isServerMessage;
    private boolean isUserInserted;
    private long localMessageID;
    private long messageID;
    private long messageSeq;
    private long orderKey;
    private long pinnedTime;
    private String pinnedUserID;
    private ZIMMessageReceiptStatus receiptStatus;
    private int rootRepliedCount;
    private String senderUserID;
    private ZIMMessageSentStatus sentStatus;
    private long timestamp;
    private ZIMMessageType type;
    private ArrayList<String> mentionedUserIDs = new ArrayList<>();
    public String extendedData = "";
    public String localExtendedData = "";
    private ArrayList<ZIMMessageReaction> reactions = new ArrayList<>();
    private ZIMMessageRepliedInfo repliedInfo = null;

    public boolean isUserInserted() {
        return this.isUserInserted;
    }

    public String getExtendedData() {
        return this.extendedData;
    }

    public void setExtendedData(String extendedData) {
        this.extendedData = extendedData;
    }

    public String getLocalExtendedData() {
        return this.localExtendedData;
    }

    public void setLocalExtendedData(String localExtendedData) {
        this.localExtendedData = localExtendedData;
    }

    public int getRootRepliedCount() {
        return this.rootRepliedCount;
    }

    public void setIsMentionAll(boolean isMentionAll) {
        this.isMentionAll = isMentionAll;
    }

    public boolean isMentionAll() {
        return this.isMentionAll;
    }

    public void setMentionedUserIDs(ArrayList<String> mentionedUserIDs) {
        this.mentionedUserIDs = mentionedUserIDs;
    }

    public ArrayList<String> getMentionedUserIDs() {
        return this.mentionedUserIDs;
    }

    public ZIMMessage(ZIMMessageType type) {
        this.type = type;
    }

    public ZIMMessageType getType() {
        return this.type;
    }

    public long getMessageID() {
        return this.messageID;
    }

    public String getConversationID() {
        return this.conversationID;
    }

    public long getConversationSeq() {
        return this.conversationSeq;
    }

    public String getSenderUserID() {
        return this.senderUserID;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public long getLocalMessageID() {
        return this.localMessageID;
    }

    public ZIMConversationType getConversationType() {
        return this.conversationType;
    }

    public ZIMMessageDirection getDirection() {
        return this.direction;
    }

    public ZIMMessageSentStatus getSentStatus() {
        return this.sentStatus;
    }

    public ZIMMessageReceiptStatus getReceiptStatus() {
        return this.receiptStatus;
    }

    public long getOrderKey() {
        return this.orderKey;
    }

    public ArrayList<ZIMMessageReaction> getReactions() {
        return this.reactions;
    }

    public boolean isBroadcastMessage() {
        return this.isBroadcastMessage;
    }

    public long getMessageSeq() {
        return this.messageSeq;
    }

    public boolean isServerMessage() {
        return this.isServerMessage;
    }

    public ZIMMessageRepliedInfo getRepliedInfo() {
        return this.repliedInfo;
    }

    public String getCbInnerID() {
        return this.cbInnerID;
    }

    public String getEditorUserID() {
        return this.editorUserID;
    }

    public long getEditedTime() {
        return this.editedTime;
    }

    public boolean isGroupTargetedMessage() {
        return this.isGroupTargetedMessage;
    }

    public String getPinnedUserID() {
        return this.pinnedUserID;
    }

    public long getPinnedTime() {
        return this.pinnedTime;
    }

    public String toString() {
        return "ZIMMessage{type=" + this.type + ", messageID=" + this.messageID + ", conversationID='" + this.conversationID + "', conversationSeq=" + this.conversationSeq + ", senderUserID='" + this.senderUserID + "', timestamp=" + this.timestamp + ", localMessageID=" + this.localMessageID + ", conversationType=" + this.conversationType + ", direction=" + this.direction + ", sentStatus=" + this.sentStatus + ", receiptStatus=" + this.receiptStatus + ", orderKey=" + this.orderKey + ", isUserInserted=" + this.isUserInserted + ", isBroadcastMessage=" + this.isBroadcastMessage + ", isMentionAll=" + this.isMentionAll + ", mentionedUserIDs=" + this.mentionedUserIDs + ", extendedData='" + this.extendedData + "', localExtendedData='" + this.localExtendedData + "', messageSeq='" + this.messageSeq + "', rootRepliedCount='" + this.rootRepliedCount + "', isServerMessage=" + this.isServerMessage + ", reactions=" + this.reactions + ", repliedInfo=" + this.repliedInfo + ", cbInnerID=" + this.cbInnerID + ", editorUserID=" + this.editorUserID + ", editedTime=" + this.editedTime + ", isGroupTargetedMessage=" + this.isGroupTargetedMessage + ", pinnedUserID=" + this.pinnedUserID + ", pinnedTime=" + this.pinnedTime + '}';
    }
}
