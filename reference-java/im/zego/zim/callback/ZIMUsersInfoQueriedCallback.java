package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMErrorUserInfo;
import im.zego.zim.entity.ZIMUserFullInfo;
import java.util.ArrayList;

public interface ZIMUsersInfoQueriedCallback {
    void onUsersInfoQueried(ArrayList<ZIMUserFullInfo> userList, ArrayList<ZIMErrorUserInfo> errorUserList, ZIMError errorInfo);
}
