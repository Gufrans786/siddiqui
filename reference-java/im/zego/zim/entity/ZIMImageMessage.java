package im.zego.zim.entity;

import im.zego.zim.enums.ZIMMessageType;

public class ZIMImageMessage extends ZIMMediaMessage {
    private String largeImageDownloadUrl;
    private int largeImageHeight;
    private String largeImageLocalPath;
    private int largeImageWidth;
    private int originalImageHeight;
    private int originalImageWidth;
    private String thumbnailDownloadUrl;
    private int thumbnailHeight;
    private String thumbnailLocalPath;
    private int thumbnailWidth;

    public ZIMImageMessage(String fileLocalPath) {
        super(ZIMMessageType.IMAGE, fileLocalPath);
        this.largeImageDownloadUrl = "";
        this.largeImageLocalPath = "";
        this.thumbnailDownloadUrl = "";
        this.thumbnailLocalPath = "";
        this.originalImageWidth = 0;
        this.originalImageHeight = 0;
        this.largeImageWidth = 0;
        this.largeImageHeight = 0;
        this.thumbnailWidth = 0;
        this.thumbnailHeight = 0;
    }

    public String getThumbnailDownloadUrl() {
        return this.thumbnailDownloadUrl;
    }

    public void setThumbnailDownloadUrl(String thumbnailDownloadUrl) {
        this.thumbnailDownloadUrl = thumbnailDownloadUrl;
    }

    public String getLargeImageDownloadUrl() {
        return this.largeImageDownloadUrl;
    }

    public void setLargeImageDownloadUrl(String largeImageDownloadUrl) {
        this.largeImageDownloadUrl = largeImageDownloadUrl;
    }

    public String getThumbnailLocalPath() {
        return this.thumbnailLocalPath;
    }

    public String getLargeImageLocalPath() {
        return this.largeImageLocalPath;
    }

    public int getOriginalImageWidth() {
        return this.originalImageWidth;
    }

    public void setOriginalImageWidth(int originalImageWidth) {
        this.originalImageWidth = originalImageWidth;
    }

    public int getOriginalImageHeight() {
        return this.originalImageHeight;
    }

    public void setOriginalImageHeight(int originalImageHeight) {
        this.originalImageHeight = originalImageHeight;
    }

    public int getLargeImageWidth() {
        return this.largeImageWidth;
    }

    public void setLargeImageWidth(int largeImageWidth) {
        this.largeImageWidth = largeImageWidth;
    }

    public int getLargeImageHeight() {
        return this.largeImageHeight;
    }

    public void setLargeImageHeight(int largeImageHeight) {
        this.largeImageHeight = largeImageHeight;
    }

    public int getThumbnailWidth() {
        return this.thumbnailWidth;
    }

    public void setThumbnailWidth(int thumbnailWidth) {
        this.thumbnailWidth = thumbnailWidth;
    }

    public int getThumbnailHeight() {
        return this.thumbnailHeight;
    }

    public void setThumbnailHeight(int thumbnailHeight) {
        this.thumbnailHeight = thumbnailHeight;
    }

    @Override
    public String toString() {
        return super.toString() + "ZIMImageMessage{thumbnailLocalPath='" + this.thumbnailLocalPath + "', largeImageLocalPath='" + this.largeImageLocalPath + "', thumbnailDownloadUrl='" + this.thumbnailDownloadUrl + "', largeImageDownloadUrl='" + this.largeImageDownloadUrl + "', originalImageWidth=" + this.originalImageWidth + ", originalImageHeight=" + this.originalImageHeight + ", largeImageWidth=" + this.largeImageWidth + ", largeImageHeight=" + this.largeImageHeight + ", thumbnailWidth=" + this.thumbnailWidth + ", thumbnailHeight=" + this.thumbnailHeight + '}';
    }
}
