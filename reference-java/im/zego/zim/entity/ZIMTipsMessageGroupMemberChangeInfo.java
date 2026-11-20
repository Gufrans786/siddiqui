package im.zego.zim.entity;

public class ZIMTipsMessageGroupMemberChangeInfo extends ZIMTipsMessageChangeInfo {
    public ZIMGroupMemberSimpleInfo groupNewOwner;
    public int memberRole;
    public long muteExpiredTime;

    @Override
    public String toString() {
        return "ZIMTipsMessageGroupMemberChangeInfo{type=" + this.type + ", memberRole=" + this.memberRole + ", muteExpiredTime=" + this.muteExpiredTime + '}';
    }
}
