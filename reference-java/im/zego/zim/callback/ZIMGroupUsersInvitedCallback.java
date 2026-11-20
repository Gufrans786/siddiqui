package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMErrorUserInfo;
import im.zego.zim.entity.ZIMGroupMemberInfo;
import java.util.ArrayList;

public interface ZIMGroupUsersInvitedCallback {
    void onGroupUsersInvited(String groupID, ArrayList<ZIMGroupMemberInfo> userList, ArrayList<ZIMErrorUserInfo> errorUserList, ZIMError errorInfo);
}
