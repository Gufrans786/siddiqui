package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMErrorUserInfo;
import im.zego.zim.entity.ZIMFriendInfo;
import java.util.ArrayList;

public interface ZIMFriendsInfoQueriedCallback {
    void onFriendsInfoQueried(ArrayList<ZIMFriendInfo> friendInfos, ArrayList<ZIMErrorUserInfo> errorUserList, ZIMError errorInfo);
}
