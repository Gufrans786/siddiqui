package im.zego.zim.internal.generated;

public final class ZIMGenMessageDeleteConfig {
    boolean IsAlsoDeleteServerMessage;
    boolean IsNullFromJava;

    public ZIMGenMessageDeleteConfig() {
    }

    public ZIMGenMessageDeleteConfig(boolean isAlsoDeleteServerMessage, boolean isNullFromJava) {
        this.IsAlsoDeleteServerMessage = isAlsoDeleteServerMessage;
        this.IsNullFromJava = isNullFromJava;
    }

    public boolean getIsAlsoDeleteServerMessage() {
        return this.IsAlsoDeleteServerMessage;
    }

    public void setIsAlsoDeleteServerMessage(boolean isAlsoDeleteServerMessage) {
        this.IsAlsoDeleteServerMessage = isAlsoDeleteServerMessage;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenMessageDeleteConfig{IsAlsoDeleteServerMessage=" + this.IsAlsoDeleteServerMessage + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
