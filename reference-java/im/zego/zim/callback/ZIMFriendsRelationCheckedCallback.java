package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMErrorUserInfo;
import im.zego.zim.entity.ZIMFriendRelationInfo;
import java.util.ArrayList;

public interface ZIMFriendsRelationCheckedCallback {
    void onFriendsChecked(ArrayList<ZIMFriendRelationInfo> relationInfos, ArrayList<ZIMErrorUserInfo> errorUserList, ZIMError errorInfo);
}
