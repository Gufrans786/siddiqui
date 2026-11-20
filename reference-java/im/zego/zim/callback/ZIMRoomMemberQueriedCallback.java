package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMUserInfo;
import java.util.ArrayList;

public interface ZIMRoomMemberQueriedCallback {
    void onRoomMemberQueried(String roomID, ArrayList<ZIMUserInfo> memberList, String nextFlag, ZIMError errorInfo);
}
