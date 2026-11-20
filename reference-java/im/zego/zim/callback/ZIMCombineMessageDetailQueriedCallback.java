package im.zego.zim.callback;

import im.zego.zim.entity.ZIMCombineMessage;
import im.zego.zim.entity.ZIMError;

public interface ZIMCombineMessageDetailQueriedCallback {
    void onCombineMessageDetailQueried(ZIMCombineMessage message, ZIMError error);
}
