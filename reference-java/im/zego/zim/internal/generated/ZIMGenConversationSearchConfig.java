package im.zego.zim.internal.generated;

import java.util.ArrayList;

public final class ZIMGenConversationSearchConfig {
    int ConversationMessageCount;
    long EndTime;
    boolean IsNullFromJava;
    ArrayList<String> Keywords;
    ArrayList<Integer> MessageTypes;
    int Mode;
    int NextFlag;
    ArrayList<String> SenderUserIDs;
    long StartTime;
    ArrayList<Integer> SubMessageTypes;
    int TotalConversationCount;

    public ZIMGenConversationSearchConfig() {
    }

    public ZIMGenConversationSearchConfig(int conversationMessageCount, int nextFlag, int totalConversationCount, int mode, ArrayList<String> keywords, ArrayList<Integer> subMessageTypes, ArrayList<Integer> messageTypes, ArrayList<String> senderUserIDs, long startTime, long endTime, boolean isNullFromJava) {
        this.ConversationMessageCount = conversationMessageCount;
        this.NextFlag = nextFlag;
        this.TotalConversationCount = totalConversationCount;
        this.Mode = mode;
        this.Keywords = keywords;
        this.SubMessageTypes = subMessageTypes;
        this.MessageTypes = messageTypes;
        this.SenderUserIDs = senderUserIDs;
        this.StartTime = startTime;
        this.EndTime = endTime;
        this.IsNullFromJava = isNullFromJava;
    }

    public int getConversationMessageCount() {
        return this.ConversationMessageCount;
    }

    public void setConversationMessageCount(int conversationMessageCount) {
        this.ConversationMessageCount = conversationMessageCount;
    }

    public int getNextFlag() {
        return this.NextFlag;
    }

    public void setNextFlag(int nextFlag) {
        this.NextFlag = nextFlag;
    }

    public int getTotalConversationCount() {
        return this.TotalConversationCount;
    }

    public void setTotalConversationCount(int totalConversationCount) {
        this.TotalConversationCount = totalConversationCount;
    }

    public int getMode() {
        return this.Mode;
    }

    public void setMode(int mode) {
        this.Mode = mode;
    }

    public ArrayList<String> getKeywords() {
        return this.Keywords;
    }

    public void setKeywords(ArrayList<String> keywords) {
        this.Keywords = keywords;
    }

    public ArrayList<Integer> getSubMessageTypes() {
        return this.SubMessageTypes;
    }

    public void setSubMessageTypes(ArrayList<Integer> subMessageTypes) {
        this.SubMessageTypes = subMessageTypes;
    }

    public ArrayList<Integer> getMessageTypes() {
        return this.MessageTypes;
    }

    public void setMessageTypes(ArrayList<Integer> messageTypes) {
        this.MessageTypes = messageTypes;
    }

    public ArrayList<String> getSenderUserIDs() {
        return this.SenderUserIDs;
    }

    public void setSenderUserIDs(ArrayList<String> senderUserIDs) {
        this.SenderUserIDs = senderUserIDs;
    }

    public long getStartTime() {
        return this.StartTime;
    }

    public void setStartTime(long startTime) {
        this.StartTime = startTime;
    }

    public long getEndTime() {
        return this.EndTime;
    }

    public void setEndTime(long endTime) {
        this.EndTime = endTime;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenConversationSearchConfig{ConversationMessageCount=" + this.ConversationMessageCount + ",NextFlag=" + this.NextFlag + ",TotalConversationCount=" + this.TotalConversationCount + ",Mode=" + this.Mode + ",Keywords=" + this.Keywords + ",SubMessageTypes=" + this.SubMessageTypes + ",MessageTypes=" + this.MessageTypes + ",SenderUserIDs=" + this.SenderUserIDs + ",StartTime=" + this.StartTime + ",EndTime=" + this.EndTime + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
