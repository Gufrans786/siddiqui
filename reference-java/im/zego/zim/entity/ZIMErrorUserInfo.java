package im.zego.zim.entity;

public class ZIMErrorUserInfo {
    public int reason;
    public String userID;

    public String toString() {
        return "ZIMErrorUserInfo{userID='" + this.userID + "', reason=" + this.reason + '}';
    }
}
