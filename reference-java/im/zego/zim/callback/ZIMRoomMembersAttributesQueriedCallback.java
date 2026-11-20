package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMRoomMemberAttributesInfo;
import java.util.ArrayList;

public interface ZIMRoomMembersAttributesQueriedCallback {
    void onRoomMembersAttributesQueried(String roomID, ArrayList<ZIMRoomMemberAttributesInfo> infos, ZIMError errorInfo);
}
