package im.zego.zim.internal.generated;

import java.util.HashMap;

public final class ZIMGenRoomAdvancedConfig {
    boolean IsNullFromJava;
    HashMap<String, String> RoomAttributes;
    long RoomDestroyDelayTime;

    public ZIMGenRoomAdvancedConfig() {
    }

    public ZIMGenRoomAdvancedConfig(HashMap<String, String> roomAttributes, long roomDestroyDelayTime, boolean isNullFromJava) {
        this.RoomAttributes = roomAttributes;
        this.RoomDestroyDelayTime = roomDestroyDelayTime;
        this.IsNullFromJava = isNullFromJava;
    }

    public HashMap<String, String> getRoomAttributes() {
        return this.RoomAttributes;
    }

    public void setRoomAttributes(HashMap<String, String> roomAttributes) {
        this.RoomAttributes = roomAttributes;
    }

    public long getRoomDestroyDelayTime() {
        return this.RoomDestroyDelayTime;
    }

    public void setRoomDestroyDelayTime(long roomDestroyDelayTime) {
        this.RoomDestroyDelayTime = roomDestroyDelayTime;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenRoomAdvancedConfig{RoomAttributes=" + this.RoomAttributes + ",RoomDestroyDelayTime=" + this.RoomDestroyDelayTime + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
