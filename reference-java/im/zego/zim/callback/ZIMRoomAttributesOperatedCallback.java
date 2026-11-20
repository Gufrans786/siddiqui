package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import java.util.ArrayList;

public interface ZIMRoomAttributesOperatedCallback {
    void onRoomAttributesOperated(String roomID, ArrayList<String> errorKeys, ZIMError errorInfo);
}
