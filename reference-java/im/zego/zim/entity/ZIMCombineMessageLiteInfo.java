package im.zego.zim.entity;

import im.zego.zim.enums.ZIMMessageType;

public class ZIMCombineMessageLiteInfo extends ZIMMessageLiteInfo {
    public String title = "";
    public String summary = "";

    public ZIMCombineMessageLiteInfo() {
        this.type = ZIMMessageType.COMBINE;
    }

    @Override
    public String toString() {
        return super.toString() + "ZIMMessageLiteInfo{title='" + this.title + "'summary='" + this.summary + "'type='" + this.type.name() + "'}";
    }
}
