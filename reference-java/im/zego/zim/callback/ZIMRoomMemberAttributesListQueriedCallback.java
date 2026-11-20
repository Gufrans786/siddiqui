package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMRoomMemberAttributesInfo;
import java.util.ArrayList;

public interface ZIMRoomMemberAttributesListQueriedCallback {
    void onRoomMemberAttributesListQueried(String roomID, ArrayList<ZIMRoomMemberAttributesInfo> infos, String nextFlag, ZIMError errorInfo);
}
