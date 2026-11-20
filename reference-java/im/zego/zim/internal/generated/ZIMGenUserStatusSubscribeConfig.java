package im.zego.zim.internal.generated;

public final class ZIMGenUserStatusSubscribeConfig {
    boolean IsNullFromJava;
    int SubscriptionDuration;

    public ZIMGenUserStatusSubscribeConfig() {
    }

    public ZIMGenUserStatusSubscribeConfig(int subscriptionDuration, boolean isNullFromJava) {
        this.SubscriptionDuration = subscriptionDuration;
        this.IsNullFromJava = isNullFromJava;
    }

    public int getSubscriptionDuration() {
        return this.SubscriptionDuration;
    }

    public void setSubscriptionDuration(int subscriptionDuration) {
        this.SubscriptionDuration = subscriptionDuration;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenUserStatusSubscribeConfig{SubscriptionDuration=" + this.SubscriptionDuration + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
