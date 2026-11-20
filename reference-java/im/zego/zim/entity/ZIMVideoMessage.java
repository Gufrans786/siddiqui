package im.zego.zim.entity;

import im.zego.zim.enums.ZIMMessageType;

public class ZIMVideoMessage extends ZIMMediaMessage {
    private long videoDuration;
    private String videoFirstFrameDownloadUrl;
    private int videoFirstFrameHeight;
    private String videoFirstFrameLocalPath;
    private int videoFirstFrameWidth;

    public ZIMVideoMessage(String fileLocalPath, long videoDuration) {
        super(ZIMMessageType.VIDEO, fileLocalPath);
        this.videoDuration = videoDuration;
        this.videoFirstFrameDownloadUrl = "";
        this.videoFirstFrameLocalPath = "";
        this.videoFirstFrameWidth = 0;
        this.videoFirstFrameHeight = 0;
    }

    public void setVideoFirstFrameDownloadUrl(String videoFirstFrameDownloadUrl) {
        this.videoFirstFrameDownloadUrl = videoFirstFrameDownloadUrl;
    }

    public void setVideoDuration(long videoDuration) {
        this.videoDuration = videoDuration;
    }

    public long getVideoDuration() {
        return this.videoDuration;
    }

    public String getVideoFirstFrameLocalPath() {
        return this.videoFirstFrameLocalPath;
    }

    public String getVideoFirstFrameDownloadUrl() {
        return this.videoFirstFrameDownloadUrl;
    }

    public int getVideoFirstFrameWidth() {
        return this.videoFirstFrameWidth;
    }

    public void setVideoFirstFrameWidth(int videoFirstFrameWidth) {
        this.videoFirstFrameWidth = videoFirstFrameWidth;
    }

    public int getVideoFirstFrameHeight() {
        return this.videoFirstFrameHeight;
    }

    public void setVideoFirstFrameHeight(int videoFirstFrameHeight) {
        this.videoFirstFrameHeight = videoFirstFrameHeight;
    }

    @Override
    public String toString() {
        return super.toString() + "ZIMVideoMessage{videoDuration=" + this.videoDuration + ", videoFirstFrameLocalPath='" + this.videoFirstFrameLocalPath + "', videoFirstFrameDownloadUrl='" + this.videoFirstFrameDownloadUrl + "', videoFirstFrameWidth=" + this.videoFirstFrameWidth + ", videoFirstFrameHeight=" + this.videoFirstFrameHeight + '}';
    }
}
