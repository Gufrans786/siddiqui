package im.zego.zim.entity;

public class ZIMMediaMessageLiteInfo extends ZIMMessageLiteInfo {
    public long fileSize = 0;
    public String fileName = "";
    public String fileLocalPath = "";
    public String fileDownloadUrl = "";

    @Override
    public String toString() {
        return super.toString() + "ZIMMediaMessageLiteInfo{fileSize='" + this.fileSize + "'fileName='" + this.fileName + "'fileDownloadUrl='" + this.fileDownloadUrl + "'fileLocalPath='" + this.fileLocalPath + "'}";
    }
}
