package im.zego.zim.entity;

import im.zego.zim.enums.ZIMMessageType;

public class ZIMMediaMessage extends ZIMMessage {
    private String fileDownloadUrl;
    private String fileLocalPath;
    private String fileName;
    private long fileSize;
    private String fileUID;

    public String getFileDownloadUrl() {
        return this.fileDownloadUrl;
    }

    public void setFileDownloadUrl(String fileDownloadUrl) {
        this.fileDownloadUrl = fileDownloadUrl;
    }

    public void setFileLocalPath(String fileLocalPath) {
        this.fileLocalPath = fileLocalPath;
    }

    public ZIMMediaMessage(ZIMMessageType type, String fileLocalPath) {
        super(type);
        this.fileLocalPath = fileLocalPath;
        this.fileDownloadUrl = "";
        this.fileName = "";
        this.fileUID = "";
        this.fileSize = 0L;
    }

    public String getFileLocalPath() {
        return this.fileLocalPath;
    }

    public String getFileUID() {
        return this.fileUID;
    }

    public String getFileName() {
        return this.fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public long getFileSize() {
        return this.fileSize;
    }

    @Override
    public String toString() {
        return super.toString() + "ZIMMediaMessage{fileLocalPath='" + this.fileLocalPath + "', fileUID='" + this.fileUID + "', fileDownloadUrl='" + this.fileDownloadUrl + "', fileName='" + this.fileName + "', fileSize=" + this.fileSize + '}';
    }
}
