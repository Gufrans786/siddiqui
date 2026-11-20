package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import java.util.ArrayList;

public interface ZIMRoomAllLeftCallback {
    void onRoomAllLeft(ArrayList<String> roomIDs, ZIMError errorInfo);
}
