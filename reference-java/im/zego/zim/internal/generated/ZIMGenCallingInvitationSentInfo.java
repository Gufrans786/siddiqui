package im.zego.zim.internal.generated;

import java.util.ArrayList;

final class ZIMGenCallingInvitationSentInfo {
    ArrayList<ZIMGenErrorUserInfo> ErrorInvitees;

    public ZIMGenCallingInvitationSentInfo() {
    }

    public ZIMGenCallingInvitationSentInfo(ArrayList<ZIMGenErrorUserInfo> errorInvitees) {
        this.ErrorInvitees = errorInvitees;
    }

    public ArrayList<ZIMGenErrorUserInfo> getErrorInvitees() {
        return this.ErrorInvitees;
    }

    public void setErrorInvitees(ArrayList<ZIMGenErrorUserInfo> errorInvitees) {
        this.ErrorInvitees = errorInvitees;
    }

    public String toString() {
        return "ZIMGenCallingInvitationSentInfo{ErrorInvitees=" + this.ErrorInvitees + "}";
    }
}
