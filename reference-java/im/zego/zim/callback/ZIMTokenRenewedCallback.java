package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;

public interface ZIMTokenRenewedCallback {
    void onTokenRenewed(String token, ZIMError errorInfo);
}
