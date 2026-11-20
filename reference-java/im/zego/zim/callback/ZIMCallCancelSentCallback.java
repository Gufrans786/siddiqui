package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import java.util.ArrayList;

public interface ZIMCallCancelSentCallback {
    void onCallCancelSent(String callID, ArrayList<String> errorInvitees, ZIMError errorInfo);
}
