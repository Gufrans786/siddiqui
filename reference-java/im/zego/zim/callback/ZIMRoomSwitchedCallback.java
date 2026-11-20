package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMRoomFullInfo;

public interface ZIMRoomSwitchedCallback {
    void onRoomSwitched(ZIMRoomFullInfo roomInfo, ZIMError errorInfo);
}
