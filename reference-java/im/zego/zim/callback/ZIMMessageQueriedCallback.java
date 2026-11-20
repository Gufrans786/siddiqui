package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMMessage;
import im.zego.zim.enums.ZIMConversationType;
import java.util.ArrayList;

public interface ZIMMessageQueriedCallback {
    void onMessageQueried(String conversationID, ZIMConversationType conversationType, ArrayList<ZIMMessage> messageList, ZIMError errorInfo);
}
