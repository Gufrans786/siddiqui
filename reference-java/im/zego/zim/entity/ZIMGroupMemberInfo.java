package im.zego.zim.entity;

public class ZIMGroupMemberInfo extends ZIMUserInfo {
    public ZIMGroupEnterInfo groupEnterInfo;

    @Deprecated
    public String memberAvatarUrl;
    public String memberNickname;
    public int memberRole;
    public long muteExpiredTime;

    @Override
    public String toString() {
        return super.toString() + "ZIMGroupMemberInfo{memberNickname='" + this.memberNickname + "', memberRole=" + this.memberRole + ", memberAvatarUrl='" + this.memberAvatarUrl + "', muteExpiredTime" + this.muteExpiredTime + '}';
    }
}
