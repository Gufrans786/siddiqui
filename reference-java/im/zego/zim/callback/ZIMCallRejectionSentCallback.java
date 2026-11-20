package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;

public interface ZIMCallRejectionSentCallback {
    void onCallRejectionSent(String callID, ZIMError errorInfo);
}
