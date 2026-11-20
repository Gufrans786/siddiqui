package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;

public interface ZIMRoomAttributesBatchOperatedCallback {
    void onRoomAttributesBatchOperated(String roomID, ZIMError errorInfo);
}
