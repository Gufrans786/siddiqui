package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.enums.ZIMConversationType;
import java.util.ArrayList;

public interface ZIMMessageReceiptsReadSentCallback {
    void onMessageReceiptsReadSent(String conversationID, ZIMConversationType conversationType, ArrayList<Long> errorMessageIDs, ZIMError errorInfo);
}
