package im.zego.zim.entity;

import im.zego.zim.enums.ZIMMessageType;
import java.util.ArrayList;

public class ZIMCombineMessage extends ZIMMessage {
    private String combineID;
    public ArrayList<ZIMMessage> messageList;
    public String summary;
    public String title;

    public ZIMCombineMessage(String title, String summary, ArrayList<ZIMMessage> messageList) {
        super(ZIMMessageType.COMBINE);
        this.title = title;
        this.summary = summary;
        this.messageList = messageList;
    }

    public String getCombineID() {
        return this.combineID;
    }

    @Override
    public String toString() {
        return super.toString() + "ZIMCombineMessage{title='" + this.title + "', summary='" + this.summary + "', messageList=" + this.messageList + ", combineID='" + this.combineID + "'}";
    }
}
