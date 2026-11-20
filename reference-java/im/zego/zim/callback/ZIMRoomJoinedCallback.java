package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMRoomFullInfo;

public interface ZIMRoomJoinedCallback {
    void onRoomJoined(ZIMRoomFullInfo roomInfo, ZIMError errorInfo);
}
