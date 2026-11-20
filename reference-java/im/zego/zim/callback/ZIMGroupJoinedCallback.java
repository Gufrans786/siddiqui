package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMGroupFullInfo;

public interface ZIMGroupJoinedCallback {
    void onGroupJoined(ZIMGroupFullInfo groupInfo, ZIMError errorInfo);
}
