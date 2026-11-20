package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMFriendInfo;

public interface ZIMFriendAttributesUpdatedCallback {
    void onFriendAttributesUpdated(ZIMFriendInfo friendInfo, ZIMError errorInfo);
}
