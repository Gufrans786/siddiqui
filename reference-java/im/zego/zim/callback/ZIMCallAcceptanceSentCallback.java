package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;

public interface ZIMCallAcceptanceSentCallback {
    void onCallAcceptanceSent(String callID, ZIMError errorInfo);
}
