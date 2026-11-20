package im.zego.zim.entity;

import im.zego.zim.enums.ZIMMessageType;
import java.util.ArrayList;

public class ZIMMultipleMessage extends ZIMMessage {
    public ArrayList<Integer> failedIndexList;
    private ArrayList<ZIMMessageLiteInfo> messageInfoList;

    public ZIMMultipleMessage() {
        super(ZIMMessageType.MULTIPLE);
        this.messageInfoList = new ArrayList<>();
        this.failedIndexList = new ArrayList<>();
    }

    public void setMessageInfoList(ArrayList<ZIMMessageLiteInfo> messageInfoList) {
        this.messageInfoList = messageInfoList;
    }

    public ArrayList<ZIMMessageLiteInfo> getMessageInfoList() {
        return this.messageInfoList;
    }

    public void setFailedIndexList(ArrayList<Integer> failedIndexList) {
        this.failedIndexList = failedIndexList;
    }

    public ArrayList<Integer> getFailedIndexList() {
        return this.failedIndexList;
    }

    @Override
    public String toString() {
        return super.toString() + "ZIMMultipleMessage{messageInfoList='" + this.messageInfoList.toString() + "'failedIndexList='" + this.failedIndexList.toString() + "'}";
    }
}
