package im.zego.zim.callback;

import im.zego.zim.entity.ZIMCallInfo;
import im.zego.zim.entity.ZIMError;
import java.util.ArrayList;

public interface ZIMCallInvitationListQueriedCallback {
    void onCallInvitationListQueried(ArrayList<ZIMCallInfo> callList, long nextFlag, ZIMError errorInfo);
}
