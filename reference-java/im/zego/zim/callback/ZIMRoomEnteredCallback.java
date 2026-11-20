package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMRoomFullInfo;

public interface ZIMRoomEnteredCallback {
    void onRoomEntered(ZIMRoomFullInfo roomInfo, ZIMError errorInfo);
}
