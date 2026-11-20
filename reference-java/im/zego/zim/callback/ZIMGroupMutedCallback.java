package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMGroupMuteInfo;

public interface ZIMGroupMutedCallback {
    void onGroupMuted(String groupID, boolean isMute, ZIMGroupMuteInfo info, ZIMError errorInfo);
}
