package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMSelfUserInfo;

public interface ZIMSelfUserInfoQueriedCallback {
    void onSelfUserInfoQueried(ZIMSelfUserInfo selfUserInfo, ZIMError errorInfo);
}
