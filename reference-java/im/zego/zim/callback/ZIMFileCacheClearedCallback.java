package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;

public interface ZIMFileCacheClearedCallback {
    void onFileCacheCleared(ZIMError errorInfo);
}
