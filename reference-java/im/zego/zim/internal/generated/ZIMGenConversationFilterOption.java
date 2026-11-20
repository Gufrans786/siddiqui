package im.zego.zim.internal.generated;

import java.util.ArrayList;

public final class ZIMGenConversationFilterOption {
    ArrayList<Integer> ConversationTypes;
    boolean IsNullFromJava;
    boolean IsOnlyUnreadConversation;
    ArrayList<Integer> Marks;
    int PinnedFilter;

    public ZIMGenConversationFilterOption() {
    }

    public ZIMGenConversationFilterOption(ArrayList<Integer> marks, ArrayList<Integer> conversationTypes, boolean isOnlyUnreadConversation, int pinnedFilter, boolean isNullFromJava) {
        this.Marks = marks;
        this.ConversationTypes = conversationTypes;
        this.IsOnlyUnreadConversation = isOnlyUnreadConversation;
        this.PinnedFilter = pinnedFilter;
        this.IsNullFromJava = isNullFromJava;
    }

    public ArrayList<Integer> getMarks() {
        return this.Marks;
    }

    public void setMarks(ArrayList<Integer> marks) {
        this.Marks = marks;
    }

    public ArrayList<Integer> getConversationTypes() {
        return this.ConversationTypes;
    }

    public void setConversationTypes(ArrayList<Integer> conversationTypes) {
        this.ConversationTypes = conversationTypes;
    }

    public boolean getIsOnlyUnreadConversation() {
        return this.IsOnlyUnreadConversation;
    }

    public void setIsOnlyUnreadConversation(boolean isOnlyUnreadConversation) {
        this.IsOnlyUnreadConversation = isOnlyUnreadConversation;
    }

    public int getPinnedFilter() {
        return this.PinnedFilter;
    }

    public void setPinnedFilter(int pinnedFilter) {
        this.PinnedFilter = pinnedFilter;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenConversationFilterOption{Marks=" + this.Marks + ",ConversationTypes=" + this.ConversationTypes + ",IsOnlyUnreadConversation=" + this.IsOnlyUnreadConversation + ",PinnedFilter=" + this.PinnedFilter + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
