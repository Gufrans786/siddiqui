package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMFriendApplicationInfo;

public interface ZIMFriendApplicationSentCallback {
    void onFriendApplicationSentCallback(ZIMFriendApplicationInfo applicationInfo, ZIMError errorInfo);
}
