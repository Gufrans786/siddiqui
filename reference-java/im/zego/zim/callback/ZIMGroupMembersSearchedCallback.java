package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMGroupMemberInfo;
import java.util.ArrayList;

public interface ZIMGroupMembersSearchedCallback {
    void onGroupMembersSearched(String groupID, ArrayList<ZIMGroupMemberInfo> userList, int nextFlag, ZIMError errorInfo);
}
