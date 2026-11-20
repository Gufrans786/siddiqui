package im.zego.zim.callback;

import im.zego.zim.entity.ZIMConversationBaseInfo;
import im.zego.zim.entity.ZIMError;
import java.util.ArrayList;

public interface ZIMConversationMarkSetCallback {
    void onConversationMarkSet(ArrayList<ZIMConversationBaseInfo> failedConversationInfos, ZIMError errorInfo);
}
