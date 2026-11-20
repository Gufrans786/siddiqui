package im.zego.zim.internal.generated;

final class ZIMGenUserRule {
    boolean IsNullFromJava;
    ZIMGenUserOfflinePushRule OfflinePushRule;

    public ZIMGenUserRule() {
    }

    public ZIMGenUserRule(ZIMGenUserOfflinePushRule offlinePushRule, boolean isNullFromJava) {
        this.OfflinePushRule = offlinePushRule;
        this.IsNullFromJava = isNullFromJava;
    }

    public ZIMGenUserOfflinePushRule getOfflinePushRule() {
        return this.OfflinePushRule;
    }

    public void setOfflinePushRule(ZIMGenUserOfflinePushRule offlinePushRule) {
        this.OfflinePushRule = offlinePushRule;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenUserRule{OfflinePushRule=" + this.OfflinePushRule + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
