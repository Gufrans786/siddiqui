package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMErrorUserInfo;
import im.zego.zim.entity.ZIMUserStatus;
import java.util.ArrayList;

public interface ZIMUsersStatusQueriedCallback {
    void onUsersStatusQueried(ArrayList<ZIMUserStatus> userStatusList, ArrayList<ZIMErrorUserInfo> errorUserList, ZIMError errorInfo);
}
