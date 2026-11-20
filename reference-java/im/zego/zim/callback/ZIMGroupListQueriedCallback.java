package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMGroup;
import java.util.ArrayList;

public interface ZIMGroupListQueriedCallback {
    void onGroupListQueried(ArrayList<ZIMGroup> groupList, long nextFlag, ZIMError errorInfo);
}
