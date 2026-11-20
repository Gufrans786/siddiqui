package im.zego.zim.entity;

import java.util.ArrayList;

public class ZIMGroupSearchInfo {
    public ZIMGroupInfo groupInfo;
    public ArrayList<ZIMGroupMemberInfo> userList = new ArrayList<>();

    public String toString() {
        return "ZIMGroupSearchInfo{groupInfo=" + this.groupInfo + ", userList=" + this.userList + '}';
    }
}
