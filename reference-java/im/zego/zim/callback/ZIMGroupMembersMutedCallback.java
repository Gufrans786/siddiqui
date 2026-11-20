package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMErrorUserInfo;
import java.util.ArrayList;

public interface ZIMGroupMembersMutedCallback {
    void onGroupMembersMuted(String groupID, boolean isMute, int duration, ArrayList<String> mutedMemberIDs, ArrayList<ZIMErrorUserInfo> errorUserList, ZIMError errorInfo);
}
