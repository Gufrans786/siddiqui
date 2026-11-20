package im.zego.zim.callback;

import im.zego.zim.entity.ZIMCallInvitationSentInfo;
import im.zego.zim.entity.ZIMError;

public interface ZIMCallInvitationSentCallback {
    void onCallInvitationSent(String callID, ZIMCallInvitationSentInfo info, ZIMError errorInfo);
}
