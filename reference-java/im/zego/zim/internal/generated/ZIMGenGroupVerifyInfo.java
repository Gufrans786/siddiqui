package im.zego.zim.internal.generated;

final class ZIMGenGroupVerifyInfo {
    int BeInviteMode;
    int InviteMode;
    int JoinMode;

    public ZIMGenGroupVerifyInfo() {
    }

    public ZIMGenGroupVerifyInfo(int joinMode, int inviteMode, int beInviteMode) {
        this.JoinMode = joinMode;
        this.InviteMode = inviteMode;
        this.BeInviteMode = beInviteMode;
    }

    public int getJoinMode() {
        return this.JoinMode;
    }

    public void setJoinMode(int joinMode) {
        this.JoinMode = joinMode;
    }

    public int getInviteMode() {
        return this.InviteMode;
    }

    public void setInviteMode(int inviteMode) {
        this.InviteMode = inviteMode;
    }

    public int getBeInviteMode() {
        return this.BeInviteMode;
    }

    public void setBeInviteMode(int beInviteMode) {
        this.BeInviteMode = beInviteMode;
    }

    public String toString() {
        return "ZIMGenGroupVerifyInfo{JoinMode=" + this.JoinMode + ",InviteMode=" + this.InviteMode + ",BeInviteMode=" + this.BeInviteMode + "}";
    }
}
