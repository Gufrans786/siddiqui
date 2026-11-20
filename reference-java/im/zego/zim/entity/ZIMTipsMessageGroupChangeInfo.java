package im.zego.zim.entity;

public class ZIMTipsMessageGroupChangeInfo extends ZIMTipsMessageChangeInfo {
    public String groupAvatarUrl;
    public int groupDataFlag;
    public ZIMGroupMuteInfo groupMutedInfo;
    public String groupName;
    public String groupNotice;

    @Override
    public String toString() {
        return "ZIMTipsMessageGroupChangeInfo{type=" + this.type + ", groupDataFlag=" + this.groupDataFlag + ", groupName='" + this.groupName + "', groupNotice='" + this.groupNotice + "', groupAvatarUrl='" + this.groupAvatarUrl + "', groupMutedInfo=" + this.groupMutedInfo + '}';
    }
}
