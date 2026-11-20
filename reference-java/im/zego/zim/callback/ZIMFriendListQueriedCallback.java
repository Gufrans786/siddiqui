package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMFriendInfo;
import java.util.ArrayList;

public interface ZIMFriendListQueriedCallback {
    void onFriendListQueried(ArrayList<ZIMFriendInfo> friendList, int nextFlag, ZIMError errorInfo);
}
