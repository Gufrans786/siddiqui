package im.zego.zim.internal.generated;

public final class ZIMGenRoomMemberAttributesSetConfig {
    boolean IsDeleteAfterOwnerLeft;
    boolean IsNullFromJava;

    public ZIMGenRoomMemberAttributesSetConfig() {
    }

    public ZIMGenRoomMemberAttributesSetConfig(boolean isDeleteAfterOwnerLeft, boolean isNullFromJava) {
        this.IsDeleteAfterOwnerLeft = isDeleteAfterOwnerLeft;
        this.IsNullFromJava = isNullFromJava;
    }

    public boolean getIsDeleteAfterOwnerLeft() {
        return this.IsDeleteAfterOwnerLeft;
    }

    public void setIsDeleteAfterOwnerLeft(boolean isDeleteAfterOwnerLeft) {
        this.IsDeleteAfterOwnerLeft = isDeleteAfterOwnerLeft;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenRoomMemberAttributesSetConfig{IsDeleteAfterOwnerLeft=" + this.IsDeleteAfterOwnerLeft + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
