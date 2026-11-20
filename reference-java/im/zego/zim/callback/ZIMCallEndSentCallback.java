package im.zego.zim.callback;

import im.zego.zim.entity.ZIMCallEndedSentInfo;
import im.zego.zim.entity.ZIMError;

public interface ZIMCallEndSentCallback {
    void onCallEndSent(String callID, ZIMCallEndedSentInfo info, ZIMError errorInfo);
}
