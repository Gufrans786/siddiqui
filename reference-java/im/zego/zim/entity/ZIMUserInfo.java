package im.zego.zim.entity;

import java.io.Serializable;

public class ZIMUserInfo implements Serializable {
    public String userID = "";
    public String userName = "";
    public String userAvatarUrl = "";
    public String userExtendedData = "";

    public String toString() {
        return "ZIMUserInfo{userID='" + this.userID + "', userName='" + this.userName + "', userAvatarUrl'" + this.userAvatarUrl + "', userExtendedData='" + this.userExtendedData + "'}";
    }
}
