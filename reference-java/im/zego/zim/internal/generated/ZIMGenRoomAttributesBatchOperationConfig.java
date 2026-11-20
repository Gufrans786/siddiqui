package im.zego.zim.internal.generated;

public final class ZIMGenRoomAttributesBatchOperationConfig {
    boolean IsDeleteAfterOwnerLeft;
    boolean IsForce;
    boolean IsNullFromJava;
    boolean IsUpdateOwner;

    public ZIMGenRoomAttributesBatchOperationConfig() {
    }

    public ZIMGenRoomAttributesBatchOperationConfig(boolean isForce, boolean isDeleteAfterOwnerLeft, boolean isUpdateOwner, boolean isNullFromJava) {
        this.IsForce = isForce;
        this.IsDeleteAfterOwnerLeft = isDeleteAfterOwnerLeft;
        this.IsUpdateOwner = isUpdateOwner;
        this.IsNullFromJava = isNullFromJava;
    }

    public boolean getIsForce() {
        return this.IsForce;
    }

    public void setIsForce(boolean isForce) {
        this.IsForce = isForce;
    }

    public boolean getIsDeleteAfterOwnerLeft() {
        return this.IsDeleteAfterOwnerLeft;
    }

    public void setIsDeleteAfterOwnerLeft(boolean isDeleteAfterOwnerLeft) {
        this.IsDeleteAfterOwnerLeft = isDeleteAfterOwnerLeft;
    }

    public boolean getIsUpdateOwner() {
        return this.IsUpdateOwner;
    }

    public void setIsUpdateOwner(boolean isUpdateOwner) {
        this.IsUpdateOwner = isUpdateOwner;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenRoomAttributesBatchOperationConfig{IsForce=" + this.IsForce + ",IsDeleteAfterOwnerLeft=" + this.IsDeleteAfterOwnerLeft + ",IsUpdateOwner=" + this.IsUpdateOwner + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
