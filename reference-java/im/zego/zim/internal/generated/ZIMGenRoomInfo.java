package im.zego.zim.internal.generated;

public final class ZIMGenRoomInfo {
    boolean IsNullFromJava;
    String RoomId;
    String RoomName;

    public ZIMGenRoomInfo() {
    }

    public ZIMGenRoomInfo(String roomId, String roomName, boolean isNullFromJava) {
        this.RoomId = roomId;
        this.RoomName = roomName;
        this.IsNullFromJava = isNullFromJava;
    }

    public String getRoomId() {
        return this.RoomId;
    }

    public void setRoomId(String roomId) {
        this.RoomId = roomId;
    }

    public String getRoomName() {
        return this.RoomName;
    }

    public void setRoomName(String roomName) {
        this.RoomName = roomName;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenRoomInfo{RoomId=" + this.RoomId + ",RoomName=" + this.RoomName + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
