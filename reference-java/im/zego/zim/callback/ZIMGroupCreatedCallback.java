package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMErrorUserInfo;
import im.zego.zim.entity.ZIMGroupFullInfo;
import im.zego.zim.entity.ZIMGroupMemberInfo;
import java.util.ArrayList;

public interface ZIMGroupCreatedCallback {
    void onGroupCreated(ZIMGroupFullInfo groupInfo, ArrayList<ZIMGroupMemberInfo> userList, ArrayList<ZIMErrorUserInfo> errorUserList, ZIMError errorInfo);
}
