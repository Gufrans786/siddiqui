package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMFriendInfo;

public interface ZIMFriendApplicationAcceptedCallback {
    void onFriendApplicationAccepted(ZIMFriendInfo friendInfo, ZIMError errorInfo);
}
