package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMRoomMemberAttributesOperatedInfo;
import java.util.ArrayList;

public interface ZIMRoomMembersAttributesOperatedCallback {
    void onRoomMembersAttributesOperated(String roomID, ArrayList<ZIMRoomMemberAttributesOperatedInfo> infos, ArrayList<String> errorUserList, ZIMError errorInfo);
}
