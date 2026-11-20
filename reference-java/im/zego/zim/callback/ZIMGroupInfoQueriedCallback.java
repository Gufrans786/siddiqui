package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMGroupFullInfo;

public interface ZIMGroupInfoQueriedCallback {
    void onGroupInfoQueried(ZIMGroupFullInfo groupInfo, ZIMError errorInfo);
}
