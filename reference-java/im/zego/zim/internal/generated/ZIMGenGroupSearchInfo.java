package im.zego.zim.internal.generated;

import java.util.ArrayList;

final class ZIMGenGroupSearchInfo {
    ZIMGenGroupInfo GroupInfo;
    ArrayList<ZIMGenGroupMemberInfo> UserList;

    public ZIMGenGroupSearchInfo() {
    }

    public ZIMGenGroupSearchInfo(ZIMGenGroupInfo groupInfo, ArrayList<ZIMGenGroupMemberInfo> userList) {
        this.GroupInfo = groupInfo;
        this.UserList = userList;
    }

    public ZIMGenGroupInfo getGroupInfo() {
        return this.GroupInfo;
    }

    public void setGroupInfo(ZIMGenGroupInfo groupInfo) {
        this.GroupInfo = groupInfo;
    }

    public ArrayList<ZIMGenGroupMemberInfo> getUserList() {
        return this.UserList;
    }

    public void setUserList(ArrayList<ZIMGenGroupMemberInfo> userList) {
        this.UserList = userList;
    }

    public String toString() {
        return "ZIMGenGroupSearchInfo{GroupInfo=" + this.GroupInfo + ",UserList=" + this.UserList + "}";
    }
}
