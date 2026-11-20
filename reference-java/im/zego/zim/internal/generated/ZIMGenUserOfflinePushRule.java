package im.zego.zim.internal.generated;

import java.util.ArrayList;

public final class ZIMGenUserOfflinePushRule {
    boolean IsNullFromJava;
    ArrayList<Integer> NotToReceiveOfflinePushPlatforms;
    ArrayList<Integer> OnlinePlatforms;

    public ZIMGenUserOfflinePushRule() {
    }

    public ZIMGenUserOfflinePushRule(ArrayList<Integer> onlinePlatforms, ArrayList<Integer> notToReceiveOfflinePushPlatforms, boolean isNullFromJava) {
        this.OnlinePlatforms = onlinePlatforms;
        this.NotToReceiveOfflinePushPlatforms = notToReceiveOfflinePushPlatforms;
        this.IsNullFromJava = isNullFromJava;
    }

    public ArrayList<Integer> getOnlinePlatforms() {
        return this.OnlinePlatforms;
    }

    public void setOnlinePlatforms(ArrayList<Integer> onlinePlatforms) {
        this.OnlinePlatforms = onlinePlatforms;
    }

    public ArrayList<Integer> getNotToReceiveOfflinePushPlatforms() {
        return this.NotToReceiveOfflinePushPlatforms;
    }

    public void setNotToReceiveOfflinePushPlatforms(ArrayList<Integer> notToReceiveOfflinePushPlatforms) {
        this.NotToReceiveOfflinePushPlatforms = notToReceiveOfflinePushPlatforms;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenUserOfflinePushRule{OnlinePlatforms=" + this.OnlinePlatforms + ",NotToReceiveOfflinePushPlatforms=" + this.NotToReceiveOfflinePushPlatforms + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
