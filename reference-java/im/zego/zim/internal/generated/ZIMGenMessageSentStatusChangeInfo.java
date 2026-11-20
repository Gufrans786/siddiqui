package im.zego.zim.internal.generated;

final class ZIMGenMessageSentStatusChangeInfo {
    boolean IsNullFromJava;
    ZIMGenMessage Message;
    String Reason;
    int Status;

    public ZIMGenMessageSentStatusChangeInfo() {
    }

    public ZIMGenMessageSentStatusChangeInfo(ZIMGenMessage message, int status, String reason, boolean isNullFromJava) {
        this.Message = message;
        this.Status = status;
        this.Reason = reason;
        this.IsNullFromJava = isNullFromJava;
    }

    public ZIMGenMessage getMessage() {
        return this.Message;
    }

    public void setMessage(ZIMGenMessage message) {
        this.Message = message;
    }

    public int getStatus() {
        return this.Status;
    }

    public void setStatus(int status) {
        this.Status = status;
    }

    public String getReason() {
        return this.Reason;
    }

    public void setReason(String reason) {
        this.Reason = reason;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenMessageSentStatusChangeInfo{Message=" + this.Message + ",Status=" + this.Status + ",Reason=" + this.Reason + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
