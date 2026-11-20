package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMUserOfflinePushRule;

public interface ZIMUserOfflinePushRuleUpdatedCallback {
    void onUserOfflinePushRuleInfoUpdated(ZIMUserOfflinePushRule offlinePushRule, ZIMError errorInfo);
}
