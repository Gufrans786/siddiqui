package im.zego.zim.entity;

import im.zego.zim.enums.ZIMCallUserState;

public class ZIMCallUserInfo {
    public String extendedData;
    public ZIMCallUserState state;
    public String userID;

    public String toString() {
        return "ZIMCallUserInfo{userID='" + this.userID + "', state=" + this.state + ", extendedData='" + this.extendedData + "'}";
    }
}
