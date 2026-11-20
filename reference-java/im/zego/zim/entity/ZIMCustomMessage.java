package im.zego.zim.entity;

import im.zego.zim.enums.ZIMMessageType;

public class ZIMCustomMessage extends ZIMMessage {
    public String message;
    public String searchedContent;
    public int subType;

    public ZIMCustomMessage(String message, int subType) {
        super(ZIMMessageType.CUSTOM);
        this.searchedContent = "";
        this.message = message;
        this.subType = subType;
    }

    @Override
    public String toString() {
        return super.toString() + "ZIMCustomMessage{message='" + this.message + "', searchedContent='" + this.searchedContent + "', subType=" + this.subType + '}';
    }
}
