package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;

public interface ZIMExperimentalAPICalledCallback {
    void onExperimentalAPICalled(String result, ZIMError errorInfo);
}
