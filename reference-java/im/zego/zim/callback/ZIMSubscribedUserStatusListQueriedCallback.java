package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMUserStatusSubscription;
import java.util.ArrayList;

public interface ZIMSubscribedUserStatusListQueriedCallback {
    void onSubscribedUserStatusListQueried(ArrayList<ZIMUserStatusSubscription> userStatusSubscriptionList, ZIMError errorInfo);
}
