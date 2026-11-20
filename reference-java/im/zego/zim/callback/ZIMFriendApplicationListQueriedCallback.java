package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMFriendApplicationInfo;
import java.util.ArrayList;

public interface ZIMFriendApplicationListQueriedCallback {
    void onFriendApplicationListQueried(ArrayList<ZIMFriendApplicationInfo> applicationList, int nextFlag, ZIMError errorInfo);
}
