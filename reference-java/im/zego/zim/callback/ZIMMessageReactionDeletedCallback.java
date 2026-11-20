package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMMessageReaction;

public interface ZIMMessageReactionDeletedCallback {
    void onMessageReactionDeleted(ZIMMessageReaction reaction, ZIMError error);
}
