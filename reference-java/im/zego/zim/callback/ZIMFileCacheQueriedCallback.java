package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMFileCacheInfo;

public interface ZIMFileCacheQueriedCallback {
    void onFileCacheQueried(ZIMFileCacheInfo fileCacheInfo, ZIMError errorInfo);
}
