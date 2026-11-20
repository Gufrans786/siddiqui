package im.zego.zim.internal.generated;

import java.util.ArrayList;

final class ZIMGenCallInvitationSentInfo {
    ArrayList<ZIMGenCallUserInfo> ErrorInvitees;
    ArrayList<ZIMGenErrorUserInfo> ErrorList;
    int Timeout;

    public ZIMGenCallInvitationSentInfo() {
    }

    public ZIMGenCallInvitationSentInfo(int timeout, ArrayList<ZIMGenCallUserInfo> errorInvitees, ArrayList<ZIMGenErrorUserInfo> errorList) {
        this.Timeout = timeout;
        this.ErrorInvitees = errorInvitees;
        this.ErrorList = errorList;
    }

    public int getTimeout() {
        return this.Timeout;
    }

    public void setTimeout(int timeout) {
        this.Timeout = timeout;
    }

    public ArrayList<ZIMGenCallUserInfo> getErrorInvitees() {
        return this.ErrorInvitees;
    }

    public void setErrorInvitees(ArrayList<ZIMGenCallUserInfo> errorInvitees) {
        this.ErrorInvitees = errorInvitees;
    }

    public ArrayList<ZIMGenErrorUserInfo> getErrorList() {
        return this.ErrorList;
    }

    public void setErrorList(ArrayList<ZIMGenErrorUserInfo> errorList) {
        this.ErrorList = errorList;
    }

    public String toString() {
        return "ZIMGenCallInvitationSentInfo{Timeout=" + this.Timeout + ",ErrorInvitees=" + this.ErrorInvitees + ",ErrorList=" + this.ErrorList + "}";
    }
}
