package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMMessage;
import java.util.ArrayList;

public interface ZIMPinnedMessageListQueriedCallback {
    void onPinnedMessageListQueried(ArrayList<ZIMMessage> messageList, ZIMError errorInfo);
}
