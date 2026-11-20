package im.zego.zim.entity;

import im.zego.zim.enums.ZIMMessageType;

public class ZIMVideoMessageLiteInfo extends ZIMMediaMessageLiteInfo {
    public long videoDuration = 0;
    public String videoFirstFrameDownloadUrl = "";
    public int videoFirstFrameWidth = 0;
    public int videoFirstFrameHeight = 0;
    public String videoFirstFrameLocalPath = "";

    public ZIMVideoMessageLiteInfo() {
        this.type = ZIMMessageType.VIDEO;
    }

    @Override
    public String toString() {
        return super.toString() + "ZIMVideoMessageLiteInfo{videoFirstFrameDownloadUrl='" + this.videoFirstFrameDownloadUrl + "'videoFirstFrameWidth='" + this.videoFirstFrameWidth + "'videoFirstFrameHeight='" + this.videoFirstFrameHeight + "'videoFirstFrameLocalPath='" + this.videoFirstFrameLocalPath + "'videoDuration='" + this.videoDuration + "'}";
    }
}
