package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMErrorUserInfo;
import java.util.ArrayList;

public interface ZIMBlacklistUsersAddedCallback {
    void onBlacklistUsersAdded(ArrayList<ZIMErrorUserInfo> errorUserList, ZIMError errorInfo);
}
