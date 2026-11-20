package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;

public interface ZIMGroupDismissedCallback {
    void onGroupDismissed(String groupID, ZIMError errorInfo);
}
