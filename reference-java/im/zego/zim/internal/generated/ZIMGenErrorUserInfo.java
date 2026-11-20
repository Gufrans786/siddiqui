package im.zego.zim.internal.generated;

final class ZIMGenErrorUserInfo {
    int Reason;
    String UserId;

    public ZIMGenErrorUserInfo() {
    }

    public ZIMGenErrorUserInfo(String userId, int reason) {
        this.UserId = userId;
        this.Reason = reason;
    }

    public String getUserId() {
        return this.UserId;
    }

    public void setUserId(String userId) {
        this.UserId = userId;
    }

    public int getReason() {
        return this.Reason;
    }

    public void setReason(int reason) {
        this.Reason = reason;
    }

    public String toString() {
        return "ZIMGenErrorUserInfo{UserId=" + this.UserId + ",Reason=" + this.Reason + "}";
    }
}
