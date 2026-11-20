package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMFriendInfo;

public interface ZIMFriendAliasUpdatedCallback {
    void onFriendAliasUpdated(ZIMFriendInfo friendInfo, ZIMError errorInfo);
}
