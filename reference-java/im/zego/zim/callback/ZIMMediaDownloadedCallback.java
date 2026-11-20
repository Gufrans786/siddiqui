package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMMessage;

public interface ZIMMediaDownloadedCallback {
    void onMediaDownloaded(ZIMMessage message, ZIMError errorInfo);

    void onMediaDownloadingProgress(ZIMMessage message, long currentFileSize, long totalFileSize);
}
