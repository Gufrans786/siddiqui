package im.zego.zim.internal.generated;

final class ZIMGenConversationChangeInfo {
    ZIMGenConversation Conversation;
    int Event;

    public ZIMGenConversationChangeInfo() {
    }

    public ZIMGenConversationChangeInfo(ZIMGenConversation conversation, int event) {
        this.Conversation = conversation;
        this.Event = event;
    }

    public ZIMGenConversation getConversation() {
        return this.Conversation;
    }

    public void setConversation(ZIMGenConversation conversation) {
        this.Conversation = conversation;
    }

    public int getEvent() {
        return this.Event;
    }

    public void setEvent(int event) {
        this.Event = event;
    }

    public String toString() {
        return "ZIMGenConversationChangeInfo{Conversation=" + this.Conversation + ",Event=" + this.Event + "}";
    }
}
