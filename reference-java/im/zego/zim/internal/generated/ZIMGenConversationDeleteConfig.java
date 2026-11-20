package im.zego.zim.internal.generated;

public final class ZIMGenConversationDeleteConfig {
    boolean IsAlsoDeleteServerConversation;
    boolean IsNullFromJava;

    public ZIMGenConversationDeleteConfig() {
    }

    public ZIMGenConversationDeleteConfig(boolean isAlsoDeleteServerConversation, boolean isNullFromJava) {
        this.IsAlsoDeleteServerConversation = isAlsoDeleteServerConversation;
        this.IsNullFromJava = isNullFromJava;
    }

    public boolean getIsAlsoDeleteServerConversation() {
        return this.IsAlsoDeleteServerConversation;
    }

    public void setIsAlsoDeleteServerConversation(boolean isAlsoDeleteServerConversation) {
        this.IsAlsoDeleteServerConversation = isAlsoDeleteServerConversation;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenConversationDeleteConfig{IsAlsoDeleteServerConversation=" + this.IsAlsoDeleteServerConversation + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
