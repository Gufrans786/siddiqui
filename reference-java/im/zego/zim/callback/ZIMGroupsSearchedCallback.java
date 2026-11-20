package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMGroupSearchInfo;
import java.util.ArrayList;

public interface ZIMGroupsSearchedCallback {
    void onGroupsSearched(ArrayList<ZIMGroupSearchInfo> groupSearchInfoList, int nextFlag, ZIMError errorInfo);
}
