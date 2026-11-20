package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMErrorUserInfo;
import java.util.ArrayList;

public interface ZIMGroupMemberKickedCallback {
    void onGroupMemberKicked(String groupID, ArrayList<String> kickedUserIDList, ArrayList<ZIMErrorUserInfo> errorUserList, ZIMError errorInfo);
}
