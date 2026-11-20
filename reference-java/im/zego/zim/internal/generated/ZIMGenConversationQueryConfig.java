package im.zego.zim.internal.generated;

public final class ZIMGenConversationQueryConfig {
    int Count;
    boolean IsNullFromJava;
    ZIMGenConversation NextConversation;

    public ZIMGenConversationQueryConfig() {
    }

    public ZIMGenConversationQueryConfig(ZIMGenConversation nextConversation, int count, boolean isNullFromJava) {
        this.NextConversation = nextConversation;
        this.Count = count;
        this.IsNullFromJava = isNullFromJava;
    }

    public ZIMGenConversation getNextConversation() {
        return this.NextConversation;
    }

    public void setNextConversation(ZIMGenConversation nextConversation) {
        this.NextConversation = nextConversation;
    }

    public int getCount() {
        return this.Count;
    }

    public void setCount(int count) {
        this.Count = count;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenConversationQueryConfig{NextConversation=" + this.NextConversation + ",Count=" + this.Count + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
