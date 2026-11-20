package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMErrorUserInfo;
import java.util.ArrayList;

public interface ZIMGroupInviteApplicationsSentCallback {
    void onGroupInviteApplicationsSent(String groupID, ArrayList<ZIMErrorUserInfo> errorUserList, ZIMError errorInfo);
}
