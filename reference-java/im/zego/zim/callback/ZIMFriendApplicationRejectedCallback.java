package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMUserInfo;

public interface ZIMFriendApplicationRejectedCallback {
    void onFriendApplicationRejected(ZIMUserInfo userInfo, ZIMError errorInfo);
}
