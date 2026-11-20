package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMMessage;
import im.zego.zim.entity.ZIMMessageRootRepliedInfo;
import java.util.ArrayList;

public interface ZIMMessageRepliedListQueriedCallback {
    void onMessageRepliedListQueried(ArrayList<ZIMMessage> messageList, long nextFlag, ZIMMessageRootRepliedInfo rootRepliedInfo, ZIMError errorInfo);
}
