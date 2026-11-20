package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;

public interface ZIMMessageImportedCallback {
    void onMessageImported(ZIMError errorInfo);

    void onMessageImportingProgress(long exportedMessageCount, long totalMessageCount);
}
