package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMFriendInfo;

public interface ZIMFriendAddedCallback {
    void onFriendAddedCallback(ZIMFriendInfo friendInfo, ZIMError errorInfo);
}
