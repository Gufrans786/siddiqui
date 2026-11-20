package im.zego.zim.entity;

import im.zego.zim.enums.ZIMMessageType;
import java.util.ArrayList;

public class ZIMMultipleMessageLiteInfo extends ZIMMessageLiteInfo {
    public ArrayList<ZIMMessageLiteInfo> messageInfoList = new ArrayList<>();

    public ZIMMultipleMessageLiteInfo() {
        this.type = ZIMMessageType.MULTIPLE;
    }

    @Override
    public String toString() {
        return super.toString() + "ZIMMultipleMessageLiteInfo{messageInfoList='" + this.messageInfoList.toString() + "'}";
    }
}
