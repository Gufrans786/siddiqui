package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import java.util.HashMap;

public interface ZIMGroupAttributesQueriedCallback {
    void onGroupAttributesQueried(String groupID, HashMap<String, String> groupAttributes, ZIMError errorInfo);
}
