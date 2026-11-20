package im.zego.zim.entity;

public class ZIMGroupOperatedInfo {
    public String memberNickname;
    public int memberRole;
    public ZIMGroupMemberInfo operatedUserInfo;
    public String userID;
    public String userName;

    public String toString() {
        return "ZIMGroupOperatedInfo{operatedUserInfo=" + this.operatedUserInfo + ", userID='" + this.userID + "', userName='" + this.userName + "', memberNickname='" + this.memberNickname + "', memberRole=" + this.memberRole + '}';
    }
}
