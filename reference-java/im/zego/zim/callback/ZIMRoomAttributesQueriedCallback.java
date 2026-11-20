package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import java.util.HashMap;

public interface ZIMRoomAttributesQueriedCallback {
    void onRoomAttributesQueried(String roomID, HashMap<String, String> roomAttributes, ZIMError errorInfo);
}
