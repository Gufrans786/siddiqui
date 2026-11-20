package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMMessage;
import im.zego.zim.entity.ZIMMessageReactionUserFullInfo;
import java.util.ArrayList;

public interface ZIMMessageReactionUserListQueriedCallback {
    void onMessageReactionUserListQueried(ZIMMessage message, ArrayList<ZIMMessageReactionUserFullInfo> userInfoList, String reactionType, long nextFlag, int totalCount, ZIMError error);
}
