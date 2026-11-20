package im.zego.zim.entity;

import im.zego.zim.enums.ZIMMessageType;

public class ZIMCustomMessageLiteInfo extends ZIMMessageLiteInfo {
    public String message;
    public String searchedContent;
    public int subType;

    public ZIMCustomMessageLiteInfo() {
        this.type = ZIMMessageType.CUSTOM;
        this.message = "";
        this.searchedContent = "";
    }

    @Override
    public String toString() {
        return super.toString() + "ZIMMessageLiteInfo{subType='" + this.subType + "'message='" + this.message + "'searchedContent='" + this.searchedContent + "'type='" + this.type.name() + "'}";
    }
}
