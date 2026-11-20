package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;

public interface ZIMGroupNoticeUpdatedCallback {
    void onGroupNoticeUpdated(String groupID, String groupNotice, ZIMError errorInfo);
}
