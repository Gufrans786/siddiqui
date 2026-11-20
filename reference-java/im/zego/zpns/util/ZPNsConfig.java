package im.zego.zpns.util;

import java.io.Serializable;

public class ZPNsConfig implements Serializable {
    private boolean enableHWBadge;
    public boolean enableHWPush = false;
    public boolean enableMiPush = false;
    public boolean enableVivoPush = false;
    public boolean enableOppoPush = false;
    public boolean enableFCMPush = false;
    public String miAppID = "";
    public String miAppKey = "";
    public String oppoAppID = "";
    public String oppoAppSecret = "";
    public String oppoAppKey = "";
    public String vivoAppID = "";
    public String vivoAppKey = "";
    public String hwAppID = "";
    private int appType = 0;

    public ZPNsConfig enableFCMPush() {
        this.enableFCMPush = true;
        return this;
    }

    public ZPNsConfig disableFCMPush() {
        this.enableFCMPush = false;
        return this;
    }

    public ZPNsConfig enableHWPush(String str) {
        this.enableHWPush = true;
        this.hwAppID = str;
        return this;
    }

    public ZPNsConfig disableHWPush() {
        this.enableHWPush = false;
        this.hwAppID = "";
        return this;
    }

    public ZPNsConfig enableMiPush(String str, String str2) {
        this.enableMiPush = true;
        this.miAppID = str;
        this.miAppKey = str2;
        return this;
    }

    public ZPNsConfig disableMiPush() {
        this.enableMiPush = false;
        this.miAppID = "";
        this.miAppKey = "";
        return this;
    }

    public ZPNsConfig enableVivoPush(String str, String str2) {
        this.enableVivoPush = true;
        this.vivoAppID = str;
        this.vivoAppKey = str2;
        return this;
    }

    public ZPNsConfig disableVivoPush() {
        this.enableVivoPush = false;
        this.vivoAppID = "";
        this.vivoAppKey = "";
        return this;
    }

    public ZPNsConfig enableOppoPush(String str, String str2, String str3) {
        this.enableOppoPush = true;
        this.oppoAppID = str;
        this.oppoAppKey = str2;
        this.oppoAppSecret = str3;
        return this;
    }

    public ZPNsConfig disableOppoPush() {
        this.enableOppoPush = false;
        this.oppoAppID = "";
        this.oppoAppKey = "";
        this.oppoAppSecret = "";
        return this;
    }

    public ZPNsConfig setAppType(int i) {
        this.appType = i;
        return this;
    }

    public int getAppType() {
        return this.appType;
    }

    public boolean isEnableHWBadge() {
        return this.enableHWBadge;
    }

    public void enableHwBadge(boolean z) {
        this.enableHWBadge = z;
    }

    public String toString() {
        return "{enableHWPush='" + this.enableHWPush + "', enableMiPush='" + this.enableMiPush + "', enableVivoPush='" + this.enableVivoPush + "', enableOppoPush='" + this.enableOppoPush + "', enableFCMPush='" + this.enableFCMPush + "', miAppID='" + this.miAppID + "', miAppKey='" + this.miAppKey + "', oppoAppID='" + this.oppoAppID + "', oppoAppSecret='" + this.oppoAppSecret + "', oppoAppKey='" + this.oppoAppKey + "', vivoAppID='" + this.vivoAppID + "', vivoAppKey='" + this.vivoAppKey + "', hwAppID='" + this.hwAppID + "', enableHWBadge='" + this.enableHWBadge + "', appType='" + this.appType + "'}";
    }
}
