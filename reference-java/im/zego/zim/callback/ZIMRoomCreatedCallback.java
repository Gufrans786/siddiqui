package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMRoomFullInfo;

public interface ZIMRoomCreatedCallback {
    void onRoomCreated(ZIMRoomFullInfo roomInfo, ZIMError errorInfo);
}
