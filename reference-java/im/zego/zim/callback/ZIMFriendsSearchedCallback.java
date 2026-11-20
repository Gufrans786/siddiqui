package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMFriendInfo;
import java.util.ArrayList;

public interface ZIMFriendsSearchedCallback {
    void onFriendsSearched(ArrayList<ZIMFriendInfo> friendInfos, int nextFlag, ZIMError errorInfo);
}
