package im.zego.zim.entity;

import im.zego.zim.enums.ZIMMessageOrder;
import im.zego.zim.enums.ZIMMessageType;
import java.util.ArrayList;
import java.util.List;

public class ZIMMessageSearchConfig {
    public int count;
    public ZIMMessage nextMessage;
    public ZIMMessageOrder order;
    public ArrayList<String> keywords = new ArrayList<>();
    public ArrayList<ZIMMessageType> messageTypes = new ArrayList<>();
    public ArrayList<String> senderUserIDs = new ArrayList<>();
    public ArrayList<Integer> subMessageTypes = new ArrayList<>();
    public long startTime = 0;
    public long endTime = 0;

    public ZIMMessage getNextMessage() {
        return this.nextMessage;
    }

    public void setNextMessage(ZIMMessage nextMessage) {
        this.nextMessage = nextMessage;
    }

    public int getCount() {
        return this.count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public ZIMMessageOrder getOrder() {
        return this.order;
    }

    public void setOrder(ZIMMessageOrder order) {
        this.order = order;
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

    public List<String> getSenderUserIDs() {
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
