package im.zego.zim.callback;

import im.zego.zim.entity.ZIMCallJoinSentInfo;
import im.zego.zim.entity.ZIMError;

public interface ZIMCallJoinSentCallback {
    void onCallJoinSent(String callID, ZIMCallJoinSentInfo info, ZIMError errorInfo);
}
