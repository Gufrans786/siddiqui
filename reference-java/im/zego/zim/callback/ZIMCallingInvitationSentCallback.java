package im.zego.zim.callback;

import im.zego.zim.entity.ZIMCallingInvitationSentInfo;
import im.zego.zim.entity.ZIMError;

public interface ZIMCallingInvitationSentCallback {
    void onCallingInvitationSent(String callID, ZIMCallingInvitationSentInfo info, ZIMError errorInfo);
}
