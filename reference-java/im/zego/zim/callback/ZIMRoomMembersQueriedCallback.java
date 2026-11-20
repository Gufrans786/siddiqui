package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMErrorUserInfo;
import im.zego.zim.entity.ZIMRoomMemberInfo;
import java.util.ArrayList;

public interface ZIMRoomMembersQueriedCallback {
    void onRoomMembersQueried(String roomID, ArrayList<ZIMRoomMemberInfo> memberList, ArrayList<ZIMErrorUserInfo> errorUserList, ZIMError errorInfo);
}
