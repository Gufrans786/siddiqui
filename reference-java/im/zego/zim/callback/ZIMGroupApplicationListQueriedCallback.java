package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMGroupApplicationInfo;
import java.util.ArrayList;

public interface ZIMGroupApplicationListQueriedCallback {
    void onGroupApplicationListQueried(ArrayList<ZIMGroupApplicationInfo> applicationList, int nextFlag, ZIMError errorInfo);
}
