package im.zego.zim.entity;

public class ZIMGroupMemberSimpleInfo extends ZIMUserInfo {
    public String memberNickname;
    public int memberRole;

    @Override
    public String toString() {
        return "ZIMGroupMemberSimpleInfo{memberNickName='" + this.memberNickname + "', memberRole=" + this.memberRole + '}';
    }
}
