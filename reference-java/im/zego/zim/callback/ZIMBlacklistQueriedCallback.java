package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMUserInfo;
import java.util.ArrayList;

public interface ZIMBlacklistQueriedCallback {
    void onBlacklistQueried(ArrayList<ZIMUserInfo> blacklist, int nextFlag, ZIMError errorInfo);
}
