package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;

public interface ZIMRoomOnlineMemberCountQueriedCallback {
    void onRoomOnlineMemberCountQueried(String roomID, int count, ZIMError errorInfo);
}
