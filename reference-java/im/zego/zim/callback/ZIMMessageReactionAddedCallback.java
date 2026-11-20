package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMMessageReaction;

public interface ZIMMessageReactionAddedCallback {
    void onMessageReactionAdded(ZIMMessageReaction reaction, ZIMError error);
}
