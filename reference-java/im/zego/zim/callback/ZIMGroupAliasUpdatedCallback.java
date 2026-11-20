package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;

public interface ZIMGroupAliasUpdatedCallback {
    void onGroupAliasUpdated(String groupID, String groupAlias, ZIMError errorInfo);
}
