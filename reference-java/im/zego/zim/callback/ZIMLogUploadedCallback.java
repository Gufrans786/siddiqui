package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;

public interface ZIMLogUploadedCallback {
    void onLogUploaded(ZIMError errorInfo);
}
