package im.zego.zim.internal.generated;

final class ZIMGenFriendRelationInfo {
    boolean IsNullFromJava;
    int Type;
    String UserID;

    public ZIMGenFriendRelationInfo() {
    }

    public ZIMGenFriendRelationInfo(int type, String userID, boolean isNullFromJava) {
        this.Type = type;
        this.UserID = userID;
        this.IsNullFromJava = isNullFromJava;
    }

    public int getType() {
        return this.Type;
    }

    public void setType(int type) {
        this.Type = type;
    }

    public String getUserID() {
        return this.UserID;
    }

    public void setUserID(String userID) {
        this.UserID = userID;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenFriendRelationInfo{Type=" + this.Type + ",UserID=" + this.UserID + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
