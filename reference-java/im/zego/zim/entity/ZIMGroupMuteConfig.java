package im.zego.zim.entity;

import im.zego.zim.enums.ZIMGroupMuteMode;
import java.util.ArrayList;

public class ZIMGroupMuteConfig {
    public int duration;
    public ZIMGroupMuteMode mode;
    public ArrayList<Integer> roles;

    public String toString() {
        return "ZIMGroupMuteConfig{mode='" + this.mode + ", duration=" + this.duration + ", roles='" + this.roles + '}';
    }
}
