package im.zego.zim.internal.generated;

final class ZIMGenCallInvitationEndedInfo {
    String Caller;
    long EndTime;
    String ExtendedData;
    int Mode;
    String OperatedUserId;

    public ZIMGenCallInvitationEndedInfo() {
    }

    public ZIMGenCallInvitationEndedInfo(int mode, String caller, String operatedUserId, long endTime, String extendedData) {
        this.Mode = mode;
        this.Caller = caller;
        this.OperatedUserId = operatedUserId;
        this.EndTime = endTime;
        this.ExtendedData = extendedData;
    }

    public int getMode() {
        return this.Mode;
    }

    public void setMode(int mode) {
        this.Mode = mode;
    }

    public String getCaller() {
        return this.Caller;
    }

    public void setCaller(String caller) {
        this.Caller = caller;
    }

    public String getOperatedUserId() {
        return this.OperatedUserId;
    }

    public void setOperatedUserId(String operatedUserId) {
        this.OperatedUserId = operatedUserId;
    }

    public long getEndTime() {
        return this.EndTime;
    }

    public void setEndTime(long endTime) {
        this.EndTime = endTime;
    }

    public String getExtendedData() {
        return this.ExtendedData;
    }

    public void setExtendedData(String extendedData) {
        this.ExtendedData = extendedData;
    }

    public String toString() {
        return "ZIMGenCallInvitationEndedInfo{Mode=" + this.Mode + ",Caller=" + this.Caller + ",OperatedUserId=" + this.OperatedUserId + ",EndTime=" + this.EndTime + ",ExtendedData=" + this.ExtendedData + "}";
    }
}
