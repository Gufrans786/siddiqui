package im.zego.zim.internal.generated;

import java.util.ArrayList;

public final class ZIMGenConversationTotalUnreadCountQueryConfig {
    ArrayList<Integer> ConversationTypes;
    boolean IsNullFromJava;
    ArrayList<Integer> Marks;

    public ZIMGenConversationTotalUnreadCountQueryConfig() {
    }

    public ZIMGenConversationTotalUnreadCountQueryConfig(ArrayList<Integer> marks, ArrayList<Integer> conversationTypes, boolean isNullFromJava) {
        this.Marks = marks;
        this.ConversationTypes = conversationTypes;
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

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenConversationTotalUnreadCountQueryConfig{Marks=" + this.Marks + ",ConversationTypes=" + this.ConversationTypes + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
