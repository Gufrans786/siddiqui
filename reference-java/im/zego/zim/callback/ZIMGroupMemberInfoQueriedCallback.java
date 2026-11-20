package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMGroupMemberInfo;

public interface ZIMGroupMemberInfoQueriedCallback {
    void onGroupMemberInfoQueried(String groupID, ZIMGroupMemberInfo userInfo, ZIMError errorInfo);
}
