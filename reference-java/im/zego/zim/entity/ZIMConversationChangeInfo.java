package im.zego.zim.entity;

import im.zego.zim.enums.ZIMConversationEvent;

public class ZIMConversationChangeInfo {
    public ZIMConversation conversation;
    public ZIMConversationEvent event;

    public String toString() {
        return "ZIMConversationChangeInfo{event=" + this.event + ", conversation=" + this.conversation + '}';
    }
}
