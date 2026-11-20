package im.zego.zim.entity;

public class ZIMSelfUserInfo {
    public ZIMUserRule userRule = new ZIMUserRule();
    public ZIMUserFullInfo userFullInfo = new ZIMUserFullInfo();
    public ZIMUserStatus userStatus = new ZIMUserStatus();

    public String toString() {
        return "ZIMSelfUserInfo{userRule=" + this.userRule.toString() + ", userFullInfo=" + this.userFullInfo.toString() + ", userStatus=" + this.userStatus.toString() + "}";
    }
}
