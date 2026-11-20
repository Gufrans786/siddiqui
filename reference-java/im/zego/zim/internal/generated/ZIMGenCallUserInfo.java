package im.zego.zim.internal.generated;

final class ZIMGenCallUserInfo {
    String ExtendedData;
    boolean IsNullFromJava;
    int State;
    String UserId;

    public ZIMGenCallUserInfo() {
    }

    public ZIMGenCallUserInfo(String userId, int state, String extendedData, boolean isNullFromJava) {
        this.UserId = userId;
        this.State = state;
        this.ExtendedData = extendedData;
        this.IsNullFromJava = isNullFromJava;
    }

    public String getUserId() {
        return this.UserId;
    }

    public void setUserId(String userId) {
        this.UserId = userId;
    }

    public int getState() {
        return this.State;
    }

    public void setState(int state) {
        this.State = state;
    }

    public String getExtendedData() {
        return this.ExtendedData;
    }

    public void setExtendedData(String extendedData) {
        this.ExtendedData = extendedData;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenCallUserInfo{UserId=" + this.UserId + ",State=" + this.State + ",ExtendedData=" + this.ExtendedData + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
