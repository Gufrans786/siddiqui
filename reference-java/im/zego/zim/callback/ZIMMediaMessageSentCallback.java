package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMMediaMessage;

public interface ZIMMediaMessageSentCallback {
    void onMediaUploadingProgress(ZIMMediaMessage message, long currentFileSize, long totalFileSize);

    void onMessageAttached(ZIMMediaMessage message);

    void onMessageSent(ZIMMediaMessage message, ZIMError errorInfo);
}
