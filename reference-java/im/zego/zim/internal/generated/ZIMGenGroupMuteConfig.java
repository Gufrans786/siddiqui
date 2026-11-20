package im.zego.zim.internal.generated;

import java.util.ArrayList;

public final class ZIMGenGroupMuteConfig {
    int Duration;
    boolean IsNullFromJava;
    int Mode;
    ArrayList<Integer> Roles;

    public ZIMGenGroupMuteConfig() {
    }

    public ZIMGenGroupMuteConfig(int mode, int duration, ArrayList<Integer> roles, boolean isNullFromJava) {
        this.Mode = mode;
        this.Duration = duration;
        this.Roles = roles;
        this.IsNullFromJava = isNullFromJava;
    }

    public int getMode() {
        return this.Mode;
    }

    public void setMode(int mode) {
        this.Mode = mode;
    }

    public int getDuration() {
        return this.Duration;
    }

    public void setDuration(int duration) {
        this.Duration = duration;
    }

    public ArrayList<Integer> getRoles() {
        return this.Roles;
    }

    public void setRoles(ArrayList<Integer> roles) {
        this.Roles = roles;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenGroupMuteConfig{Mode=" + this.Mode + ",Duration=" + this.Duration + ",Roles=" + this.Roles + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
