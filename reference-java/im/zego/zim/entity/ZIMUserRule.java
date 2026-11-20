package im.zego.zim.entity;

public class ZIMUserRule {
    public ZIMUserOfflinePushRule offlinePushRule = new ZIMUserOfflinePushRule();

    public String toString() {
        return "ZIMUserRule{offlinePushRule=" + this.offlinePushRule.toString() + '}';
    }
}
