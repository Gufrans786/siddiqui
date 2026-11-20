package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;

public interface ZIMBlacklistCheckedCallback {
    void onBlacklistChecked(boolean isUserInBlacklist, ZIMError errorInfo);
}
