package im.zego.zim.entity;

import im.zego.zim.enums.ZIMConversationSearchMode;
import im.zego.zim.enums.ZIMMessageType;
import java.util.ArrayList;

public class ZIMConversationSearchConfig {
    public int conversationMessageCount;
    public int nextFlag;
    public int totalConversationCount;
    public ArrayList<String> keywords = new ArrayList<>();
    public ArrayList<ZIMMessageType> messageTypes = new ArrayList<>();
    public ArrayList<Integer> subMessageTypes = new ArrayList<>();
    public ArrayList<String> senderUserIDs = new ArrayList<>();
    public long startTime = 0;
    public long endTime = 0;
    public ZIMConversationSearchMode mode = ZIMConversationSearchMode.MATCH_MESSAGE;

    public int getTotalConversationCount() {
        return this.totalConversationCount;
    }

    public void setTotalConversationCount(int totalConversationCount) {
        this.totalConversationCount = totalConversationCount;
    }

    public int getConversationMessageCount() {
        return this.conversationMessageCount;
    }

    public void setConversationMessageCount(int conversationMessageCount) {
        this.conversationMessageCount = conversationMessageCount;
    }

    public ZIMConversationSearchMode getMode() {
        return this.mode;
    }

    public void setMode(ZIMConversationSearchMode mode) {
        this.mode = mode;
    }

    public ArrayList<String> getKeywords() {
        return this.keywords;
    }

    public void setKeywords(ArrayList<String> keywords) {
        this.keywords = keywords;
    }

    public ArrayList<ZIMMessageType> getMessageTypes() {
        return this.messageTypes;
    }

    public void setMessageTypes(ArrayList<ZIMMessageType> messageTypes) {
        this.messageTypes = messageTypes;
    }

    public ArrayList<String> getSenderUserIDs() {
        return this.senderUserIDs;
    }

    public void setSenderUserIDs(ArrayList<String> senderUserIDs) {
        this.senderUserIDs = senderUserIDs;
    }

    public long getStartTime() {
        return this.startTime;
    }

    public void setStartTime(long startTime) {
        this.startTime = startTime;
    }

    public long getEndTime() {
        return this.endTime;
    }

    public void setEndTime(long endTime) {
        this.endTime = endTime;
    }

    public ArrayList<Integer> getSubMessageTypes() {
        return this.subMessageTypes;
    }

    public void setSubMessageTypes(ArrayList<Integer> subMessageTypes) {
        this.subMessageTypes = subMessageTypes;
    }
}
