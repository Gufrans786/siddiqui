package im.zego.zim.internal.generated;

final class ZIMGenFullRoomInfo {
    ZIMGenRoomInfo BaseInfo;
    boolean IsNullFromJava;

    public ZIMGenFullRoomInfo() {
    }

    public ZIMGenFullRoomInfo(ZIMGenRoomInfo baseInfo, boolean isNullFromJava) {
        this.BaseInfo = baseInfo;
        this.IsNullFromJava = isNullFromJava;
    }

    public ZIMGenRoomInfo getBaseInfo() {
        return this.BaseInfo;
    }

    public void setBaseInfo(ZIMGenRoomInfo baseInfo) {
        this.BaseInfo = baseInfo;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenFullRoomInfo{BaseInfo=" + this.BaseInfo + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
