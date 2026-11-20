package im.zego.zim.internal.generated;

final class ZIMGenCallInvitationCancelledInfo {
    String ExtendedData;
    String Inviter;
    boolean IsNullFromJava;
    int Mode;

    public ZIMGenCallInvitationCancelledInfo() {
    }

    public ZIMGenCallInvitationCancelledInfo(String inviter, String extendedData, int mode, boolean isNullFromJava) {
        this.Inviter = inviter;
        this.ExtendedData = extendedData;
        this.Mode = mode;
        this.IsNullFromJava = isNullFromJava;
    }

    public String getInviter() {
        return this.Inviter;
    }

    public void setInviter(String inviter) {
        this.Inviter = inviter;
    }

    public String getExtendedData() {
        return this.ExtendedData;
    }

    public void setExtendedData(String extendedData) {
        this.ExtendedData = extendedData;
    }

    public int getMode() {
        return this.Mode;
    }

    public void setMode(int mode) {
        this.Mode = mode;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenCallInvitationCancelledInfo{Inviter=" + this.Inviter + ",ExtendedData=" + this.ExtendedData + ",Mode=" + this.Mode + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
