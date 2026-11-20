package im.zego.zim.internal.generated;

final class ZIMGenUserStatusSubscription {
    long SubscribeExpiredTime;
    ZIMGenUserStatus UserStatus;

    public ZIMGenUserStatusSubscription() {
    }

    public ZIMGenUserStatusSubscription(ZIMGenUserStatus userStatus, long subscribeExpiredTime) {
        this.UserStatus = userStatus;
        this.SubscribeExpiredTime = subscribeExpiredTime;
    }

    public ZIMGenUserStatus getUserStatus() {
        return this.UserStatus;
    }

    public void setUserStatus(ZIMGenUserStatus userStatus) {
        this.UserStatus = userStatus;
    }

    public long getSubscribeExpiredTime() {
        return this.SubscribeExpiredTime;
    }

    public void setSubscribeExpiredTime(long subscribeExpiredTime) {
        this.SubscribeExpiredTime = subscribeExpiredTime;
    }

    public String toString() {
        return "ZIMGenUserStatusSubscription{UserStatus=" + this.UserStatus + ",SubscribeExpiredTime=" + this.SubscribeExpiredTime + "}";
    }
}
