package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;

public interface ZIMLoggedInCallback {
    void onLoggedIn(ZIMError errorInfo);
}
