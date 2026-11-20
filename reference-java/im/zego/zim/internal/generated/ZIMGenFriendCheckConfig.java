package im.zego.zim.internal.generated;

public final class ZIMGenFriendCheckConfig {
    boolean IsNullFromJava;
    int Type;

    public ZIMGenFriendCheckConfig() {
    }

    public ZIMGenFriendCheckConfig(int type, boolean isNullFromJava) {
        this.Type = type;
        this.IsNullFromJava = isNullFromJava;
    }

    public int getType() {
        return this.Type;
    }

    public void setType(int type) {
        this.Type = type;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenFriendCheckConfig{Type=" + this.Type + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
