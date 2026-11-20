package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMGroupMemberInfo;
import java.util.ArrayList;

public interface ZIMGroupMemberMutedListQueriedCallback {
    void onGroupMemberListQueried(String groupID, long nextFlag, ArrayList<ZIMGroupMemberInfo> userList, ZIMError errorInfo);
}
