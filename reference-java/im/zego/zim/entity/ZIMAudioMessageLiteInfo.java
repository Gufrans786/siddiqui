package im.zego.zim.entity;

import im.zego.zim.enums.ZIMMessageType;

public class ZIMAudioMessageLiteInfo extends ZIMMediaMessageLiteInfo {
    public long audioDuration;

    public ZIMAudioMessageLiteInfo() {
        this.type = ZIMMessageType.AUDIO;
    }

    @Override
    public String toString() {
        return super.toString() + "ZIMAudioMessageLiteInfo{audioDuration='" + this.audioDuration + "'}";
    }
}
