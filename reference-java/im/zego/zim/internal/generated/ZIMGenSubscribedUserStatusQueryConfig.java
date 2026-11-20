package im.zego.zim.internal.generated;

import java.util.ArrayList;

public final class ZIMGenSubscribedUserStatusQueryConfig {
    boolean IsNullFromJava;
    ArrayList<String> UserIDs;

    public ZIMGenSubscribedUserStatusQueryConfig() {
    }

    public ZIMGenSubscribedUserStatusQueryConfig(ArrayList<String> userIDs, boolean isNullFromJava) {
        this.UserIDs = userIDs;
        this.IsNullFromJava = isNullFromJava;
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
        return "ZIMGenSubscribedUserStatusQueryConfig{UserIDs=" + this.UserIDs + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
