package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;

public interface ZIMGroupMemberCountQueriedCallback {
    void onGroupMemberCountQueried(String groupID, int count, ZIMError errorInfo);
}
