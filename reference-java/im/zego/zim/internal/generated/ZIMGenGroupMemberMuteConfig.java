package im.zego.zim.internal.generated;

public final class ZIMGenGroupMemberMuteConfig {
    int Duration;
    boolean IsNullFromJava;

    public ZIMGenGroupMemberMuteConfig() {
    }

    public ZIMGenGroupMemberMuteConfig(int duration, boolean isNullFromJava) {
        this.Duration = duration;
        this.IsNullFromJava = isNullFromJava;
    }

    public int getDuration() {
        return this.Duration;
    }

    public void setDuration(int duration) {
        this.Duration = duration;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenGroupMemberMuteConfig{Duration=" + this.Duration + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
