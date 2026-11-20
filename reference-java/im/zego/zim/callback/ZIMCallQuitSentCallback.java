package im.zego.zim.callback;

import im.zego.zim.entity.ZIMCallQuitSentInfo;
import im.zego.zim.entity.ZIMError;

public interface ZIMCallQuitSentCallback {
    void onCallQuitSent(String callID, ZIMCallQuitSentInfo info, ZIMError errorInfo);
}
