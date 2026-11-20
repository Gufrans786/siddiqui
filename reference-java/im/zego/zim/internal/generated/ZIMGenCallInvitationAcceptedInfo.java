package im.zego.zim.internal.generated;

final class ZIMGenCallInvitationAcceptedInfo {
    String ExtendedData;
    String Invitee;
    boolean IsNullFromJava;

    public ZIMGenCallInvitationAcceptedInfo() {
    }

    public ZIMGenCallInvitationAcceptedInfo(String invitee, String extendedData, boolean isNullFromJava) {
        this.Invitee = invitee;
        this.ExtendedData = extendedData;
        this.IsNullFromJava = isNullFromJava;
    }

    public String getInvitee() {
        return this.Invitee;
    }

    public void setInvitee(String invitee) {
        this.Invitee = invitee;
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
        return "ZIMGenCallInvitationAcceptedInfo{Invitee=" + this.Invitee + ",ExtendedData=" + this.ExtendedData + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
