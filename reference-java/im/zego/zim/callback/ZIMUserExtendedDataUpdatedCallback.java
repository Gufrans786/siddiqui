package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;

public interface ZIMUserExtendedDataUpdatedCallback {
    void onUserExtendedDataUpdated(String extendedData, ZIMError errorInfo);
}
