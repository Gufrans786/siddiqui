package im.zego.zim.internal.generated;

public final class ZIMGenFriendDeleteConfig {
    boolean IsNullFromJava;
    int Type;

    public ZIMGenFriendDeleteConfig() {
    }

    public ZIMGenFriendDeleteConfig(int type, boolean isNullFromJava) {
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
        return "ZIMGenFriendDeleteConfig{Type=" + this.Type + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
