package im.zego.zim.internal.generated;

import java.util.ArrayList;

final class ZIMGenGroupMuteInfo {
    long ExpiredTimestamp;
    boolean IsNullFromJava;
    int Mode;
    ArrayList<Integer> Roles;

    public ZIMGenGroupMuteInfo() {
    }

    public ZIMGenGroupMuteInfo(int mode, long expiredTimestamp, ArrayList<Integer> roles, boolean isNullFromJava) {
        this.Mode = mode;
        this.ExpiredTimestamp = expiredTimestamp;
        this.Roles = roles;
        this.IsNullFromJava = isNullFromJava;
    }

    public int getMode() {
        return this.Mode;
    }

    public void setMode(int mode) {
        this.Mode = mode;
    }

    public long getExpiredTimestamp() {
        return this.ExpiredTimestamp;
    }

    public void setExpiredTimestamp(long expiredTimestamp) {
        this.ExpiredTimestamp = expiredTimestamp;
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
        return "ZIMGenGroupMuteInfo{Mode=" + this.Mode + ",ExpiredTimestamp=" + this.ExpiredTimestamp + ",Roles=" + this.Roles + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
