package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;

public interface ZIMGroupLeftCallback {
    void onGroupLeft(String groupID, ZIMError errorInfo);
}
