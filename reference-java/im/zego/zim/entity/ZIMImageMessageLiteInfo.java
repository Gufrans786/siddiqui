package im.zego.zim.entity;

import im.zego.zim.enums.ZIMMessageType;

public class ZIMImageMessageLiteInfo extends ZIMMediaMessageLiteInfo {
    public int originalImageWidth = 0;
    public int originalImageHeight = 0;
    public String thumbnailLocalPath = "";
    public String thumbnailDownloadUrl = "";
    public int thumbnailWidth = 0;
    public int thumbnailHeight = 0;
    public String largeImageLocalPath = "";
    public String largeImageDownloadUrl = "";
    public int largeImageWidth = 0;
    public int largeImageHeight = 0;

    public ZIMImageMessageLiteInfo() {
        this.type = ZIMMessageType.IMAGE;
    }

    @Override
    public String toString() {
        return super.toString() + "ZIMMessageLiteInfo{originalImageWidth='" + this.originalImageWidth + "'originalImageHeight='" + this.originalImageHeight + "'thumbnailLocalPath='" + this.thumbnailLocalPath + "'thumbnailWidth='" + this.thumbnailWidth + "'thumbnailHeight='" + this.thumbnailHeight + "'largeImageLocalPath='" + this.largeImageLocalPath + "'largeImageDownloadUrl='" + this.largeImageDownloadUrl + "'largeImageWidth='" + this.largeImageWidth + "'largeImageHeight='" + this.largeImageHeight + "'thumbnailDownloadUrl='" + this.thumbnailDownloadUrl + "'}";
    }
}
