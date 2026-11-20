package im.zego.zim.entity;

public class ZIMUserFullInfo {
    public ZIMUserInfo baseInfo = new ZIMUserInfo();

    @Deprecated
    public String userAvatarUrl = "";
    public String extendedData = "";

    public String toString() {
        return "ZIMUserFullInfo{baseInfo=" + this.baseInfo + ", userAvatarUrl='" + this.userAvatarUrl + "', extendedData='" + this.extendedData + "'}";
    }
}
