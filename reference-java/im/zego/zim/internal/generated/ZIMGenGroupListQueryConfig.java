package im.zego.zim.internal.generated;

import java.util.ArrayList;

public final class ZIMGenGroupListQueryConfig {
    boolean IsNullFromJava;
    long NextFlag;
    ArrayList<String> UserIDs;

    public ZIMGenGroupListQueryConfig() {
    }

    public ZIMGenGroupListQueryConfig(long nextFlag, ArrayList<String> userIDs, boolean isNullFromJava) {
        this.NextFlag = nextFlag;
        this.UserIDs = userIDs;
        this.IsNullFromJava = isNullFromJava;
    }

    public long getNextFlag() {
        return this.NextFlag;
    }

    public void setNextFlag(long nextFlag) {
        this.NextFlag = nextFlag;
    }

    public ArrayList<String> getUserIDs() {
        return this.UserIDs;
    }

    public void setUserIDs(ArrayList<String> userIDs) {
        this.UserIDs = userIDs;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenGroupListQueryConfig{NextFlag=" + this.NextFlag + ",UserIDs=" + this.UserIDs + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
