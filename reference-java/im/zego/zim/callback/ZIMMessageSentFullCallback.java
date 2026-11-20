package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMMediaMessage;
import im.zego.zim.entity.ZIMMessage;
import im.zego.zim.entity.ZIMMultipleMessage;

public interface ZIMMessageSentFullCallback {
    void onMediaUploadingProgress(ZIMMediaMessage message, long currentFileSize, long totalFileSize);

    void onMessageAttached(ZIMMessage message);

    void onMessageSent(ZIMMessage message, ZIMError errorInfo);

    void onMultipleMediaUploadingProgress(ZIMMultipleMessage message, long currentFileSize, long totalFileSize, int messageInfoIndex, long currentIndexFileSize, long totalIndexFileSize);
}
