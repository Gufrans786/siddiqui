package im.zego.zim.internal.generated;

final class ZIMGenCallInvitationTimeoutInfo {
    boolean AlsoInvokeDiscardMethod;
    int Mode;

    public ZIMGenCallInvitationTimeoutInfo() {
    }

    public ZIMGenCallInvitationTimeoutInfo(int mode, boolean alsoInvokeDiscardMethod) {
        this.Mode = mode;
        this.AlsoInvokeDiscardMethod = alsoInvokeDiscardMethod;
    }

    public int getMode() {
        return this.Mode;
    }

    public void setMode(int mode) {
        this.Mode = mode;
    }

    public boolean getAlsoInvokeDiscardMethod() {
        return this.AlsoInvokeDiscardMethod;
    }

    public void setAlsoInvokeDiscardMethod(boolean alsoInvokeDiscardMethod) {
        this.AlsoInvokeDiscardMethod = alsoInvokeDiscardMethod;
    }

    public String toString() {
        return "ZIMGenCallInvitationTimeoutInfo{Mode=" + this.Mode + ",AlsoInvokeDiscardMethod=" + this.AlsoInvokeDiscardMethod + "}";
    }
}
