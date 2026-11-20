package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;

public interface ZIMRoomLeftCallback {
    void onRoomLeft(String roomID, ZIMError errorInfo);
}
