package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMMessage;
import java.util.ArrayList;

public interface ZIMMessagesGlobalSearchedCallback {
    void onMessagesGlobalSearched(ArrayList<ZIMMessage> messageList, ZIMMessage nextMessage, ZIMError errorInfo);
}
