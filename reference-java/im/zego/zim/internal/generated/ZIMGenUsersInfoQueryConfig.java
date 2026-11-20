package im.zego.zim.internal.generated;

public final class ZIMGenUsersInfoQueryConfig {
    boolean IsNullFromJava;
    boolean IsQueryFromServer;

    public ZIMGenUsersInfoQueryConfig() {
    }

    public ZIMGenUsersInfoQueryConfig(boolean isQueryFromServer, boolean isNullFromJava) {
        this.IsQueryFromServer = isQueryFromServer;
        this.IsNullFromJava = isNullFromJava;
    }

    public boolean getIsQueryFromServer() {
        return this.IsQueryFromServer;
    }

    public void setIsQueryFromServer(boolean isQueryFromServer) {
        this.IsQueryFromServer = isQueryFromServer;
    }

    public boolean getIsNullFromJava() {
        return this.IsNullFromJava;
    }

    public void setIsNullFromJava(boolean isNullFromJava) {
        this.IsNullFromJava = isNullFromJava;
    }

    public String toString() {
        return "ZIMGenUsersInfoQueryConfig{IsQueryFromServer=" + this.IsQueryFromServer + ",IsNullFromJava=" + this.IsNullFromJava + "}";
    }
}
