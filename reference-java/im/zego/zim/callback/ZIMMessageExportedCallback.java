package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;

public interface ZIMMessageExportedCallback {
    void onMessageExported(ZIMError errorInfo);

    void onMessageExportingProgress(long importedMessageCount, long totalMessageCount);
}
