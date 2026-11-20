package im.zego.zim.entity;

import java.util.ArrayList;

public class ZIMUserOfflinePushRule {
    public ArrayList<Integer> onlinePlatforms = new ArrayList<>();
    public ArrayList<Integer> notToReceiveOfflinePushPlatforms = new ArrayList<>();

    public String toString() {
        return "ZIMUserOfflinePushRule{onlinePlatforms=" + this.onlinePlatforms + ", notToReceiveOfflinePushPlatforms=" + this.notToReceiveOfflinePushPlatforms + '}';
    }
}
