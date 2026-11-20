package im.zego.zim.internal.generated;

import java.util.ArrayList;

public final class ZIMGenMessageSearchConfig {
    int Count;
    long EndTime;
    boolean IsNullFromJava;
    ArrayList<String> Keywords;
    ArrayList<Integer> MessageTypes;
    ZIMGenMessage NextMessage;
    int Order;
    ArrayList<String> SenderUserIDs;
    long StartTime;
    ArrayList<Integer> SubMessageTypes;

    public ZIMGenMessageSearchConfig() {
    }

    public ZIMGenMessageSearchConfig(ZIMGenMessage nextMessage, int count, int order, ArrayList<String> keywords, ArrayList<Integer> messageTypes, ArrayList<Integer> subMessageTypes, ArrayList<String> senderUserIDs, long startTime, long endTime, boolean isNullFromJava) {
        this.NextMessage = nextMessage;
        this.Count = count;
        this.Order = order;
        this.Keywords = keywords;
        this.MessageTypes = messageTypes;
        this.SubMessageTypes = subMessageTypes;
        this.SenderUserIDs = senderUserIDs;
        this.StartTime = startTime;
        this.EndTime = endTime;
        this.IsNullFromJava = isNullFromJava;
    }

    public ZIMGenMessage getNextMessage() {
        return this.NextMessage;
    }

    public void setNextMessage(ZIMGenMessage nextMessage) {
        this.NextMessage = nextMessage;
    }

    public int getCount() {
        return this.Count;
    }

    public void setCount(int count) {
        this.Count = count;
    }

    public int getOrder() {
        return this.Order;
    }

    public void setOrder(int order) {
        this.Order = order;
    }

    public ArrayList<String> getKeywords() {
        return this.Keywords;
    }

    public void setKeywords(ArrayList<String> keywords) {
        this.Keywords = keywords;
    }

    public ArrayList<Integer> getMessageTypes() {
        return this.MessageTypes;
    }

    public void setMessageTypes(ArrayList<Integer> messageTypes) {
        this.MessageTypes = messageTypes;
    }

    public ArrayList<Integer> getSubMessageTypes() {
        return this.SubMessageTypes;
    }

    public void setSubMessageTypes(ArrayList<Integer> subMessageTypes) {
        this.SubMessageTypes = subMessageTypes;
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
        return "ZIMGenMessageSearchConfig{NextMessage=" + this.NextMessage + ",Count=" + this.Count + ",Order=" + this.Order + ",Keywords=" + this.Keywords + ",MessageTypes=" + this.MessageTypes + ",SubMessageTypes=" + this.SubMessageTypes + ",SenderUserIDs=" + this.SenderUserIDs + ",StartTime=" + this.StartTime + ",EndTime=" + this.EndTime + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
