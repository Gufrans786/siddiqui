package im.zego.zim.entity;

import im.zego.zim.enums.ZIMGroupMuteMode;
import java.util.ArrayList;

public class ZIMGroupMuteInfo {
    public long expiredTime;
    public ZIMGroupMuteMode mode;
    public ArrayList<Integer> roles;

    public String toString() {
        return "ZIMGroupMuteInfo{mode=', expiredTime=" + this.expiredTime + ", roles='" + this.roles + '}';
    }
}
