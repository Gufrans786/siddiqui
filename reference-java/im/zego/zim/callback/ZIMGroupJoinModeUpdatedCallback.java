package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.enums.ZIMGroupJoinMode;

public interface ZIMGroupJoinModeUpdatedCallback {
    void onGroupJoinModeUpdated(String groupID, ZIMGroupJoinMode mode, ZIMError errorInfo);
}
